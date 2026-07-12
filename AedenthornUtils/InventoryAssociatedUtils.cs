using System;
using System.Collections.Generic;
using System.Reflection;
using SpaceCraft;
using UnityEngine;

/// <summary>
/// Utilities for locating storage containers (chests/lockers) in the scene and resolving their
/// backing <see cref="Inventory"/>, transparently handling the two ways the game represents a
/// container's inventory depending on host vs. remote-client role.
///
/// - Host/server: the container's own GameObject carries a <see cref="InventoryAssociated"/>
///   component whose private "_inventoryId" field can be read via reflection and resolved
///   synchronously via <c>InventoriesHandler.Instance.GetInventoryById(id)</c>.
/// - Remote (non-server) client: the same container instead only exposes its inventory through a
///   <see cref="InventoryAssociatedProxy"/> (a NetworkBehaviour, usually found via
///   GetComponentInParent), whose <c>GetInventory(Action&lt;Inventory, WorldObject&gt;)</c> is
///   asynchronous — it may fire a ServerRpc and wait for the host's response before invoking the
///   callback. The proxy's own private "_inventoryId" can legitimately be -1 until then, so it is
///   not safe to read via reflection the way the host path does; GetInventory(callback) must be
///   used instead.
///
/// Confirmed by decompiling Assembly-CSharp.dll (see reference/decompiled-il/README.md) and by
/// production diagnostic logging from a remote client (0 InventoryAssociated matches, 53 raw-name
/// matches, all with a InventoryAssociatedProxy in the parent chain).
/// </summary>
public static class InventoryAssociatedUtils
{
    private static readonly FieldInfo InventoryIdField =
        typeof(InventoryAssociated).GetField("_inventoryId", BindingFlags.NonPublic | BindingFlags.Instance);

    /// <summary>
    /// A storage-like object found in the scene whose Inventory can be resolved via
    /// <see cref="ResolveInventory"/>. Carries only what a caller needs to run its own cheap
    /// synchronous filtering (distance, capacity, allow-lists, etc.) before triggering
    /// resolution — resolving a proxy-backed candidate may fire a ServerRpc, so callers should
    /// only resolve candidates that already passed those cheaper checks.
    /// </summary>
    public sealed class InventoryAssociatedCandidate
    {
        /// <summary>The candidate GameObject's name, as matched by the nameFilter passed to FindCandidates.</summary>
        public string Name { get; }

        /// <summary>The candidate's own transform (its GameObject may carry the InventoryAssociated, or be a child of one with a InventoryAssociatedProxy in its parent chain).</summary>
        public Transform Transform { get; }

        /// <summary>True if this candidate can only be resolved via the asynchronous InventoryAssociatedProxy path (typically: a remote, non-host client).</summary>
        public bool IsProxyBacked => Proxy != null;

        internal InventoryAssociated Direct { get; }
        internal InventoryAssociatedProxy Proxy { get; }

        internal InventoryAssociatedCandidate(string name, Transform transform, InventoryAssociated direct, InventoryAssociatedProxy proxy)
        {
            Name = name;
            Transform = transform;
            Direct = direct;
            Proxy = proxy;
        }
    }

    /// <summary>
    /// Find all scene objects (active or inactive) whose name matches <paramref name="nameFilter"/>
    /// and that carry a resolvable inventory, whether directly (host: InventoryAssociated on the
    /// object itself) or only via a InventoryAssociatedProxy in their parent chain (remote client).
    ///
    /// Does not resolve any inventory itself — see <see cref="ResolveInventory"/>. Direct
    /// candidates are returned before proxy-backed ones.
    /// </summary>
    /// <param name="nameFilter">Predicate tested against each candidate GameObject's name.</param>
    /// <param name="logDiag">Optional diagnostic logger, called with one message per line describing what was found (counts, active state, proxy presence, etc.). Pass null to skip this entirely, e.g. when a mod's debug config option is off.</param>
    public static List<InventoryAssociatedCandidate> FindCandidates(Func<string, bool> nameFilter, Action<string> logDiag = null)
    {
        var result = new List<InventoryAssociatedCandidate>();
        if (nameFilter == null)
        {
            return result;
        }

        var directAssociated = UnityEngine.Object.FindObjectsByType<InventoryAssociated>(FindObjectsInactive.Include, FindObjectsSortMode.InstanceID);
        var directGameObjects = new HashSet<GameObject>();

        foreach (var d in directAssociated)
        {
            if (!nameFilter(d.name))
            {
                continue;
            }
            directGameObjects.Add(d.gameObject);
            result.Add(new InventoryAssociatedCandidate(d.name, d.transform, d, null));
        }

        if (logDiag != null)
        {
            logDiag($"found {result.Count} name-matched objects with InventoryAssociated (active+inactive)");
            foreach (var c in result)
            {
                logDiag($"{c.Name} activeInHierarchy={c.Transform.gameObject.activeInHierarchy} activeSelf={c.Transform.gameObject.activeSelf} pos={c.Transform.position}");
            }
        }

        // On remote (non-host) clients, some containers are only reachable via
        // InventoryAssociatedProxy rather than an InventoryAssociated component directly on their
        // own GameObject. Only name-matched objects are searched here (not every Transform in the
        // scene) to keep this bounded.
        var allTransforms = UnityEngine.Object.FindObjectsByType<Transform>(FindObjectsInactive.Include, FindObjectsSortMode.InstanceID);
        var proxyMatches = new List<InventoryAssociatedCandidate>();

        foreach (var t in allTransforms)
        {
            if (!nameFilter(t.name) || directGameObjects.Contains(t.gameObject))
            {
                continue;
            }
            var proxy = t.GetComponentInParent<InventoryAssociatedProxy>();
            if (proxy == null)
            {
                continue;
            }
            proxyMatches.Add(new InventoryAssociatedCandidate(t.name, t, null, proxy));
        }

        if (logDiag != null)
        {
            logDiag($"found {proxyMatches.Count} name-matched GameObjects reachable only via InventoryAssociatedProxy");
            foreach (var c in proxyMatches)
            {
                var netObj = c.Transform.GetComponentInParent<Unity.Netcode.NetworkObject>();
                logDiag($"proxy {c.Name} activeInHierarchy={c.Transform.gameObject.activeInHierarchy} hasProxyInParent=True hasNetworkObjectInParent={netObj != null} pos={c.Transform.position}");
            }
        }

        result.AddRange(proxyMatches);
        return result;
    }

    /// <summary>
    /// Resolve a candidate's <see cref="Inventory"/>, handling both the host-direct (synchronous
    /// field read) and remote-proxy (async GetInventory, possibly via a ServerRpc round-trip)
    /// cases uniformly. Always invokes <paramref name="onResolved"/> exactly once, with a null
    /// Inventory if one could not be determined.
    ///
    /// Direct candidates resolve synchronously — onResolved is invoked before this call returns.
    /// Proxy-backed candidates resolve asynchronously — onResolved may be invoked well after this
    /// call returns.
    /// </summary>
    public static void ResolveInventory(InventoryAssociatedCandidate candidate, Action<Inventory> onResolved)
    {
        if (candidate == null || onResolved == null)
        {
            return;
        }

        if (candidate.Direct != null)
        {
            int inventoryId = InventoryIdField != null ? (int)InventoryIdField.GetValue(candidate.Direct) : -1;
            var inventory = InventoriesHandler.Instance?.GetInventoryById(inventoryId);
            onResolved(inventory);
            return;
        }

        if (candidate.Proxy != null)
        {
            candidate.Proxy.GetInventory((inventory, worldObject) => onResolved(inventory));
            return;
        }

        onResolved(null);
    }

    // Keyed by Transform (stable identity for a given scene container across repeated
    // FindCandidates() calls, which construct fresh candidate objects each time).
    // ConditionalWeakTable so cache entries don't keep destroyed/despawned containers alive.
    private static readonly System.Runtime.CompilerServices.ConditionalWeakTable<Transform, Inventory> ResolvedInventoryCache =
        new System.Runtime.CompilerServices.ConditionalWeakTable<Transform, Inventory>();

    /// <summary>
    /// Same contract as <see cref="ResolveInventory"/>, but consults/populates a per-Transform
    /// cache so that a proxy-backed candidate, once resolved asynchronously, resolves
    /// synchronously on every subsequent call.
    ///
    /// This exists for callers that cannot act on a result arriving after they've already
    /// returned — most notably a Harmony Postfix that mutates an out/ref value the original
    /// method's caller reads synchronously (e.g. "are these ingredients available nearby?").
    /// Plain <see cref="ResolveInventory"/> is systematically too late for such a caller on a
    /// proxy-backed (remote-client) candidate: even once the proxy's own inventory id is
    /// known/cached game-side, resolving it still goes through the deferred, callback-based
    /// InventoriesHandler.GetInventoryById(id, callback) path rather than returning
    /// synchronously (confirmed in the decompiled InventoryAssociatedProxy.GetInventory), so it
    /// can never win the race against a synchronous Postfix no matter how many times it's asked.
    /// Caching the resolved Inventory here means the first attempt for a given container still
    /// loses that race (and so still fails/reports stale data), but every subsequent attempt
    /// (e.g. the player retrying the action) succeeds. Callers without this synchronous-consumer
    /// problem (e.g. one that just performs an action once the callback eventually fires, with
    /// nothing racing it) should keep using the uncached <see cref="ResolveInventory"/>.
    /// </summary>
    public static void ResolveInventoryCached(InventoryAssociatedCandidate candidate, Action<Inventory> onResolved)
    {
        if (candidate == null || onResolved == null)
        {
            return;
        }

        if (candidate.Transform != null && ResolvedInventoryCache.TryGetValue(candidate.Transform, out var cached))
        {
            onResolved(cached);
            return;
        }

        ResolveInventory(candidate, inventory =>
        {
            if (candidate.Transform != null && inventory != null)
            {
                // ConditionalWeakTable<TKey,TValue> on this project's target framework (net480)
                // predates AddOrUpdate (added in .NET Core 3.0 / .NET Standard 2.1); Add() throws
                // if the key is already present, so remove first to make this idempotent.
                ResolvedInventoryCache.Remove(candidate.Transform);
                ResolvedInventoryCache.Add(candidate.Transform, inventory);
            }
            onResolved(inventory);
        });
    }
}
