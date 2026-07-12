.class public auto ansi beforefieldinit SpaceCraft.PlayerMainController
       extends [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass73_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.PlayerMainController '<>4__this'
    .field public valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams
    .field public uint64 id
    .field public string startingPlanet
    .field public valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 startingPosition
    .field public valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion startingRotation
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass73_0'::.ctor

    .method assembly hidebysig instance void 
            '<PlayerReadyServerRpc>g__SetupPlayer|0'(int32 inventoryId,
                                                     int32 equipmentId,
                                                     string planetId,
                                                     valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                                     valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                                                     float32 oxygen,
                                                     float32 thirst,
                                                     float32 health,
                                                     float32 toxic,
                                                     int32 totalCraftedObjects,
                                                     int32 totalTerraTokenEarned,
                                                     int32 cameraView) cil managed
    {
      // Code size       432 (0x1b0)
      .maxstack  7
      IL_0000:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
      IL_0005:  ldarg.1
      IL_0006:  ldarg.0
      IL_0007:  ldftn      instance void SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>b__2'(class SpaceCraft.Inventory)
      IL_000d:  newobj     instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::.ctor(object,
                                                                                                            native int)
      IL_0012:  ldnull
      IL_0013:  callvirt   instance void SpaceCraft.InventoriesHandler::GetInventoryById(int32,
                                                                                         class [mscorlib]System.Action`1<class SpaceCraft.Inventory>,
                                                                                         class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>)
      IL_0018:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
      IL_001d:  ldarg.2
      IL_001e:  ldarg.0
      IL_001f:  ldftn      instance void SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>b__3'(class SpaceCraft.Inventory)
      IL_0025:  newobj     instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::.ctor(object,
                                                                                                            native int)
      IL_002a:  ldnull
      IL_002b:  callvirt   instance void SpaceCraft.InventoriesHandler::GetInventoryById(int32,
                                                                                         class [mscorlib]System.Action`1<class SpaceCraft.Inventory>,
                                                                                         class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>)
      IL_0030:  ldarg.3
      IL_0031:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
      IL_0036:  brfalse.s  IL_0049

      IL_0038:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.SavedDataHandler>()
      IL_003d:  callvirt   instance class SpaceCraft.JsonableGameState SpaceCraft.SavedDataHandler::GetSavedDataJsonableGameState()
      IL_0042:  ldfld      string SpaceCraft.JsonableGameState::planetId
      IL_0047:  starg.s    planetId
      IL_0049:  ldarg.3
      IL_004a:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlanetLoader>()
      IL_004f:  callvirt   instance class SpaceCraft.PlanetData SpaceCraft.PlanetLoader::GetCurrentPlanetData()
      IL_0054:  callvirt   instance string SpaceCraft.PlanetData::GetPlanetId()
      IL_0059:  call       int32 [mscorlib]System.String::CompareOrdinal(string,
                                                                         string)
      IL_005e:  brfalse.s  IL_009a

      IL_0060:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
      IL_0065:  callvirt   instance class SpaceCraft.PlayerMainController SpaceCraft.PlayersManager::GetActivePlayerController()
      IL_006a:  callvirt   instance class SpaceCraft.PlayerStatus SpaceCraft.PlayerMainController::GetPlayerStatus()
      IL_006f:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerStatus::GetRespawnPosition()
      IL_0074:  starg.s    position
      IL_0076:  ldarga.s   position
      IL_0078:  call       instance float32 [UnityEngine.CoreModule]UnityEngine.Vector3::get_magnitude()
      IL_007d:  ldc.r4     0.1
      IL_0082:  bge.un.s   IL_009a

      IL_0084:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
      IL_0089:  callvirt   instance class SpaceCraft.PlayerMainController SpaceCraft.PlayersManager::GetActivePlayerController()
      IL_008e:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
      IL_0093:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_position()
      IL_0098:  starg.s    position
      IL_009a:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
      IL_009f:  ldarg.0
      IL_00a0:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_00a5:  ldarg.0
      IL_00a6:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_00ab:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsOwner()
      IL_00b0:  callvirt   instance void SpaceCraft.PlayersManager::AddPlayerController(class SpaceCraft.PlayerMainController,
                                                                                        bool)
      IL_00b5:  ldarg.0
      IL_00b6:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_00bb:  ldarg.1
      IL_00bc:  ldarg.2
      IL_00bd:  ldarg.s    position
      IL_00bf:  ldarg.s    rotation
      IL_00c1:  ldarg.s    cameraView
      IL_00c3:  ldarg.0
      IL_00c4:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::rpcParams
      IL_00c9:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
      IL_00ce:  call       instance void SpaceCraft.PlayerMainController::InitPlayerClientRpc(int32,
                                                                                              int32,
                                                                                              valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                              valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                              int32,
                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
      IL_00d3:  ldarg.0
      IL_00d4:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_00d9:  call       instance class SpaceCraft.PlayerGaugesHandler SpaceCraft.PlayerMainController::GetPlayerGaugesHandler()
      IL_00de:  ldarg.s    oxygen
      IL_00e0:  callvirt   instance void SpaceCraft.PlayerGaugesHandler::SetPlayerOxygenValue(float32)
      IL_00e5:  ldarg.0
      IL_00e6:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_00eb:  call       instance class SpaceCraft.PlayerGaugesHandler SpaceCraft.PlayerMainController::GetPlayerGaugesHandler()
      IL_00f0:  ldarg.s    thirst
      IL_00f2:  callvirt   instance void SpaceCraft.PlayerGaugesHandler::SetPlayerThirstValue(float32)
      IL_00f7:  ldarg.0
      IL_00f8:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_00fd:  call       instance class SpaceCraft.PlayerGaugesHandler SpaceCraft.PlayerMainController::GetPlayerGaugesHandler()
      IL_0102:  ldarg.s    health
      IL_0104:  callvirt   instance void SpaceCraft.PlayerGaugesHandler::SetPlayerHealthValue(float32)
      IL_0109:  ldarg.0
      IL_010a:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_010f:  call       instance class SpaceCraft.PlayerGaugesHandler SpaceCraft.PlayerMainController::GetPlayerGaugesHandler()
      IL_0114:  ldarg.s    toxic
      IL_0116:  callvirt   instance void SpaceCraft.PlayerGaugesHandler::SetPlayerToxicValue(float32)
      IL_011b:  ldarg.0
      IL_011c:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_0121:  call       instance class SpaceCraft.PlayerGaugesHandler SpaceCraft.PlayerMainController::GetPlayerGaugesHandler()
      IL_0126:  callvirt   instance void SpaceCraft.PlayerGaugesHandler::StartGaugesConsumption()
      IL_012b:  ldsfld     class SpaceCraft.ChatHandler SpaceCraft.ChatHandler::Instance
      IL_0130:  ldnull
      IL_0131:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                          class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_0136:  brfalse.s  IL_0158

      IL_0138:  ldsfld     class SpaceCraft.ChatHandler SpaceCraft.ChatHandler::Instance
      IL_013d:  ldarg.0
      IL_013e:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_0143:  call       instance string SpaceCraft.PlayerMainController::get_playerName()
      IL_0148:  ldarg.0
      IL_0149:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_014e:  call       instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_OwnerClientId()
      IL_0153:  callvirt   instance void SpaceCraft.ChatHandler::DispatchServicePlayerJoinedMessage(string,
                                                                                                    uint64)
      IL_0158:  ldsfld     class SpaceCraft.TokensHandler SpaceCraft.TokensHandler::Instance
      IL_015d:  ldarg.0
      IL_015e:  ldflda     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::rpcParams
      IL_0163:  ldflda     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
      IL_0168:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
      IL_016d:  ldarg.s    totalTerraTokenEarned
      IL_016f:  callvirt   instance void SpaceCraft.TokensHandler::SetAllTimeTokensNumber(uint64,
                                                                                          int32)
      IL_0174:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
      IL_0179:  ldarg.0
      IL_017a:  ldflda     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::rpcParams
      IL_017f:  ldflda     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
      IL_0184:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
      IL_0189:  ldarg.s    totalCraftedObjects
      IL_018b:  callvirt   instance void SpaceCraft.WorldObjectsHandler::SetTotalCraftedObjects(uint64,
                                                                                                int32)
      IL_0190:  ldstr      "{0}: Player {1} properly joined the game!"
      IL_0195:  ldstr      "PlayerMainController"
      IL_019a:  ldarg.0
      IL_019b:  ldfld      uint64 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::id
      IL_01a0:  box        [mscorlib]System.UInt64
      IL_01a5:  call       string [mscorlib]System.String::Format(string,
                                                                  object,
                                                                  object)
      IL_01aa:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
      IL_01af:  ret
    } // end of method '<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>g__SetupPlayer|0'

    .method assembly hidebysig instance void 
            '<PlayerReadyServerRpc>b__2'(class SpaceCraft.Inventory inventory) cil managed
    {
      // Code size       42 (0x2a)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_0006:  call       instance class SpaceCraft.PlayerBackpack SpaceCraft.PlayerMainController::GetPlayerBackpack()
      IL_000b:  ldarg.1
      IL_000c:  callvirt   instance void SpaceCraft.PlayerBackpack::SetInventory(class SpaceCraft.Inventory)
      IL_0011:  ldarg.0
      IL_0012:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_0017:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsOwner()
      IL_001c:  brfalse.s  IL_0029

      IL_001e:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
      IL_0023:  ldarg.1
      IL_0024:  callvirt   instance void SpaceCraft.InventoriesHandler::BeginInventoryWatch(class SpaceCraft.Inventory)
      IL_0029:  ret
    } // end of method '<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>b__2'

    .method assembly hidebysig instance void 
            '<PlayerReadyServerRpc>b__3'(class SpaceCraft.Inventory inventory) cil managed
    {
      // Code size       58 (0x3a)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_0006:  call       instance class SpaceCraft.PlayerEquipment SpaceCraft.PlayerMainController::GetPlayerEquipment()
      IL_000b:  ldarg.1
      IL_000c:  callvirt   instance void SpaceCraft.PlayerEquipment::SetInventory(class SpaceCraft.Inventory)
      IL_0011:  ldarg.0
      IL_0012:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_0017:  call       instance class SpaceCraft.PlayerEquipment SpaceCraft.PlayerMainController::GetPlayerEquipment()
      IL_001c:  callvirt   instance void SpaceCraft.PlayerEquipment::InitEquipment()
      IL_0021:  ldarg.0
      IL_0022:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_0027:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsOwner()
      IL_002c:  brfalse.s  IL_0039

      IL_002e:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
      IL_0033:  ldarg.1
      IL_0034:  callvirt   instance void SpaceCraft.InventoriesHandler::BeginInventoryWatch(class SpaceCraft.Inventory)
      IL_0039:  ret
    } // end of method '<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>b__3'

    .method assembly hidebysig instance void 
            '<PlayerReadyServerRpc>b__1'(class SpaceCraft.Inventory inventory) cil managed
    {
      // Code size       52 (0x34)
      .maxstack  8
      .locals init (class SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1' V_0)
      IL_0000:  newobj     instance void SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0' SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::'CS$<>8__locals1'
      IL_000d:  ldloc.0
      IL_000e:  ldarg.1
      IL_000f:  stfld      class SpaceCraft.Inventory SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::inventory
      IL_0014:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
      IL_0019:  ldsfld     int32 SpaceCraft.GameConfig::startPlayerEquipmentSize
      IL_001e:  ldc.i4.0
      IL_001f:  ldc.i4.0
      IL_0020:  ldnull
      IL_0021:  ldnull
      IL_0022:  ldloc.0
      IL_0023:  ldftn      instance void SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::'<PlayerReadyServerRpc>b__4'(class SpaceCraft.Inventory)
      IL_0029:  newobj     instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::.ctor(object,
                                                                                                            native int)
      IL_002e:  callvirt   instance void SpaceCraft.InventoriesHandler::CreateNewInventory(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>,
                                                                                           class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>,
                                                                                           class [mscorlib]System.Action`1<class SpaceCraft.Inventory>)
      IL_0033:  ret
    } // end of method '<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>b__1'

  } // end of class '<>c__DisplayClass73_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass73_1'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.Inventory inventory
    .field public class SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass73_1'::.ctor

    .method assembly hidebysig instance void 
            '<PlayerReadyServerRpc>b__4'(class SpaceCraft.Inventory equipment) cil managed
    {
      // Code size       212 (0xd4)
      .maxstack  13
      .locals init (valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<class SpaceCraft.GroupData,int32> V_0,
               valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<class SpaceCraft.GroupData,int32> V_1,
               int32 V_2)
      IL_0000:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
      IL_0005:  callvirt   instance class SpaceCraft.PlayerMainController SpaceCraft.PlayersManager::GetActivePlayerController()
      IL_000a:  ldnull
      IL_000b:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                          class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_0010:  brfalse.s  IL_007f

      IL_0012:  ldarg.0
      IL_0013:  ldfld      class SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0' SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::'CS$<>8__locals1'
      IL_0018:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
      IL_001d:  ldfld      class [Unity.RenderPipelines.Core.Runtime]UnityEngine.Rendering.SerializedDictionary`2<class SpaceCraft.GroupData,int32> SpaceCraft.PlayerMainController::_joiningPlayersInventory
      IL_0022:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<class SpaceCraft.GroupData,int32>::GetEnumerator()
      IL_0027:  stloc.0
      .try
      {
        IL_0028:  br.s       IL_0066

        IL_002a:  ldloca.s   V_0
        IL_002c:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<class SpaceCraft.GroupData,int32>::get_Current()
        IL_0031:  stloc.1
        IL_0032:  ldc.i4.0
        IL_0033:  stloc.2
        IL_0034:  br.s       IL_005c

        IL_0036:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
        IL_003b:  ldloca.s   V_1
        IL_003d:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<class SpaceCraft.GroupData,int32>::get_Key()
        IL_0042:  ldfld      string SpaceCraft.GroupData::id
        IL_0047:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupViaId(string)
        IL_004c:  ldarg.0
        IL_004d:  ldfld      class SpaceCraft.Inventory SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::inventory
        IL_0052:  ldnull
        IL_0053:  callvirt   instance void SpaceCraft.InventoriesHandler::AddItemToInventory(class SpaceCraft.Group,
                                                                                             class SpaceCraft.Inventory,
                                                                                             class [mscorlib]System.Action`2<bool,int32>)
        IL_0058:  ldloc.2
        IL_0059:  ldc.i4.1
        IL_005a:  add
        IL_005b:  stloc.2
        IL_005c:  ldloc.2
        IL_005d:  ldloca.s   V_1
        IL_005f:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<class SpaceCraft.GroupData,int32>::get_Value()
        IL_0064:  blt.s      IL_0036

        IL_0066:  ldloca.s   V_0
        IL_0068:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<class SpaceCraft.GroupData,int32>::MoveNext()
        IL_006d:  brtrue.s   IL_002a

        IL_006f:  leave.s    IL_007f

      }  // end .try
      finally
      {
        IL_0071:  ldloca.s   V_0
        IL_0073:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<class SpaceCraft.GroupData,int32>
        IL_0079:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_007e:  endfinally
      }  // end handler
      IL_007f:  ldarg.0
      IL_0080:  ldfld      class SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0' SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::'CS$<>8__locals1'
      IL_0085:  ldarg.0
      IL_0086:  ldfld      class SpaceCraft.Inventory SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::inventory
      IL_008b:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
      IL_0090:  ldarg.1
      IL_0091:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
      IL_0096:  ldarg.0
      IL_0097:  ldfld      class SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0' SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::'CS$<>8__locals1'
      IL_009c:  ldfld      string SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingPlanet
      IL_00a1:  ldarg.0
      IL_00a2:  ldfld      class SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0' SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::'CS$<>8__locals1'
      IL_00a7:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingPosition
      IL_00ac:  ldarg.0
      IL_00ad:  ldfld      class SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0' SpaceCraft.PlayerMainController/'<>c__DisplayClass73_1'::'CS$<>8__locals1'
      IL_00b2:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingRotation
      IL_00b7:  ldc.r4     100.
      IL_00bc:  ldc.r4     100.
      IL_00c1:  ldc.r4     100.
      IL_00c6:  ldc.r4     0.0
      IL_00cb:  ldc.i4.0
      IL_00cc:  ldc.i4.0
      IL_00cd:  ldc.i4.0
      IL_00ce:  callvirt   instance void SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>g__SetupPlayer|0'(int32,
                                                                                                                                           int32,
                                                                                                                                           string,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                                                           float32,
                                                                                                                                           float32,
                                                                                                                                           float32,
                                                                                                                                           float32,
                                                                                                                                           int32,
                                                                                                                                           int32,
                                                                                                                                           int32)
      IL_00d3:  ret
    } // end of method '<>c__DisplayClass73_1'::'<PlayerReadyServerRpc>b__4'

  } // end of class '<>c__DisplayClass73_1'

  .class auto ansi sealed nested private beforefieldinit '<WaitForInventorySpawn>d__77'
         extends [mscorlib]System.Object
         implements class [mscorlib]System.Collections.Generic.IEnumerator`1<object>,
                    [mscorlib]System.Collections.IEnumerator,
                    [mscorlib]System.IDisposable
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private object '<>2__current'
    .field public class SpaceCraft.PlayerMainController '<>4__this'
    .field private class SpaceCraft.WorldUnitsHandler '<worldUnitsHandler>5__2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>1__state'
      IL_000d:  ret
    } // end of method '<WaitForInventorySpawn>d__77'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.IDisposable::Dispose
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<WaitForInventorySpawn>d__77'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [mscorlib]System.Collections.IEnumerator::MoveNext
      // Code size       169 (0xa9)
      .maxstack  4
      .locals init (int32 V_0,
               class SpaceCraft.PlayerMainController V_1,
               valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>4__this'
      IL_000d:  stloc.1
      IL_000e:  ldloc.0
      IL_000f:  brfalse.s  IL_001a

      IL_0011:  ldloc.0
      IL_0012:  ldc.i4.1
      IL_0013:  beq        IL_009e

      IL_0018:  ldc.i4.0
      IL_0019:  ret

      IL_001a:  ldarg.0
      IL_001b:  ldc.i4.m1
      IL_001c:  stfld      int32 SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>1__state'
      IL_0021:  ldarg.0
      IL_0022:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.WorldUnitsHandler>()
      IL_0027:  stfld      class SpaceCraft.WorldUnitsHandler SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<worldUnitsHandler>5__2'
      IL_002c:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
      IL_0031:  ldnull
      IL_0032:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                          class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_0037:  brfalse.s  IL_0083

      IL_0039:  ldarg.0
      IL_003a:  ldfld      class SpaceCraft.WorldUnitsHandler SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<worldUnitsHandler>5__2'
      IL_003f:  ldnull
      IL_0040:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                          class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_0045:  brfalse.s  IL_0083

      IL_0047:  ldarg.0
      IL_0048:  ldfld      class SpaceCraft.WorldUnitsHandler SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<worldUnitsHandler>5__2'
      IL_004d:  ldnull
      IL_004e:  callvirt   instance bool SpaceCraft.WorldUnitsHandler::AreUnitsInited(string)
      IL_0053:  brfalse.s  IL_0083

      IL_0055:  call       class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.GroupsHandler::GetAllGroups()
      IL_005a:  brfalse.s  IL_0083

      IL_005c:  ldstr      "PlayerMainController: Notifying the server that cl"
      + "ient is ready!"
      IL_0061:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
      IL_0066:  ldloc.1
      IL_0067:  ldloc.1
      IL_0068:  call       instance uint64 SpaceCraft.PlayerMainController::get_id()
      IL_006d:  ldloc.1
      IL_006e:  call       instance string SpaceCraft.PlayerMainController::get_playerName()
      IL_0073:  ldloca.s   V_2
      IL_0075:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
      IL_007b:  ldloc.2
      IL_007c:  call       instance void SpaceCraft.PlayerMainController::PlayerReadyServerRpc(uint64,
                                                                                               string,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
      IL_0081:  br.s       IL_00a7

      IL_0083:  ldarg.0
      IL_0084:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.WorldUnitsHandler>()
      IL_0089:  stfld      class SpaceCraft.WorldUnitsHandler SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<worldUnitsHandler>5__2'
      IL_008e:  ldarg.0
      IL_008f:  ldnull
      IL_0090:  stfld      object SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>2__current'
      IL_0095:  ldarg.0
      IL_0096:  ldc.i4.1
      IL_0097:  stfld      int32 SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>1__state'
      IL_009c:  ldc.i4.1
      IL_009d:  ret

      IL_009e:  ldarg.0
      IL_009f:  ldc.i4.m1
      IL_00a0:  stfld      int32 SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>1__state'
      IL_00a5:  br.s       IL_002c

      IL_00a7:  ldc.i4.0
      IL_00a8:  ret
    } // end of method '<WaitForInventorySpawn>d__77'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance object  'System.Collections.Generic.IEnumerator<System.Object>.get_Current'() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      object SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>2__current'
      IL_0006:  ret
    } // end of method '<WaitForInventorySpawn>d__77'::'System.Collections.Generic.IEnumerator<System.Object>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::Reset
      // Code size       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<WaitForInventorySpawn>d__77'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::get_Current
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      object SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>2__current'
      IL_0006:  ret
    } // end of method '<WaitForInventorySpawn>d__77'::System.Collections.IEnumerator.get_Current

    .property instance object 'System.Collections.Generic.IEnumerator<System.Object>.Current'()
    {
      .get instance object SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'System.Collections.Generic.IEnumerator<System.Object>.get_Current'()
    } // end of property '<WaitForInventorySpawn>d__77'::'System.Collections.Generic.IEnumerator<System.Object>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::System.Collections.IEnumerator.get_Current()
    } // end of property '<WaitForInventorySpawn>d__77'::System.Collections.IEnumerator.Current
  } // end of class '<WaitForInventorySpawn>d__77'

  .field private uint64 '<id>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<playerName>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> _GOToRemoveOnProxy
  .field public class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Behaviour> _ComponentsToRemoveOnProxy
  .field public class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> _GOToActivateOnProxy
  .field public class [Unity.TextMeshPro]TMPro.TMP_Text _name
  .field public class [Unity.TextMeshPro]TMPro.TMP_Text _nameMap
  .field public float32 _remotePlayerCollisionRadiusFactor
  .field public class [Unity.RenderPipelines.Core.Runtime]UnityEngine.Rendering.SerializedDictionary`2<class SpaceCraft.GroupData,int32> _joiningPlayersInventory
  .field private class SpaceCraft.PlayerAnimations _playerAnimations
  .field private class SpaceCraft.PlayerAimController _playerAimController
  .field private class SpaceCraft.PlayerMultitool _playerMultitool
  .field private class SpaceCraft.MultiToolLight _playerMultitoolLight
  .field private class SpaceCraft.PlayerBuilder _playerBuilder
  .field private class SpaceCraft.PlayerEquipment _playerEquipment
  .field private class SpaceCraft.PlayerGaugesHandler _playerGaugesHandler
  .field private class SpaceCraft.PlayerBackpack _playerBackpack
  .field private class SpaceCraft.PlayerCanAct _playerCanAct
  .field private class SpaceCraft.PlayerAudio _playerAudio
  .field private class SpaceCraft.PlayerStatus _playerStatus
  .field private class SpaceCraft.PlayerLookable _playerLookable
  .field private class SpaceCraft.PlayerMovable _playerMovable
  .field private class SpaceCraft.PlayerParticles _playerParticles
  .field private class SpaceCraft.PlayerCameraShake _playerCameraShake
  .field private class SpaceCraft.PlayerVegetationAround _playerVegetationAround
  .field private class SpaceCraft.PlayerView _playerView
  .field private class SpaceCraft.PlayerDirectEnvironment _playerDirectEnvironment
  .field private class SpaceCraft.PlayerInputDispatcher _playerInputDispatcher
  .field private class SpaceCraft.PlayerLarvaeAround _playerLarvaeAround
  .field private class SpaceCraft.PlayerEffects _playerEffects
  .field private class SpaceCraft.PlayerShareState _playerShareState
  .field private class SpaceCraft.PlayerUpdateVisualEquipment _playerUpdateVisualEquipment
  .field private class SpaceCraft.PlayerThirdPersonView _playerThirdPersonView
  .field private class SpaceCraft.PlayerToxicArea _playerToxicArea
  .field private class SpaceCraft.PlayerThirdPersonController _playerThirdPersonController
  .method public hidebysig specialname instance uint64 
          get_id() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint64 SpaceCraft.PlayerMainController::'<id>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerMainController::get_id

  .method public hidebysig specialname instance void 
          set_id(uint64 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      uint64 SpaceCraft.PlayerMainController::'<id>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerMainController::set_id

  .method public hidebysig specialname instance string 
          get_playerName() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SpaceCraft.PlayerMainController::'<playerName>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerMainController::get_playerName

  .method public hidebysig specialname instance void 
          set_playerName(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SpaceCraft.PlayerMainController::'<playerName>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerMainController::set_playerName

  .method public hidebysig instance class SpaceCraft.PlayerAnimations 
          GetAnimations() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerAnimations SpaceCraft.PlayerMainController::_playerAnimations
    IL_0006:  ret
  } // end of method PlayerMainController::GetAnimations

  .method public hidebysig instance class SpaceCraft.PlayerAimController 
          GetAimController() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerAimController SpaceCraft.PlayerMainController::_playerAimController
    IL_0006:  ret
  } // end of method PlayerMainController::GetAimController

  .method public hidebysig instance class SpaceCraft.PlayerMultitool 
          GetMultitool() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerMultitool SpaceCraft.PlayerMainController::_playerMultitool
    IL_0006:  ret
  } // end of method PlayerMainController::GetMultitool

  .method public hidebysig instance class SpaceCraft.MultiToolLight 
          GetRemoteMultitoolLight() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.MultiToolLight SpaceCraft.PlayerMainController::_playerMultitoolLight
    IL_0006:  ret
  } // end of method PlayerMainController::GetRemoteMultitoolLight

  .method public hidebysig instance class SpaceCraft.PlayerBuilder 
          GetPlayerBuilder() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerBuilder SpaceCraft.PlayerMainController::_playerBuilder
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerBuilder

  .method public hidebysig instance class SpaceCraft.PlayerEquipment 
          GetPlayerEquipment() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerEquipment SpaceCraft.PlayerMainController::_playerEquipment
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerEquipment

  .method public hidebysig instance class SpaceCraft.PlayerGaugesHandler 
          GetGaugesHandler() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerGaugesHandler SpaceCraft.PlayerMainController::_playerGaugesHandler
    IL_0006:  ret
  } // end of method PlayerMainController::GetGaugesHandler

  .method public hidebysig instance class SpaceCraft.PlayerBackpack 
          GetPlayerBackpack() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerBackpack SpaceCraft.PlayerMainController::_playerBackpack
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerBackpack

  .method public hidebysig instance class SpaceCraft.PlayerCanAct 
          GetPlayerCanAct() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMainController::_playerCanAct
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerCanAct

  .method public hidebysig instance class SpaceCraft.PlayerAudio 
          GetPlayerAudio() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerAudio SpaceCraft.PlayerMainController::_playerAudio
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerAudio

  .method public hidebysig instance class SpaceCraft.PlayerStatus 
          GetPlayerStatus() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerStatus SpaceCraft.PlayerMainController::_playerStatus
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerStatus

  .method public hidebysig instance class SpaceCraft.PlayerLookable 
          GetPlayerLookable() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerLookable SpaceCraft.PlayerMainController::_playerLookable
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerLookable

  .method public hidebysig instance class SpaceCraft.PlayerMovable 
          GetPlayerMovable() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerMovable SpaceCraft.PlayerMainController::_playerMovable
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerMovable

  .method public hidebysig instance class SpaceCraft.PlayerParticles 
          GetPlayerParticles() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerParticles SpaceCraft.PlayerMainController::_playerParticles
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerParticles

  .method public hidebysig instance class SpaceCraft.PlayerCameraShake 
          GetPlayerCameraShake() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerCameraShake SpaceCraft.PlayerMainController::_playerCameraShake
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerCameraShake

  .method public hidebysig instance class SpaceCraft.PlayerGaugesHandler 
          GetPlayerGaugesHandler() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerGaugesHandler SpaceCraft.PlayerMainController::_playerGaugesHandler
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerGaugesHandler

  .method public hidebysig instance class SpaceCraft.PlayerVegetationAround 
          GetPlayerVegetationAround() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerVegetationAround SpaceCraft.PlayerMainController::_playerVegetationAround
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerVegetationAround

  .method public hidebysig instance class SpaceCraft.PlayerView 
          GetPlayerView() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerView SpaceCraft.PlayerMainController::_playerView
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerView

  .method public hidebysig instance class SpaceCraft.PlayerDirectEnvironment 
          GetPlayerDirectEnvironment() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerDirectEnvironment SpaceCraft.PlayerMainController::_playerDirectEnvironment
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerDirectEnvironment

  .method public hidebysig instance class SpaceCraft.PlayerInputDispatcher 
          GetPlayerInputDispatcher() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerInputDispatcher SpaceCraft.PlayerMainController::_playerInputDispatcher
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerInputDispatcher

  .method public hidebysig instance class SpaceCraft.PlayerLarvaeAround 
          GetPlayerLarvaeAround() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerLarvaeAround SpaceCraft.PlayerMainController::_playerLarvaeAround
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerLarvaeAround

  .method public hidebysig instance class SpaceCraft.PlayerEffects 
          GetPlayerEffects() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerEffects SpaceCraft.PlayerMainController::_playerEffects
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerEffects

  .method public hidebysig instance class SpaceCraft.PlayerShareState 
          GetPlayerShareState() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerShareState SpaceCraft.PlayerMainController::_playerShareState
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerShareState

  .method public hidebysig instance class SpaceCraft.PlayerUpdateVisualEquipment 
          GetPlayerUpdateVisualEquipment() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerUpdateVisualEquipment SpaceCraft.PlayerMainController::_playerUpdateVisualEquipment
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerUpdateVisualEquipment

  .method public hidebysig instance class SpaceCraft.PlayerThirdPersonView 
          GetPlayerThirdPersonView() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerThirdPersonView SpaceCraft.PlayerMainController::_playerThirdPersonView
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerThirdPersonView

  .method public hidebysig instance class SpaceCraft.PlayerToxicArea 
          GetPlayerToxicArea() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerToxicArea SpaceCraft.PlayerMainController::_playerToxicArea
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerToxicArea

  .method public hidebysig instance class SpaceCraft.PlayerThirdPersonController 
          GetPlayerThirdPersonController() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerThirdPersonController SpaceCraft.PlayerMainController::_playerThirdPersonController
    IL_0006:  ret
  } // end of method PlayerMainController::GetPlayerThirdPersonController

  .method private hidebysig instance void 
          Awake() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void SpaceCraft.PlayerMainController::RetrieveComponents()
    IL_0006:  ret
  } // end of method PlayerMainController::Awake

  .method private hidebysig instance void 
          RetrieveComponents() cil managed
  {
    // Code size       319 (0x13f)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerAnimations>()
    IL_0007:  stfld      class SpaceCraft.PlayerAnimations SpaceCraft.PlayerMainController::_playerAnimations
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerAimController>()
    IL_0013:  stfld      class SpaceCraft.PlayerAimController SpaceCraft.PlayerMainController::_playerAimController
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerMultitool>()
    IL_001f:  stfld      class SpaceCraft.PlayerMultitool SpaceCraft.PlayerMainController::_playerMultitool
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerBuilder>()
    IL_002b:  stfld      class SpaceCraft.PlayerBuilder SpaceCraft.PlayerMainController::_playerBuilder
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerEquipment>()
    IL_0037:  stfld      class SpaceCraft.PlayerEquipment SpaceCraft.PlayerMainController::_playerEquipment
    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerGaugesHandler>()
    IL_0043:  stfld      class SpaceCraft.PlayerGaugesHandler SpaceCraft.PlayerMainController::_playerGaugesHandler
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerBackpack>()
    IL_004f:  stfld      class SpaceCraft.PlayerBackpack SpaceCraft.PlayerMainController::_playerBackpack
    IL_0054:  ldarg.0
    IL_0055:  ldarg.0
    IL_0056:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerCanAct>()
    IL_005b:  stfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMainController::_playerCanAct
    IL_0060:  ldarg.0
    IL_0061:  ldarg.0
    IL_0062:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerAudio>()
    IL_0067:  stfld      class SpaceCraft.PlayerAudio SpaceCraft.PlayerMainController::_playerAudio
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerStatus>()
    IL_0073:  stfld      class SpaceCraft.PlayerStatus SpaceCraft.PlayerMainController::_playerStatus
    IL_0078:  ldarg.0
    IL_0079:  ldarg.0
    IL_007a:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerLookable>()
    IL_007f:  stfld      class SpaceCraft.PlayerLookable SpaceCraft.PlayerMainController::_playerLookable
    IL_0084:  ldarg.0
    IL_0085:  ldarg.0
    IL_0086:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerMovable>()
    IL_008b:  stfld      class SpaceCraft.PlayerMovable SpaceCraft.PlayerMainController::_playerMovable
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerParticles>()
    IL_0097:  stfld      class SpaceCraft.PlayerParticles SpaceCraft.PlayerMainController::_playerParticles
    IL_009c:  ldarg.0
    IL_009d:  ldarg.0
    IL_009e:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerCameraShake>()
    IL_00a3:  stfld      class SpaceCraft.PlayerCameraShake SpaceCraft.PlayerMainController::_playerCameraShake
    IL_00a8:  ldarg.0
    IL_00a9:  ldarg.0
    IL_00aa:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerVegetationAround>()
    IL_00af:  stfld      class SpaceCraft.PlayerVegetationAround SpaceCraft.PlayerMainController::_playerVegetationAround
    IL_00b4:  ldarg.0
    IL_00b5:  ldarg.0
    IL_00b6:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerView>()
    IL_00bb:  stfld      class SpaceCraft.PlayerView SpaceCraft.PlayerMainController::_playerView
    IL_00c0:  ldarg.0
    IL_00c1:  ldarg.0
    IL_00c2:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerDirectEnvironment>()
    IL_00c7:  stfld      class SpaceCraft.PlayerDirectEnvironment SpaceCraft.PlayerMainController::_playerDirectEnvironment
    IL_00cc:  ldarg.0
    IL_00cd:  ldarg.0
    IL_00ce:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerInputDispatcher>()
    IL_00d3:  stfld      class SpaceCraft.PlayerInputDispatcher SpaceCraft.PlayerMainController::_playerInputDispatcher
    IL_00d8:  ldarg.0
    IL_00d9:  ldarg.0
    IL_00da:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerLarvaeAround>()
    IL_00df:  stfld      class SpaceCraft.PlayerLarvaeAround SpaceCraft.PlayerMainController::_playerLarvaeAround
    IL_00e4:  ldarg.0
    IL_00e5:  ldarg.0
    IL_00e6:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerEffects>()
    IL_00eb:  stfld      class SpaceCraft.PlayerEffects SpaceCraft.PlayerMainController::_playerEffects
    IL_00f0:  ldarg.0
    IL_00f1:  ldarg.0
    IL_00f2:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerShareState>()
    IL_00f7:  stfld      class SpaceCraft.PlayerShareState SpaceCraft.PlayerMainController::_playerShareState
    IL_00fc:  ldarg.0
    IL_00fd:  ldarg.0
    IL_00fe:  ldc.i4.1
    IL_00ff:  call       instance !!0[] [UnityEngine.CoreModule]UnityEngine.Component::GetComponentsInChildren<class SpaceCraft.MultiToolLight>(bool)
    IL_0104:  call       !!0 [System.Core]System.Linq.Enumerable::Last<class SpaceCraft.MultiToolLight>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0109:  stfld      class SpaceCraft.MultiToolLight SpaceCraft.PlayerMainController::_playerMultitoolLight
    IL_010e:  ldarg.0
    IL_010f:  ldarg.0
    IL_0110:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerUpdateVisualEquipment>()
    IL_0115:  stfld      class SpaceCraft.PlayerUpdateVisualEquipment SpaceCraft.PlayerMainController::_playerUpdateVisualEquipment
    IL_011a:  ldarg.0
    IL_011b:  ldarg.0
    IL_011c:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerThirdPersonView>()
    IL_0121:  stfld      class SpaceCraft.PlayerThirdPersonView SpaceCraft.PlayerMainController::_playerThirdPersonView
    IL_0126:  ldarg.0
    IL_0127:  ldarg.0
    IL_0128:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerToxicArea>()
    IL_012d:  stfld      class SpaceCraft.PlayerToxicArea SpaceCraft.PlayerMainController::_playerToxicArea
    IL_0132:  ldarg.0
    IL_0133:  ldarg.0
    IL_0134:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerThirdPersonController>()
    IL_0139:  stfld      class SpaceCraft.PlayerThirdPersonController SpaceCraft.PlayerMainController::_playerThirdPersonController
    IL_013e:  ret
  } // end of method PlayerMainController::RetrieveComponents

  .method public hidebysig instance void 
          SetName(string name) cil managed
  {
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void SpaceCraft.PlayerMainController::set_playerName(string)
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [Unity.TextMeshPro]TMPro.TMP_Text SpaceCraft.PlayerMainController::_name
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance void [Unity.TextMeshPro]TMPro.TMP_Text::set_text(string)
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [Unity.TextMeshPro]TMPro.TMP_Text SpaceCraft.PlayerMainController::_nameMap
    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance void [Unity.TextMeshPro]TMPro.TMP_Text::set_text(string)
    IL_001f:  ret
  } // end of method PlayerMainController::SetName

  .method public hidebysig instance void 
          SetNameVisibility(bool visible) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Unity.TextMeshPro]TMPro.TMP_Text SpaceCraft.PlayerMainController::_name
    IL_0006:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_000b:  ldarg.1
    IL_000c:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.GameObject::SetActive(bool)
    IL_0011:  ret
  } // end of method PlayerMainController::SetNameVisibility

  .method private hidebysig instance void 
          InitPlayerClientRpc(int32 inventoryId,
                              int32 equipmentId,
                              valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                              valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                              int32 cameraView,
                              [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [6] = nullref
    // Code size       452 (0x1c4)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_0
    IL_000a:  ldloc      V_0
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_0
    IL_0014:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsListening()
    IL_0019:  brtrue.s   IL_0027

    IL_001b:  nop
    IL_001c:  ldstr      "Rpc methods can only be invoked after starting the"
    + " NetworkManager!"
    IL_0021:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::LogError(object)
    IL_0026:  ret

    IL_0027:  nop
    IL_0028:  ldarg.0
    IL_0029:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_002e:  ldc.i4     0x1
    IL_0033:  ceq
    IL_0035:  ldc.i4     0x0
    IL_003a:  ceq
    IL_003c:  brfalse    IL_00d0

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_00d0

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x8e985b62
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  ldloc      V_1
    IL_007a:  ldarg      inventoryId
    IL_007e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0083:  ldloc      V_1
    IL_0087:  ldarg      equipmentId
    IL_008b:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0090:  ldloca     V_1
    IL_0094:  ldarga     position
    IL_0098:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_009d:  ldloca     V_1
    IL_00a1:  ldarga     rotation
    IL_00a5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion&)
    IL_00aa:  ldloc      V_1
    IL_00ae:  ldarg      cameraView
    IL_00b2:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00b7:  nop
    IL_00b8:  ldarg.0
    IL_00b9:  ldloca     V_1
    IL_00bd:  ldc.i4     0x8e985b62
    IL_00c2:  ldarg      clientRpcParams
    IL_00c6:  ldc.i4     0x0
    IL_00cb:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00d0:  nop
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00d7:  ldc.i4     0x1
    IL_00dc:  ceq
    IL_00de:  brfalse    IL_00ff

    IL_00e3:  ldloc      V_0
    IL_00e7:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00ec:  brtrue     IL_0100

    IL_00f1:  ldloc      V_0
    IL_00f5:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00fa:  brtrue     IL_0100

    IL_00ff:  ret

    IL_0100:  nop
    IL_0101:  ldarg.0
    IL_0102:  ldc.i4     0x0
    IL_0107:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_010c:  ldarg.0
    IL_010d:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0112:  brtrue.s   IL_0155

    IL_0114:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0119:  ldarg.1
    IL_011a:  ldarg.0
    IL_011b:  ldftn      instance void SpaceCraft.PlayerMainController::'<InitPlayerClientRpc>b__72_0'(class SpaceCraft.Inventory)
    IL_0121:  newobj     instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::.ctor(object,
                                                                                                          native int)
    IL_0126:  ldnull
    IL_0127:  callvirt   instance void SpaceCraft.InventoriesHandler::GetInventoryById(int32,
                                                                                       class [mscorlib]System.Action`1<class SpaceCraft.Inventory>,
                                                                                       class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>)
    IL_012c:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0131:  ldarg.2
    IL_0132:  ldarg.0
    IL_0133:  ldftn      instance void SpaceCraft.PlayerMainController::'<InitPlayerClientRpc>b__72_1'(class SpaceCraft.Inventory)
    IL_0139:  newobj     instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::.ctor(object,
                                                                                                          native int)
    IL_013e:  ldnull
    IL_013f:  callvirt   instance void SpaceCraft.InventoriesHandler::GetInventoryById(int32,
                                                                                       class [mscorlib]System.Action`1<class SpaceCraft.Inventory>,
                                                                                       class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>)
    IL_0144:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_0149:  ldarg.0
    IL_014a:  ldarg.0
    IL_014b:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsOwner()
    IL_0150:  callvirt   instance void SpaceCraft.PlayersManager::AddPlayerController(class SpaceCraft.PlayerMainController,
                                                                                      bool)
    IL_0155:  ldarg.0
    IL_0156:  ldarg.3
    IL_0157:  ldc.r4     0.0
    IL_015c:  ldarga.s   rotation
    IL_015e:  call       instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Quaternion::get_eulerAngles()
    IL_0163:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector3::y
    IL_0168:  ldc.r4     0.0
    IL_016d:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion [UnityEngine.CoreModule]UnityEngine.Quaternion::Euler(float32,
                                                                                                                                        float32,
                                                                                                                                        float32)
    IL_0172:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_forward()
    IL_0177:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Quaternion::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_017c:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_up()
    IL_0181:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion [UnityEngine.CoreModule]UnityEngine.Quaternion::LookRotation(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0186:  ldc.i4.1
    IL_0187:  call       instance void SpaceCraft.PlayerMainController::SetPlayerPlacement(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                           bool)
    IL_018c:  ldarg.0
    IL_018d:  call       instance class SpaceCraft.PlayerVegetationAround SpaceCraft.PlayerMainController::GetPlayerVegetationAround()
    IL_0192:  callvirt   instance void SpaceCraft.PlayerVegetationAround::StartHerbsPlacement()
    IL_0197:  ldarg.0
    IL_0198:  call       instance class SpaceCraft.PlayerLarvaeAround SpaceCraft.PlayerMainController::GetPlayerLarvaeAround()
    IL_019d:  callvirt   instance void SpaceCraft.PlayerLarvaeAround::StartLarvaePlacement()
    IL_01a2:  call       void [GameOptions]GameOptionsUtility.GameOptions::Apply()
    IL_01a7:  ldarg.0
    IL_01a8:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class [UnityEngine.PhysicsModule]UnityEngine.CharacterController>()
    IL_01ad:  ldc.i4.1
    IL_01ae:  callvirt   instance void [UnityEngine.PhysicsModule]UnityEngine.Collider::set_enabled(bool)
    IL_01b3:  ldarg.s    cameraView
    IL_01b5:  ldc.i4.1
    IL_01b6:  bne.un.s   IL_01c3

    IL_01b8:  ldarg.0
    IL_01b9:  call       instance class SpaceCraft.PlayerThirdPersonController SpaceCraft.PlayerMainController::GetPlayerThirdPersonController()
    IL_01be:  callvirt   instance void SpaceCraft.PlayerThirdPersonController::Toggle()
    IL_01c3:  ret
  } // end of method PlayerMainController::InitPlayerClientRpc

  .method private hidebysig instance void 
          PlayerReadyServerRpc(uint64 id,
                               string playerName,
                               [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 00 00 ) 
    .param [3] = nullref
    // Code size       1132 (0x46c)
    .maxstack  13
    .locals init (class SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0' V_0,
             class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.JsonablePlayerState> V_1,
             bool V_2,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.JsonablePlayerState> V_3,
             class SpaceCraft.JsonablePlayerState V_4,
             class SpaceCraft.JsonablePlayerState V_5,
             class SpaceCraft.WorldObject V_6,
             valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion V_7,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_10,
             bool V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_12)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_8
    IL_000a:  ldloc      V_8
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_8
    IL_0014:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsListening()
    IL_0019:  brtrue.s   IL_0027

    IL_001b:  nop
    IL_001c:  ldstr      "Rpc methods can only be invoked after starting the"
    + " NetworkManager!"
    IL_0021:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::LogError(object)
    IL_0026:  ret

    IL_0027:  nop
    IL_0028:  ldarg.0
    IL_0029:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_002e:  ldc.i4     0x1
    IL_0033:  ceq
    IL_0035:  ldc.i4     0x0
    IL_003a:  ceq
    IL_003c:  brfalse    IL_00da

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x9193979a
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_10
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloc      V_10
    IL_005a:  ldc.i4     0x2
    IL_005f:  ldc.i4     0x0
    IL_0064:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0069:  stloc      V_9
    IL_006d:  ldloc      V_9
    IL_0071:  ldarg      id
    IL_0075:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   uint64)
    IL_007a:  ldarg      playerName
    IL_007e:  ldnull
    IL_007f:  cgt.un
    IL_0081:  stloc      V_11
    IL_0085:  ldloca     V_9
    IL_0089:  ldloca     V_11
    IL_008d:  ldloca     V_12
    IL_0091:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0097:  ldloc      V_12
    IL_009b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00a0:  ldloc      V_11
    IL_00a4:  brfalse    IL_00b7

    IL_00a9:  ldloca     V_9
    IL_00ad:  ldarg      playerName
    IL_00b1:  ldc.i4.0
    IL_00b2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(string,
                                                                                                             bool)
    IL_00b7:  nop
    IL_00b8:  nop
    IL_00b9:  ldarg.0
    IL_00ba:  ldloca     V_9
    IL_00be:  ldc.i4     0x9193979a
    IL_00c3:  ldarg      rpcParams
    IL_00c7:  ldloc      V_10
    IL_00cb:  ldc.i4     0x2
    IL_00d0:  ldc.i4     0x0
    IL_00d5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00da:  nop
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e1:  ldc.i4     0x1
    IL_00e6:  ceq
    IL_00e8:  brtrue     IL_00ee

    IL_00ed:  ret

    IL_00ee:  nop
    IL_00ef:  ldarg.0
    IL_00f0:  ldc.i4     0x0
    IL_00f5:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00fa:  newobj     instance void SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::.ctor()
    IL_00ff:  stloc.0
    IL_0100:  ldloc.0
    IL_0101:  ldarg.0
    IL_0102:  stfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<>4__this'
    IL_0107:  ldloc.0
    IL_0108:  ldarg.3
    IL_0109:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::rpcParams
    IL_010e:  ldloc.0
    IL_010f:  ldarg.1
    IL_0110:  stfld      uint64 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::id
    IL_0115:  ldstr      "{0}: Player joined with id={1}, name={2} and clien"
    + "tId={3}"
    IL_011a:  ldc.i4.4
    IL_011b:  newarr     [mscorlib]System.Object
    IL_0120:  dup
    IL_0121:  ldc.i4.0
    IL_0122:  ldstr      "PlayerMainController"
    IL_0127:  stelem.ref
    IL_0128:  dup
    IL_0129:  ldc.i4.1
    IL_012a:  ldloc.0
    IL_012b:  ldfld      uint64 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::id
    IL_0130:  box        [mscorlib]System.UInt64
    IL_0135:  stelem.ref
    IL_0136:  dup
    IL_0137:  ldc.i4.2
    IL_0138:  ldarg.2
    IL_0139:  stelem.ref
    IL_013a:  dup
    IL_013b:  ldc.i4.3
    IL_013c:  ldloc.0
    IL_013d:  ldflda     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::rpcParams
    IL_0142:  ldflda     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_0147:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_014c:  box        [mscorlib]System.UInt64
    IL_0151:  stelem.ref
    IL_0152:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0157:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
    IL_015c:  ldarg.0
    IL_015d:  ldloc.0
    IL_015e:  ldfld      uint64 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::id
    IL_0163:  call       instance void SpaceCraft.PlayerMainController::set_id(uint64)
    IL_0168:  ldarg.0
    IL_0169:  ldarg.2
    IL_016a:  call       instance void SpaceCraft.PlayerMainController::set_playerName(string)
    IL_016f:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.SavedDataHandler>()
    IL_0174:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.JsonablePlayerState> SpaceCraft.SavedDataHandler::GetLastLoadedPlayerData()
    IL_0179:  stloc.1
    IL_017a:  call       bool ['Assembly-CSharp-firstpass']SteamManager::get_Initialized()
    IL_017f:  stloc.2
    IL_0180:  ldloc.1
    IL_0181:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.JsonablePlayerState>::GetEnumerator()
    IL_0186:  stloc.3
    .try
    {
      IL_0187:  br         IL_0265

      IL_018c:  ldloca.s   V_3
      IL_018e:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.JsonablePlayerState>::get_Current()
      IL_0193:  stloc.s    V_4
      IL_0195:  ldloc.2
      IL_0196:  brfalse.s  IL_01bd

      IL_0198:  ldloc.s    V_4
      IL_019a:  ldfld      uint64 SpaceCraft.JsonablePlayerState::id
      IL_019f:  ldloc.0
      IL_01a0:  ldfld      uint64 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::id
      IL_01a5:  beq.s      IL_01e6

      IL_01a7:  ldarg.0
      IL_01a8:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
      IL_01ad:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
      IL_01b2:  brfalse.s  IL_01bd

      IL_01b4:  ldloc.s    V_4
      IL_01b6:  ldfld      uint64 SpaceCraft.JsonablePlayerState::id
      IL_01bb:  brfalse.s  IL_01e6

      IL_01bd:  ldloc.2
      IL_01be:  brtrue     IL_0265

      IL_01c3:  ldloc.s    V_4
      IL_01c5:  ldfld      string SpaceCraft.JsonablePlayerState::name
      IL_01ca:  ldarg.2
      IL_01cb:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                     string)
      IL_01d0:  brtrue.s   IL_01e6

      IL_01d2:  ldloc.0
      IL_01d3:  ldfld      uint64 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::id
      IL_01d8:  brtrue     IL_0265

      IL_01dd:  ldloc.s    V_4
      IL_01df:  ldfld      uint64 SpaceCraft.JsonablePlayerState::id
      IL_01e4:  brtrue.s   IL_0265

      IL_01e6:  ldloc.2
      IL_01e7:  brtrue.s   IL_01fd

      IL_01e9:  call       bool SpaceCraft.GamePlatform::get_IsConsoleOrMicrosoftStore()
      IL_01ee:  brtrue.s   IL_01fd

      IL_01f0:  ldarg.0
      IL_01f1:  ldloc.s    V_4
      IL_01f3:  ldfld      string SpaceCraft.JsonablePlayerState::name
      IL_01f8:  call       instance void SpaceCraft.PlayerMainController::set_playerName(string)
      IL_01fd:  ldloc.0
      IL_01fe:  ldloc.s    V_4
      IL_0200:  ldfld      int32 SpaceCraft.JsonablePlayerState::inventoryId
      IL_0205:  ldloc.s    V_4
      IL_0207:  ldfld      int32 SpaceCraft.JsonablePlayerState::equipmentId
      IL_020c:  ldloc.s    V_4
      IL_020e:  ldfld      string SpaceCraft.JsonablePlayerState::planetId
      IL_0213:  ldloc.s    V_4
      IL_0215:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.JsonablePlayerState::GetPlayerPosition()
      IL_021a:  ldloc.s    V_4
      IL_021c:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.JsonablePlayerState::GetPlayerRotation()
      IL_0221:  ldloc.s    V_4
      IL_0223:  ldfld      float32 SpaceCraft.JsonablePlayerState::playerGaugeOxygen
      IL_0228:  ldloc.s    V_4
      IL_022a:  ldfld      float32 SpaceCraft.JsonablePlayerState::playerGaugeThirst
      IL_022f:  ldloc.s    V_4
      IL_0231:  ldfld      float32 SpaceCraft.JsonablePlayerState::playerGaugeHealth
      IL_0236:  ldloc.s    V_4
      IL_0238:  ldfld      float32 SpaceCraft.JsonablePlayerState::playerGaugeToxic
      IL_023d:  ldloc.s    V_4
      IL_023f:  ldfld      int32 SpaceCraft.JsonablePlayerState::totalCraftedObjects
      IL_0244:  ldloc.s    V_4
      IL_0246:  ldfld      int32 SpaceCraft.JsonablePlayerState::totalTerraTokenEarned
      IL_024b:  ldloc.s    V_4
      IL_024d:  ldfld      int32 SpaceCraft.JsonablePlayerState::cameraView
      IL_0252:  callvirt   instance void SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>g__SetupPlayer|0'(int32,
                                                                                                                                           int32,
                                                                                                                                           string,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                                                           float32,
                                                                                                                                           float32,
                                                                                                                                           float32,
                                                                                                                                           float32,
                                                                                                                                           int32,
                                                                                                                                           int32,
                                                                                                                                           int32)
      IL_0257:  ldloc.1
      IL_0258:  ldloc.s    V_4
      IL_025a:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.JsonablePlayerState>::Remove(!0)
      IL_025f:  pop
      IL_0260:  leave      IL_046b

      IL_0265:  ldloca.s   V_3
      IL_0267:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.JsonablePlayerState>::MoveNext()
      IL_026c:  brtrue     IL_018c

      IL_0271:  leave.s    IL_0281

    }  // end .try
    finally
    {
      IL_0273:  ldloca.s   V_3
      IL_0275:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.JsonablePlayerState>
      IL_027b:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0280:  endfinally
    }  // end handler
    IL_0281:  ldloc.0
    IL_0282:  ldflda     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::rpcParams
    IL_0287:  ldflda     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_028c:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_0291:  brtrue     IL_034b

    IL_0296:  ldloc.1
    IL_0297:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.JsonablePlayerState>::GetEnumerator()
    IL_029c:  stloc.3
    .try
    {
      IL_029d:  br         IL_032f

      IL_02a2:  ldloca.s   V_3
      IL_02a4:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.JsonablePlayerState>::get_Current()
      IL_02a9:  stloc.s    V_5
      IL_02ab:  ldloc.s    V_5
      IL_02ad:  ldfld      bool SpaceCraft.JsonablePlayerState::host
      IL_02b2:  brtrue.s   IL_02bd

      IL_02b4:  ldloc.1
      IL_02b5:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.JsonablePlayerState>::get_Count()
      IL_02ba:  ldc.i4.1
      IL_02bb:  bne.un.s   IL_032f

      IL_02bd:  ldstr      "Retrieving last host data!"
      IL_02c2:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
      IL_02c7:  ldloc.0
      IL_02c8:  ldloc.s    V_5
      IL_02ca:  ldfld      int32 SpaceCraft.JsonablePlayerState::inventoryId
      IL_02cf:  ldloc.s    V_5
      IL_02d1:  ldfld      int32 SpaceCraft.JsonablePlayerState::equipmentId
      IL_02d6:  ldloc.s    V_5
      IL_02d8:  ldfld      string SpaceCraft.JsonablePlayerState::planetId
      IL_02dd:  ldloc.s    V_5
      IL_02df:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.JsonablePlayerState::GetPlayerPosition()
      IL_02e4:  ldloc.s    V_5
      IL_02e6:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.JsonablePlayerState::GetPlayerRotation()
      IL_02eb:  ldloc.s    V_5
      IL_02ed:  ldfld      float32 SpaceCraft.JsonablePlayerState::playerGaugeOxygen
      IL_02f2:  ldloc.s    V_5
      IL_02f4:  ldfld      float32 SpaceCraft.JsonablePlayerState::playerGaugeThirst
      IL_02f9:  ldloc.s    V_5
      IL_02fb:  ldfld      float32 SpaceCraft.JsonablePlayerState::playerGaugeHealth
      IL_0300:  ldloc.s    V_5
      IL_0302:  ldfld      float32 SpaceCraft.JsonablePlayerState::playerGaugeToxic
      IL_0307:  ldloc.s    V_5
      IL_0309:  ldfld      int32 SpaceCraft.JsonablePlayerState::totalCraftedObjects
      IL_030e:  ldloc.s    V_5
      IL_0310:  ldfld      int32 SpaceCraft.JsonablePlayerState::totalTerraTokenEarned
      IL_0315:  ldloc.s    V_5
      IL_0317:  ldfld      int32 SpaceCraft.JsonablePlayerState::cameraView
      IL_031c:  callvirt   instance void SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>g__SetupPlayer|0'(int32,
                                                                                                                                           int32,
                                                                                                                                           string,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                                                           float32,
                                                                                                                                           float32,
                                                                                                                                           float32,
                                                                                                                                           float32,
                                                                                                                                           int32,
                                                                                                                                           int32,
                                                                                                                                           int32)
      IL_0321:  ldloc.1
      IL_0322:  ldloc.s    V_5
      IL_0324:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.JsonablePlayerState>::Remove(!0)
      IL_0329:  pop
      IL_032a:  leave      IL_046b

      IL_032f:  ldloca.s   V_3
      IL_0331:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.JsonablePlayerState>::MoveNext()
      IL_0336:  brtrue     IL_02a2

      IL_033b:  leave.s    IL_034b

    }  // end .try
    finally
    {
      IL_033d:  ldloca.s   V_3
      IL_033f:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.JsonablePlayerState>
      IL_0345:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_034a:  endfinally
    }  // end handler
    IL_034b:  ldloc.0
    IL_034c:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_zero()
    IL_0351:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingPosition
    IL_0356:  ldloc.0
    IL_0357:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion [UnityEngine.CoreModule]UnityEngine.Quaternion::get_identity()
    IL_035c:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingRotation
    IL_0361:  ldloc.0
    IL_0362:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.SavedDataHandler>()
    IL_0367:  callvirt   instance class SpaceCraft.JsonableGameState SpaceCraft.SavedDataHandler::GetSavedDataJsonableGameState()
    IL_036c:  ldfld      string SpaceCraft.JsonableGameState::planetId
    IL_0371:  stfld      string SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingPlanet
    IL_0376:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_037b:  callvirt   instance class SpaceCraft.PlayerMainController SpaceCraft.PlayersManager::GetActivePlayerController()
    IL_0380:  ldnull
    IL_0381:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0386:  brfalse.s  IL_03e5

    IL_0388:  ldloc.0
    IL_0389:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_038e:  callvirt   instance class SpaceCraft.PlayerMainController SpaceCraft.PlayersManager::GetActivePlayerController()
    IL_0393:  callvirt   instance class SpaceCraft.PlayerStatus SpaceCraft.PlayerMainController::GetPlayerStatus()
    IL_0398:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerStatus::GetRespawnPosition()
    IL_039d:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingPosition
    IL_03a2:  ldloc.0
    IL_03a3:  ldflda     valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingPosition
    IL_03a8:  call       instance float32 [UnityEngine.CoreModule]UnityEngine.Vector3::get_magnitude()
    IL_03ad:  ldc.r4     0.1
    IL_03b2:  bge.un.s   IL_03ce

    IL_03b4:  ldloc.0
    IL_03b5:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_03ba:  callvirt   instance class SpaceCraft.PlayerMainController SpaceCraft.PlayersManager::GetActivePlayerController()
    IL_03bf:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_03c4:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_position()
    IL_03c9:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingPosition
    IL_03ce:  ldloc.0
    IL_03cf:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlanetLoader>()
    IL_03d4:  callvirt   instance class SpaceCraft.PlanetData SpaceCraft.PlanetLoader::GetCurrentPlanetData()
    IL_03d9:  callvirt   instance string SpaceCraft.PlanetData::GetPlanetId()
    IL_03de:  stfld      string SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingPlanet
    IL_03e3:  br.s       IL_044c

    IL_03e5:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_03ea:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.SavedDataHandler>()
    IL_03ef:  callvirt   instance class SpaceCraft.JsonableGameState SpaceCraft.SavedDataHandler::GetSavedDataJsonableGameState()
    IL_03f4:  ldfld      string SpaceCraft.JsonableGameState::planetId
    IL_03f9:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetStartingPodGroup(string)
    IL_03fe:  ldc.i4.0
    IL_03ff:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetFirstWorldObjectOfGroup(class SpaceCraft.Group,
                                                                                                                          int32)
    IL_0404:  stloc.s    V_6
    IL_0406:  ldloc.s    V_6
    IL_0408:  brtrue.s   IL_0415

    IL_040a:  ldstr      "Can't retrieve starting POD position for player cr"
    + "eation process!"
    IL_040f:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::LogError(object)
    IL_0414:  ret

    IL_0415:  ldloc.0
    IL_0416:  ldloc.s    V_6
    IL_0418:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::GetPosition()
    IL_041d:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingPosition
    IL_0422:  ldloc.0
    IL_0423:  ldc.r4     0.0
    IL_0428:  ldloc.s    V_6
    IL_042a:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.WorldObject::GetRotation()
    IL_042f:  stloc.s    V_7
    IL_0431:  ldloca.s   V_7
    IL_0433:  call       instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Quaternion::get_eulerAngles()
    IL_0438:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector3::y
    IL_043d:  ldc.r4     0.0
    IL_0442:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion [UnityEngine.CoreModule]UnityEngine.Quaternion::Euler(float32,
                                                                                                                                        float32,
                                                                                                                                        float32)
    IL_0447:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::startingRotation
    IL_044c:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0451:  ldsfld     int32 SpaceCraft.GameConfig::startPlayerInventorySize
    IL_0456:  ldc.i4.0
    IL_0457:  ldc.i4.0
    IL_0458:  ldnull
    IL_0459:  ldnull
    IL_045a:  ldloc.0
    IL_045b:  ldftn      instance void SpaceCraft.PlayerMainController/'<>c__DisplayClass73_0'::'<PlayerReadyServerRpc>b__1'(class SpaceCraft.Inventory)
    IL_0461:  newobj     instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::.ctor(object,
                                                                                                          native int)
    IL_0466:  callvirt   instance void SpaceCraft.InventoriesHandler::CreateNewInventory(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>,
                                                                                         class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>,
                                                                                         class [mscorlib]System.Action`1<class SpaceCraft.Inventory>)
    IL_046b:  ret
  } // end of method PlayerMainController::PlayerReadyServerRpc

  .method public hidebysig virtual instance void 
          OnNetworkSpawn() cil managed
  {
    // Code size       406 (0x196)
    .maxstack  3
    .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.Behaviour> V_0,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject> V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsOwner()
    IL_0006:  brfalse    IL_009d

    IL_000b:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlanetLoader>()
    IL_0010:  callvirt   instance void SpaceCraft.PlanetLoader::DestroyTmpCamera()
    IL_0015:  ldstr      "PlayerMainController: Local player spawned!"
    IL_001a:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
    IL_001f:  ldarg.0
    IL_0020:  ldstr      "Player {0} (local player)"
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkObject()
    IL_002b:  callvirt   instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::get_OwnerClientId()
    IL_0030:  box        [mscorlib]System.UInt64
    IL_0035:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_003a:  call       instance void [UnityEngine.CoreModule]UnityEngine.Object::set_name(string)
    IL_003f:  call       bool ['Assembly-CSharp-firstpass']SteamManager::get_Initialized()
    IL_0044:  brfalse.s  IL_0063

    IL_0046:  ldarg.0
    IL_0047:  call       valuetype [com.rlabrecque.steamworks.net]Steamworks.CSteamID [com.rlabrecque.steamworks.net]Steamworks.SteamUser::GetSteamID()
    IL_004c:  call       uint64 [com.rlabrecque.steamworks.net]Steamworks.CSteamID::op_Explicit(valuetype [com.rlabrecque.steamworks.net]Steamworks.CSteamID)
    IL_0051:  call       instance void SpaceCraft.PlayerMainController::set_id(uint64)
    IL_0056:  ldarg.0
    IL_0057:  call       string [com.rlabrecque.steamworks.net]Steamworks.SteamFriends::GetPersonaName()
    IL_005c:  call       instance void SpaceCraft.PlayerMainController::set_playerName(string)
    IL_0061:  br.s       IL_008f

    IL_0063:  ldarg.0
    IL_0064:  ldarg.0
    IL_0065:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkObject()
    IL_006a:  callvirt   instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::get_OwnerClientId()
    IL_006f:  call       instance void SpaceCraft.PlayerMainController::set_id(uint64)
    IL_0074:  ldarg.0
    IL_0075:  call       class SpaceCraft.INetworkBackend SpaceCraft.NetworkBackendProvider::GetActiveBackend()
    IL_007a:  ldarg.0
    IL_007b:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkObject()
    IL_0080:  callvirt   instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::get_OwnerClientId()
    IL_0085:  callvirt   instance string SpaceCraft.INetworkBackend::GetLocalPlayerName(uint64)
    IL_008a:  call       instance void SpaceCraft.PlayerMainController::set_playerName(string)
    IL_008f:  ldarg.0
    IL_0090:  ldarg.0
    IL_0091:  call       instance class [mscorlib]System.Collections.IEnumerator SpaceCraft.PlayerMainController::WaitForInventorySpawn()
    IL_0096:  call       instance class [UnityEngine.CoreModule]UnityEngine.Coroutine [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::StartCoroutine(class [mscorlib]System.Collections.IEnumerator)
    IL_009b:  pop
    IL_009c:  ret

    IL_009d:  ldarg.0
    IL_009e:  ldstr      "Player {0} (remote player)"
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkObject()
    IL_00a9:  callvirt   instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::get_OwnerClientId()
    IL_00ae:  box        [mscorlib]System.UInt64
    IL_00b3:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00b8:  call       instance void [UnityEngine.CoreModule]UnityEngine.Object::set_name(string)
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Behaviour> SpaceCraft.PlayerMainController::_ComponentsToRemoveOnProxy
    IL_00c3:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Behaviour>::GetEnumerator()
    IL_00c8:  stloc.0
    .try
    {
      IL_00c9:  br.s       IL_00d7

      IL_00cb:  ldloca.s   V_0
      IL_00cd:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.Behaviour>::get_Current()
      IL_00d2:  call       void [UnityEngine.CoreModule]UnityEngine.Object::DestroyImmediate(class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_00d7:  ldloca.s   V_0
      IL_00d9:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.Behaviour>::MoveNext()
      IL_00de:  brtrue.s   IL_00cb

      IL_00e0:  leave.s    IL_00f0

    }  // end .try
    finally
    {
      IL_00e2:  ldloca.s   V_0
      IL_00e4:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.Behaviour>
      IL_00ea:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00ef:  endfinally
    }  // end handler
    IL_00f0:  ldarg.0
    IL_00f1:  call       instance void SpaceCraft.PlayerMainController::RetrieveComponents()
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.PlayerMainController::_GOToRemoveOnProxy
    IL_00fc:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>::GetEnumerator()
    IL_0101:  stloc.1
    .try
    {
      IL_0102:  br.s       IL_0110

      IL_0104:  ldloca.s   V_1
      IL_0106:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject>::get_Current()
      IL_010b:  call       void [UnityEngine.CoreModule]UnityEngine.Object::DestroyImmediate(class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_0110:  ldloca.s   V_1
      IL_0112:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject>::MoveNext()
      IL_0117:  brtrue.s   IL_0104

      IL_0119:  leave.s    IL_0129

    }  // end .try
    finally
    {
      IL_011b:  ldloca.s   V_1
      IL_011d:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject>
      IL_0123:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0128:  endfinally
    }  // end handler
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.PlayerMainController::_GOToActivateOnProxy
    IL_012f:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>::GetEnumerator()
    IL_0134:  stloc.1
    .try
    {
      IL_0135:  br.s       IL_0144

      IL_0137:  ldloca.s   V_1
      IL_0139:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject>::get_Current()
      IL_013e:  ldc.i4.1
      IL_013f:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.GameObject::SetActive(bool)
      IL_0144:  ldloca.s   V_1
      IL_0146:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject>::MoveNext()
      IL_014b:  brtrue.s   IL_0137

      IL_014d:  leave.s    IL_015d

    }  // end .try
    finally
    {
      IL_014f:  ldloca.s   V_1
      IL_0151:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject>
      IL_0157:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_015c:  endfinally
    }  // end handler
    IL_015d:  ldarg.0
    IL_015e:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0163:  brtrue.s   IL_0171

    IL_0165:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_016a:  ldarg.0
    IL_016b:  ldc.i4.0
    IL_016c:  callvirt   instance void SpaceCraft.PlayersManager::AddPlayerController(class SpaceCraft.PlayerMainController,
                                                                                      bool)
    IL_0171:  ldarg.0
    IL_0172:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class [UnityEngine.PhysicsModule]UnityEngine.CharacterController>()
    IL_0177:  ldc.i4.1
    IL_0178:  callvirt   instance void [UnityEngine.PhysicsModule]UnityEngine.Collider::set_enabled(bool)
    IL_017d:  ldarg.0
    IL_017e:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class [UnityEngine.PhysicsModule]UnityEngine.CharacterController>()
    IL_0183:  dup
    IL_0184:  callvirt   instance float32 [UnityEngine.PhysicsModule]UnityEngine.CharacterController::get_radius()
    IL_0189:  ldarg.0
    IL_018a:  ldfld      float32 SpaceCraft.PlayerMainController::_remotePlayerCollisionRadiusFactor
    IL_018f:  mul
    IL_0190:  callvirt   instance void [UnityEngine.PhysicsModule]UnityEngine.CharacterController::set_radius(float32)
    IL_0195:  ret
  } // end of method PlayerMainController::OnNetworkSpawn

  .method public hidebysig virtual instance void 
          OnNetworkDespawn() cil managed
  {
    // Code size       87 (0x57)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsOwner()
    IL_0006:  brtrue.s   IL_0020

    IL_0008:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_000d:  ldnull
    IL_000e:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0013:  brfalse.s  IL_0020

    IL_0015:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_001a:  ldarg.0
    IL_001b:  callvirt   instance void SpaceCraft.PlayersManager::RemovePlayerController(class SpaceCraft.PlayerMainController)
    IL_0020:  ldarg.0
    IL_0021:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0026:  brfalse.s  IL_0056

    IL_0028:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.SavedDataHandler>()
    IL_002d:  ldarg.0
    IL_002e:  callvirt   instance void SpaceCraft.SavedDataHandler::UpdatePlayerStateData(class SpaceCraft.PlayerMainController)
    IL_0033:  ldsfld     class SpaceCraft.ChatHandler SpaceCraft.ChatHandler::Instance
    IL_0038:  ldnull
    IL_0039:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_003e:  brfalse.s  IL_0056

    IL_0040:  ldsfld     class SpaceCraft.ChatHandler SpaceCraft.ChatHandler::Instance
    IL_0045:  ldarg.0
    IL_0046:  call       instance string SpaceCraft.PlayerMainController::get_playerName()
    IL_004b:  ldarg.0
    IL_004c:  call       instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_OwnerClientId()
    IL_0051:  callvirt   instance void SpaceCraft.ChatHandler::DispatchServicePlayerLeftMessage(string,
                                                                                                uint64)
    IL_0056:  ret
  } // end of method PlayerMainController::OnNetworkDespawn

  .method public hidebysig instance void 
          SetPlayerPlacement(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                             valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                             [opt] bool teleport) cil managed
  {
    .param [3] = bool(false)
    // Code size       97 (0x61)
    .maxstack  4
    .locals init (class SpaceCraft.PlayerFallDamage V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerThirdPersonView SpaceCraft.PlayerMainController::_playerThirdPersonView
    IL_0006:  ldc.i4.1
    IL_0007:  callvirt   instance void SpaceCraft.PlayerThirdPersonView::StopAnimation(bool)
    IL_000c:  ldarg.3
    IL_000d:  brfalse.s  IL_0029

    IL_000f:  ldarg.0
    IL_0010:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.Components.NetworkTransform>()
    IL_0015:  ldarg.1
    IL_0016:  ldarg.2
    IL_0017:  ldarg.0
    IL_0018:  call       instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_001d:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_localScale()
    IL_0022:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.Components.NetworkTransform::Teleport(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                  valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                                  valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0027:  br.s       IL_0036

    IL_0029:  ldarg.0
    IL_002a:  call       instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_002f:  ldarg.1
    IL_0030:  ldarg.2
    IL_0031:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.Transform::SetPositionAndRotation(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                             valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion)
    IL_0036:  call       void [UnityEngine.PhysicsModule]UnityEngine.Physics::SyncTransforms()
    IL_003b:  ldarg.0
    IL_003c:  ldloca.s   V_0
    IL_003e:  call       instance bool [UnityEngine.CoreModule]UnityEngine.Component::TryGetComponent<class SpaceCraft.PlayerFallDamage>(!!0&)
    IL_0043:  brfalse.s  IL_004b

    IL_0045:  ldloc.0
    IL_0046:  callvirt   instance void SpaceCraft.PlayerFallDamage::ResetLastGroundPlace()
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class SpaceCraft.PlayerDirectEnvironment SpaceCraft.PlayerMainController::_playerDirectEnvironment
    IL_0051:  callvirt   instance void SpaceCraft.PlayerDirectEnvironment::VerifyLivableColliders()
    IL_0056:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PerformancersManager>()
    IL_005b:  callvirt   instance void SpaceCraft.PerformancersManager::ForceCheckAllPerformancers()
    IL_0060:  ret
  } // end of method PlayerMainController::SetPlayerPlacement

  .method private hidebysig instance class [mscorlib]System.Collections.IEnumerator 
          WaitForInventorySpawn() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 3C 53 70 61 63 65 43 72 61 66 74 2E 50 6C   // ..<SpaceCraft.Pl
                                                                                                                                          61 79 65 72 4D 61 69 6E 43 6F 6E 74 72 6F 6C 6C   // ayerMainControll
                                                                                                                                          65 72 2B 3C 57 61 69 74 46 6F 72 49 6E 76 65 6E   // er+<WaitForInven
                                                                                                                                          74 6F 72 79 53 70 61 77 6E 3E 64 5F 5F 37 37 00   // torySpawn>d__77.
                                                                                                                                          00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::.ctor(int32)
    IL_0006:  dup
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.PlayerMainController SpaceCraft.PlayerMainController/'<WaitForInventorySpawn>d__77'::'<>4__this'
    IL_000d:  ret
  } // end of method PlayerMainController::WaitForInventorySpawn

  .method public hidebysig instance void 
          SetHidePlayerModel(bool hidden) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  3
    .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.PlayerMainController::_GOToActivateOnProxy
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001e

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject>::get_Current()
      IL_0015:  ldarg.1
      IL_0016:  ldc.i4.0
      IL_0017:  ceq
      IL_0019:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.GameObject::SetActive(bool)
      IL_001e:  ldloca.s   V_0
      IL_0020:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject>::MoveNext()
      IL_0025:  brtrue.s   IL_000e

      IL_0027:  leave.s    IL_0037

    }  // end .try
    finally
    {
      IL_0029:  ldloca.s   V_0
      IL_002b:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.GameObject>
      IL_0031:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0036:  endfinally
    }  // end handler
    IL_0037:  ldarg.0
    IL_0038:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class [UnityEngine.PhysicsModule]UnityEngine.CharacterController>()
    IL_003d:  ldarg.1
    IL_003e:  ldc.i4.0
    IL_003f:  ceq
    IL_0041:  callvirt   instance void [UnityEngine.PhysicsModule]UnityEngine.Collider::set_enabled(bool)
    IL_0046:  ret
  } // end of method PlayerMainController::SetHidePlayerModel

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.5
    IL_0006:  stfld      float32 SpaceCraft.PlayerMainController::_remotePlayerCollisionRadiusFactor
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::.ctor()
    IL_0011:  ret
  } // end of method PlayerMainController::.ctor

  .method private hidebysig instance void 
          '<InitPlayerClientRpc>b__72_0'(class SpaceCraft.Inventory inventory) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class SpaceCraft.PlayerBackpack SpaceCraft.PlayerMainController::GetPlayerBackpack()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void SpaceCraft.PlayerBackpack::SetInventory(class SpaceCraft.Inventory)
    IL_000c:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance void SpaceCraft.InventoriesHandler::BeginInventoryWatch(class SpaceCraft.Inventory)
    IL_0017:  ret
  } // end of method PlayerMainController::'<InitPlayerClientRpc>b__72_0'

  .method private hidebysig instance void 
          '<InitPlayerClientRpc>b__72_1'(class SpaceCraft.Inventory inventory) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class SpaceCraft.PlayerEquipment SpaceCraft.PlayerMainController::GetPlayerEquipment()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void SpaceCraft.PlayerEquipment::SetInventory(class SpaceCraft.Inventory)
    IL_000c:  ldarg.0
    IL_000d:  call       instance class SpaceCraft.PlayerEquipment SpaceCraft.PlayerMainController::GetPlayerEquipment()
    IL_0012:  callvirt   instance void SpaceCraft.PlayerEquipment::InitEquipment()
    IL_0017:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance void SpaceCraft.InventoriesHandler::BeginInventoryWatch(class SpaceCraft.Inventory)
    IL_0022:  ret
  } // end of method PlayerMainController::'<InitPlayerClientRpc>b__72_1'

  .method family hidebysig virtual instance void 
          __initializeVariables() cil managed
  {
    // Code size       10 (0xa)
    .maxstack  1
    .locals (bool V_0)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  ldarg.0
    IL_0003:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__initializeVariables()
    IL_0008:  nop
    IL_0009:  ret
  } // end of method PlayerMainController::__initializeVariables

  .method family hidebysig virtual instance void 
          __initializeRpcs() cil managed
  {
    // Code size       75 (0x4b)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x8e985b62
    IL_0006:  ldnull
    IL_0007:  ldftn      void SpaceCraft.PlayerMainController::__rpc_handler_2392349538(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_000d:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0012:  ldstr      "InitPlayerClientRpc"
    IL_0017:  ldc.i4     0x1
    IL_001c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0x9193979a
    IL_0027:  ldnull
    IL_0028:  ldftn      void SpaceCraft.PlayerMainController::__rpc_handler_2442368922(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_002e:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0033:  ldstr      "PlayerReadyServerRpc"
    IL_0038:  ldc.i4     0x0
    IL_003d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0042:  nop
    IL_0043:  ldarg.0
    IL_0044:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__initializeRpcs()
    IL_0049:  nop
    IL_004a:  ret
  } // end of method PlayerMainController::__initializeRpcs

  .method private hidebysig static void  __rpc_handler_2392349538(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       168 (0xa8)
    .maxstack  7
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_3,
             valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion V_4,
             int32 V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_0
    IL_000a:  ldloc      V_0
    IL_000e:  brfalse    IL_0021

    IL_0013:  ldloc      V_0
    IL_0017:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsListening()
    IL_001c:  brtrue     IL_0022

    IL_0021:  ret

    IL_0022:  nop
    IL_0023:  ldarg      reader
    IL_0027:  ldloca     V_1
    IL_002b:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_0030:  ldarg      reader
    IL_0034:  ldloca     V_2
    IL_0038:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_003d:  ldarga     reader
    IL_0041:  ldloca     V_3
    IL_0045:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_004a:  ldarga     reader
    IL_004e:  ldloca     V_4
    IL_0052:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion&)
    IL_0057:  ldarg      reader
    IL_005b:  ldloca     V_5
    IL_005f:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_0064:  ldarg.2
    IL_0065:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_006a:  stloc      V_6
    IL_006e:  ldarg.0
    IL_006f:  ldc.i4     0x1
    IL_0074:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0079:  ldarg.0
    IL_007a:  castclass  SpaceCraft.PlayerMainController
    IL_007f:  ldloc      V_1
    IL_0083:  ldloc      V_2
    IL_0087:  ldloc      V_3
    IL_008b:  ldloc      V_4
    IL_008f:  ldloc      V_5
    IL_0093:  ldloc      V_6
    IL_0097:  callvirt   instance void SpaceCraft.PlayerMainController::InitPlayerClientRpc(int32,
                                                                                            int32,
                                                                                            valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                            valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                            int32,
                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_009c:  ldarg.0
    IL_009d:  ldc.i4     0x0
    IL_00a2:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a7:  ret
  } // end of method PlayerMainController::__rpc_handler_2392349538

  .method private hidebysig static void  __rpc_handler_2442368922(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       160 (0xa0)
    .maxstack  4
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             uint64 V_1,
             string V_2,
             bool V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_0
    IL_000a:  ldloc      V_0
    IL_000e:  brfalse    IL_0021

    IL_0013:  ldloc      V_0
    IL_0017:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsListening()
    IL_001c:  brtrue     IL_0022

    IL_0021:  ret

    IL_0022:  nop
    IL_0023:  ldarg      reader
    IL_0027:  ldloca     V_1
    IL_002b:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    uint64&)
    IL_0030:  ldarga     reader
    IL_0034:  ldloca     V_3
    IL_0038:  ldloca     V_4
    IL_003c:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0042:  ldloc      V_4
    IL_0046:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_004b:  ldnull
    IL_004c:  stloc      V_2
    IL_0050:  ldloc      V_3
    IL_0054:  brfalse    IL_0067

    IL_0059:  ldarga     reader
    IL_005d:  ldloca     V_2
    IL_0061:  ldc.i4.0
    IL_0062:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(string&,
                                                                                                            bool)
    IL_0067:  nop
    IL_0068:  ldarg.2
    IL_0069:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_006e:  stloc      V_5
    IL_0072:  ldarg.0
    IL_0073:  ldc.i4     0x1
    IL_0078:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_007d:  ldarg.0
    IL_007e:  castclass  SpaceCraft.PlayerMainController
    IL_0083:  ldloc      V_1
    IL_0087:  ldloc      V_2
    IL_008b:  ldloc      V_5
    IL_008f:  callvirt   instance void SpaceCraft.PlayerMainController::PlayerReadyServerRpc(uint64,
                                                                                             string,
                                                                                             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0094:  ldarg.0
    IL_0095:  ldc.i4     0x0
    IL_009a:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_009f:  ret
  } // end of method PlayerMainController::__rpc_handler_2442368922

  .method famorassem hidebysig strict virtual 
          instance string  __getTypeName() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "PlayerMainController"
    IL_0005:  ret
  } // end of method PlayerMainController::__getTypeName

  .property instance uint64 id()
  {
    .get instance uint64 SpaceCraft.PlayerMainController::get_id()
    .set instance void SpaceCraft.PlayerMainController::set_id(uint64)
  } // end of property PlayerMainController::id
  .property instance string playerName()
  {
    .get instance string SpaceCraft.PlayerMainController::get_playerName()
    .set instance void SpaceCraft.PlayerMainController::set_playerName(string)
  } // end of property PlayerMainController::playerName
} // end of class SpaceCraft.PlayerMainController

.class public auto ansi beforefieldinit SpaceCraft.PlayerMovable
       extends [UnityEngine.CoreModule]UnityEngine.MonoBehaviour
{
  .custom instance void [UnityEngine.CoreModule]UnityEngine.RequireComponent::.ctor(class [mscorlib]System.Type) = ( 01 00 71 55 6E 69 74 79 45 6E 67 69 6E 65 2E 43   // ..qUnityEngine.C
                                                                                                                     68 61 72 61 63 74 65 72 43 6F 6E 74 72 6F 6C 6C   // haracterControll
                                                                                                                     65 72 2C 20 55 6E 69 74 79 45 6E 67 69 6E 65 2E   // er, UnityEngine.
                                                                                                                     50 68 79 73 69 63 73 4D 6F 64 75 6C 65 2C 20 56   // PhysicsModule, V
                                                                                                                     65 72 73 69 6F 6E 3D 30 2E 30 2E 30 2E 30 2C 20   // ersion=0.0.0.0, 
                                                                                                                     43 75 6C 74 75 72 65 3D 6E 65 75 74 72 61 6C 2C   // Culture=neutral,
                                                                                                                     20 50 75 62 6C 69 63 4B 65 79 54 6F 6B 65 6E 3D   //  PublicKeyToken=
                                                                                                                     6E 75 6C 6C 00 00 )                               // null..
  .field public float32 PlayerHeight
  .custom instance void [UnityEngine.CoreModule]UnityEngine.HeaderAttribute::.ctor(string) = ( 01 00 07 4D 65 74 72 69 63 73 00 00 )             // ...Metrics..
  .custom instance void [UnityEngine.CoreModule]UnityEngine.RangeAttribute::.ctor(float32,
                                                                                  float32) = ( 01 00 00 00 80 3F 00 00 20 40 00 00 )             // .....?.. @..
  .field public float32 PlayerRadius
  .custom instance void [UnityEngine.CoreModule]UnityEngine.RangeAttribute::.ctor(float32,
                                                                                  float32) = ( 01 00 33 33 B3 3E 00 00 00 40 00 00 )             // ..33.>...@..
  .field public float32 PlayerWeight
  .field public bool flyMode
  .custom instance void [UnityEngine.CoreModule]UnityEngine.HeaderAttribute::.ctor(string) = ( 01 00 08 4D 6F 76 65 6D 65 6E 74 00 00 )          // ...Movement..
  .field public bool isSwimming
  .field public float32 MoveSpeed
  .custom instance void [UnityEngine.CoreModule]UnityEngine.RangeAttribute::.ctor(float32,
                                                                                  float32) = ( 01 00 00 00 00 00 00 00 48 41 00 00 )             // ........HA..
  .field public float32 RunSpeed
  .field public float32 MaximumFallVelocity
  .field public float32 FallImpulse
  .field public bool EnableJump
  .custom instance void [UnityEngine.CoreModule]UnityEngine.HeaderAttribute::.ctor(string) = ( 01 00 04 4A 75 6D 70 00 00 )                      // ...Jump..
  .field public float32 JumpImpulse
  .field private class [UnityEngine.PhysicsModule]UnityEngine.CharacterController m_Controller
  .field private float32 m_Fall
  .field private bool m_Grounded
  .field private float32 jumpActionValue
  .field private float32 runActionValue
  .field private valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 lastMoveAxis
  .field private class SpaceCraft.PlayerCanAct playerCanAct
  .field private class SpaceCraft.PlayerAudio playerAudio
  .field private class SpaceCraft.PlayerGroundRelation playerGroundRelation
  .field private class SpaceCraft.PlayerParticles playerParticles
  .field private class SpaceCraft.PlayerFallDamage playerFallDamage
  .field private class SpaceCraft.PlayerEffects playerEffects
  .field private class SpaceCraft.PlayerShareState playerShareState
  .field private class SpaceCraft.PlayersManager _playersManager
  .field private float32 moveSpeedChangePercentage
  .field private bool autoRun
  .field private float32 lastRunValue
  .field private float32 jetpackFactor
  .field private int32 jumpStatusInAir
  .field private bool isInNoFlyZone
  .field private bool autoForward
  .field private valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 _currentMove
  .field private bool previousSwimmingStatus
  .method public hidebysig instance void 
          Start() cil managed
  {
    // Code size       113 (0x71)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class [UnityEngine.PhysicsModule]UnityEngine.CharacterController>()
    IL_0007:  stfld      class [UnityEngine.PhysicsModule]UnityEngine.CharacterController SpaceCraft.PlayerMovable::m_Controller
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerCanAct>()
    IL_0013:  stfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMovable::playerCanAct
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerAudio>()
    IL_001f:  stfld      class SpaceCraft.PlayerAudio SpaceCraft.PlayerMovable::playerAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerGroundRelation>()
    IL_002b:  stfld      class SpaceCraft.PlayerGroundRelation SpaceCraft.PlayerMovable::playerGroundRelation
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerParticles>()
    IL_0037:  stfld      class SpaceCraft.PlayerParticles SpaceCraft.PlayerMovable::playerParticles
    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerFallDamage>()
    IL_0043:  stfld      class SpaceCraft.PlayerFallDamage SpaceCraft.PlayerMovable::playerFallDamage
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerEffects>()
    IL_004f:  stfld      class SpaceCraft.PlayerEffects SpaceCraft.PlayerMovable::playerEffects
    IL_0054:  ldarg.0
    IL_0055:  ldarg.0
    IL_0056:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerShareState>()
    IL_005b:  stfld      class SpaceCraft.PlayerShareState SpaceCraft.PlayerMovable::playerShareState
    IL_0060:  ldarg.0
    IL_0061:  call       !!0 [GameOptions]GameOptionsUtility.GameOption::Get<class GameOptionsUtility.ControlOption>()
    IL_0066:  callvirt   instance bool GameOptionsUtility.ControlOption::get_autoRun()
    IL_006b:  call       instance void SpaceCraft.PlayerMovable::SetAutoRun(bool)
    IL_0070:  ret
  } // end of method PlayerMovable::Start

  .method public hidebysig instance void 
          Update() cil managed
  {
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayersManager SpaceCraft.PlayerMovable::_playersManager
    IL_0006:  ldnull
    IL_0007:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_000c:  brfalse.s  IL_0019

    IL_000e:  ldarg.0
    IL_000f:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_0014:  stfld      class SpaceCraft.PlayersManager SpaceCraft.PlayerMovable::_playersManager
    IL_0019:  ldarg.0
    IL_001a:  call       instance void SpaceCraft.PlayerMovable::UpdatePlayerMovement()
    IL_001f:  ret
  } // end of method PlayerMovable::Update

  .method public hidebysig instance void 
          OnValidate() cil managed
  {
    // Code size       109 (0x6d)
    .maxstack  4
    .locals init (float32 V_0,
             class [UnityEngine.PhysicsModule]UnityEngine.CharacterController V_1,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 SpaceCraft.PlayerMovable::PlayerHeight
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float32 SpaceCraft.PlayerMovable::PlayerRadius
    IL_000c:  add
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class [UnityEngine.PhysicsModule]UnityEngine.CharacterController>()
    IL_0014:  stloc.1
    IL_0015:  ldloca.s   V_2
    IL_0017:  ldc.r4     0.0
    IL_001c:  ldloc.0
    IL_001d:  ldc.r4     2.
    IL_0022:  div
    IL_0023:  ldc.r4     0.0
    IL_0028:  call       instance void [UnityEngine.CoreModule]UnityEngine.Vector3::.ctor(float32,
                                                                                          float32,
                                                                                          float32)
    IL_002d:  ldloc.1
    IL_002e:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.PhysicsModule]UnityEngine.CharacterController::get_center()
    IL_0033:  ldloc.2
    IL_0034:  call       bool [UnityEngine.CoreModule]UnityEngine.Vector3::op_Inequality(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                         valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0039:  brfalse.s  IL_0042

    IL_003b:  ldloc.1
    IL_003c:  ldloc.2
    IL_003d:  callvirt   instance void [UnityEngine.PhysicsModule]UnityEngine.CharacterController::set_center(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0042:  ldloc.1
    IL_0043:  callvirt   instance float32 [UnityEngine.PhysicsModule]UnityEngine.CharacterController::get_height()
    IL_0048:  ldloc.0
    IL_0049:  beq.s      IL_0052

    IL_004b:  ldloc.1
    IL_004c:  ldloc.0
    IL_004d:  callvirt   instance void [UnityEngine.PhysicsModule]UnityEngine.CharacterController::set_height(float32)
    IL_0052:  ldloc.1
    IL_0053:  callvirt   instance float32 [UnityEngine.PhysicsModule]UnityEngine.CharacterController::get_radius()
    IL_0058:  ldarg.0
    IL_0059:  ldfld      float32 SpaceCraft.PlayerMovable::PlayerRadius
    IL_005e:  beq.s      IL_006c

    IL_0060:  ldloc.1
    IL_0061:  ldarg.0
    IL_0062:  ldfld      float32 SpaceCraft.PlayerMovable::PlayerRadius
    IL_0067:  callvirt   instance void [UnityEngine.PhysicsModule]UnityEngine.CharacterController::set_radius(float32)
    IL_006c:  ret
  } // end of method PlayerMovable::OnValidate

  .method public hidebysig instance void 
          UpdatePlayerMovement() cil managed
  {
    // Code size       1043 (0x413)
    .maxstack  6
    .locals init (class [UnityEngine.CoreModule]UnityEngine.Transform V_0,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_1,
             bool V_2,
             float32 V_3,
             float32 V_4,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 V_5,
             float32 V_6,
             float32 V_7,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMovable::playerCanAct
    IL_0006:  callvirt   instance bool SpaceCraft.PlayerCanAct::GetCanMoveAfterStart()
    IL_000b:  brfalse.s  IL_001a

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [UnityEngine.PhysicsModule]UnityEngine.CharacterController SpaceCraft.PlayerMovable::m_Controller
    IL_0013:  callvirt   instance bool [UnityEngine.PhysicsModule]UnityEngine.Collider::get_enabled()
    IL_0018:  brtrue.s   IL_001b

    IL_001a:  ret

    IL_001b:  ldarg.0
    IL_001c:  ldfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMovable::playerCanAct
    IL_0021:  callvirt   instance bool SpaceCraft.PlayerCanAct::GetCanMove()
    IL_0026:  brtrue.s   IL_0051

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class SpaceCraft.PlayersManager SpaceCraft.PlayerMovable::_playersManager
    IL_002e:  ldnull
    IL_002f:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0034:  brfalse.s  IL_0051

    IL_0036:  ldarg.0
    IL_0037:  ldfld      class SpaceCraft.PlayersManager SpaceCraft.PlayerMovable::_playersManager
    IL_003c:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.PlayerMainController> SpaceCraft.PlayersManager::get_playersControllers()
    IL_0041:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.PlayerMainController>::get_Count()
    IL_0046:  ldc.i4.1
    IL_0047:  bne.un.s   IL_0051

    IL_0049:  ldarg.0
    IL_004a:  ldc.i4.0
    IL_004b:  call       instance void SpaceCraft.PlayerMovable::SetJetpackEnabled(bool)
    IL_0050:  ret

    IL_0051:  ldarg.0
    IL_0052:  ldfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMovable::playerCanAct
    IL_0057:  callvirt   instance bool SpaceCraft.PlayerCanAct::GetCanMove()
    IL_005c:  brtrue.s   IL_0074

    IL_005e:  ldarg.0
    IL_005f:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 [UnityEngine.CoreModule]UnityEngine.Vector2::get_zero()
    IL_0064:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 SpaceCraft.PlayerMovable::lastMoveAxis
    IL_0069:  ldarg.0
    IL_006a:  ldc.r4     0.0
    IL_006f:  stfld      float32 SpaceCraft.PlayerMovable::jumpActionValue
    IL_0074:  call       class [UnityEngine.CoreModule]UnityEngine.Camera [UnityEngine.CoreModule]UnityEngine.Camera::get_main()
    IL_0079:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_007e:  stloc.0
    IL_007f:  ldloc.0
    IL_0080:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_eulerAngles()
    IL_0085:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector3::y
    IL_008a:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_up()
    IL_008f:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(float32,
                                                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0094:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion [UnityEngine.CoreModule]UnityEngine.Quaternion::Euler(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0099:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_forward()
    IL_009e:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Quaternion::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_00a3:  stloc.1
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      bool SpaceCraft.PlayerMovable::EnableJump
    IL_00aa:  stloc.2
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      float32 SpaceCraft.PlayerMovable::RunSpeed
    IL_00b1:  stloc.3
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      float32 SpaceCraft.PlayerMovable::MaximumFallVelocity
    IL_00b8:  stloc.s    V_4
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class SpaceCraft.PlayerEffects SpaceCraft.PlayerMovable::playerEffects
    IL_00c0:  ldc.i4.3
    IL_00c1:  callvirt   instance class SpaceCraft.ActiveEffectOnPlayer SpaceCraft.PlayerEffects::GetActiveFirstEffectOfType(valuetype SpaceCraft.DataConfig/EffectOnPlayerType)
    IL_00c6:  brfalse.s  IL_00d0

    IL_00c8:  ldloc.3
    IL_00c9:  ldc.r4     1.5
    IL_00ce:  mul
    IL_00cf:  stloc.3
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      bool SpaceCraft.PlayerMovable::flyMode
    IL_00d6:  brfalse.s  IL_00f2

    IL_00d8:  ldc.i4.0
    IL_00d9:  stloc.2
    IL_00da:  ldc.r4     250.
    IL_00df:  stloc.3
    IL_00e0:  ldarg.0
    IL_00e1:  ldc.r4     0.0
    IL_00e6:  stfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_00eb:  ldloc.0
    IL_00ec:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_forward()
    IL_00f1:  stloc.1
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      bool SpaceCraft.PlayerMovable::isSwimming
    IL_00f8:  brfalse.s  IL_0119

    IL_00fa:  ldc.i4.0
    IL_00fb:  stloc.2
    IL_00fc:  ldarg.0
    IL_00fd:  ldc.r4     0.0
    IL_0102:  stfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_0107:  ldloc.0
    IL_0108:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_forward()
    IL_010d:  stloc.1
    IL_010e:  ldarg.0
    IL_010f:  ldfld      class SpaceCraft.PlayerFallDamage SpaceCraft.PlayerMovable::playerFallDamage
    IL_0114:  callvirt   instance void SpaceCraft.PlayerFallDamage::ResetLastGroundPlace()
    IL_0119:  ldarg.0
    IL_011a:  ldfld      bool SpaceCraft.PlayerMovable::m_Grounded
    IL_011f:  brfalse.s  IL_0156

    IL_0121:  ldarg.0
    IL_0122:  ldarg.0
    IL_0123:  ldfld      float32 SpaceCraft.PlayerMovable::FallImpulse
    IL_0128:  stfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_012d:  ldloc.2
    IL_012e:  brfalse.s  IL_014a

    IL_0130:  ldarg.0
    IL_0131:  ldfld      float32 SpaceCraft.PlayerMovable::jumpActionValue
    IL_0136:  ldc.r4     0.0
    IL_013b:  ble.un.s   IL_014a

    IL_013d:  ldarg.0
    IL_013e:  ldarg.0
    IL_013f:  ldfld      float32 SpaceCraft.PlayerMovable::JumpImpulse
    IL_0144:  neg
    IL_0145:  stfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_014a:  ldarg.0
    IL_014b:  ldc.i4.0
    IL_014c:  stfld      int32 SpaceCraft.PlayerMovable::jumpStatusInAir
    IL_0151:  br         IL_02bb

    IL_0156:  ldarg.0
    IL_0157:  ldfld      float32 SpaceCraft.PlayerMovable::jumpActionValue
    IL_015c:  ldc.r4     0.0
    IL_0161:  ble.un     IL_029e

    IL_0166:  ldarg.0
    IL_0167:  ldfld      float32 SpaceCraft.PlayerMovable::jetpackFactor
    IL_016c:  ldc.r4     0.0
    IL_0171:  ble.un     IL_029e

    IL_0176:  ldarg.0
    IL_0177:  ldfld      bool SpaceCraft.PlayerMovable::isSwimming
    IL_017c:  brtrue     IL_029e

    IL_0181:  ldarg.0
    IL_0182:  ldfld      bool SpaceCraft.PlayerMovable::isInNoFlyZone
    IL_0187:  brtrue     IL_029e

    IL_018c:  ldarg.0
    IL_018d:  ldfld      int32 SpaceCraft.PlayerMovable::jumpStatusInAir
    IL_0192:  brtrue.s   IL_019b

    IL_0194:  ldarg.0
    IL_0195:  ldc.i4.1
    IL_0196:  stfld      int32 SpaceCraft.PlayerMovable::jumpStatusInAir
    IL_019b:  ldarg.0
    IL_019c:  ldfld      int32 SpaceCraft.PlayerMovable::jumpStatusInAir
    IL_01a1:  ldc.i4.2
    IL_01a2:  bne.un     IL_029e

    IL_01a7:  ldc.r4     3.5
    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      float32 SpaceCraft.PlayerMovable::jetpackFactor
    IL_01b2:  ldc.r4     2.
    IL_01b7:  mul
    IL_01b8:  add
    IL_01b9:  stloc.s    V_9
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class SpaceCraft.PlayerGroundRelation SpaceCraft.PlayerMovable::playerGroundRelation
    IL_01c1:  callvirt   instance float32 SpaceCraft.PlayerGroundRelation::GetGroundDistance()
    IL_01c6:  stloc.s    V_10
    IL_01c8:  ldc.r4     0.0
    IL_01cd:  stloc.s    V_11
    IL_01cf:  ldc.r4     20.
    IL_01d4:  stloc.s    V_12
    IL_01d6:  ldloc.3
    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      float32 SpaceCraft.PlayerMovable::jetpackFactor
    IL_01dd:  mul
    IL_01de:  stloc.3
    IL_01df:  ldloc.0
    IL_01e0:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_forward()
    IL_01e5:  stloc.1
    IL_01e6:  ldloca.s   V_1
    IL_01e8:  ldflda     float32 [UnityEngine.CoreModule]UnityEngine.Vector3::y
    IL_01ed:  dup
    IL_01ee:  ldind.r4
    IL_01ef:  ldc.r4     1.
    IL_01f4:  ldc.r4     0.0
    IL_01f9:  ldloc.s    V_9
    IL_01fb:  ldc.r4     8.
    IL_0200:  mul
    IL_0201:  ldloc.s    V_10
    IL_0203:  call       float32 [UnityEngine.CoreModule]UnityEngine.Mathf::InverseLerp(float32,
                                                                                        float32,
                                                                                        float32)
    IL_0208:  sub
    IL_0209:  mul
    IL_020a:  stind.r4
    IL_020b:  ldarg.0
    IL_020c:  ldc.r4     1.
    IL_0211:  stfld      float32 SpaceCraft.PlayerMovable::runActionValue
    IL_0216:  ldarg.0
    IL_0217:  ldc.i4.1
    IL_0218:  call       instance void SpaceCraft.PlayerMovable::SetJetpackEnabled(bool)
    IL_021d:  ldloc.s    V_10
    IL_021f:  ldloc.s    V_9
    IL_0221:  ble.un.s   IL_0247

    IL_0223:  ldc.r4     0.0
    IL_0228:  ldc.r4     20.
    IL_022d:  ldc.r4     0.0
    IL_0232:  ldloc.s    V_9
    IL_0234:  ldloc.s    V_10
    IL_0236:  ldloc.s    V_9
    IL_0238:  sub
    IL_0239:  call       float32 [UnityEngine.CoreModule]UnityEngine.Mathf::InverseLerp(float32,
                                                                                        float32,
                                                                                        float32)
    IL_023e:  call       float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Lerp(float32,
                                                                                 float32,
                                                                                 float32)
    IL_0243:  stloc.s    V_11
    IL_0245:  br.s       IL_0270

    IL_0247:  ldc.r4     -5.
    IL_024c:  ldc.r4     0.0
    IL_0251:  ldc.r4     0.0
    IL_0256:  ldloc.s    V_9
    IL_0258:  ldloc.s    V_10
    IL_025a:  call       float32 [UnityEngine.CoreModule]UnityEngine.Mathf::InverseLerp(float32,
                                                                                        float32,
                                                                                        float32)
    IL_025f:  call       float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Lerp(float32,
                                                                                 float32,
                                                                                 float32)
    IL_0264:  stloc.s    V_11
    IL_0266:  ldloc.s    V_12
    IL_0268:  ldc.r4     2.
    IL_026d:  mul
    IL_026e:  stloc.s    V_12
    IL_0270:  ldarg.0
    IL_0271:  ldarg.0
    IL_0272:  ldfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_0277:  ldloc.s    V_11
    IL_0279:  ldloc.s    V_12
    IL_027b:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_deltaTime()
    IL_0280:  mul
    IL_0281:  call       float32 [UnityEngine.CoreModule]UnityEngine.Mathf::MoveTowards(float32,
                                                                                        float32,
                                                                                        float32)
    IL_0286:  stfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_028b:  ldarg.0
    IL_028c:  ldfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_0291:  stloc.s    V_4
    IL_0293:  ldarg.0
    IL_0294:  ldfld      class SpaceCraft.PlayerFallDamage SpaceCraft.PlayerMovable::playerFallDamage
    IL_0299:  callvirt   instance void SpaceCraft.PlayerFallDamage::ResetLastGroundPlace()
    IL_029e:  ldarg.0
    IL_029f:  ldfld      int32 SpaceCraft.PlayerMovable::jumpStatusInAir
    IL_02a4:  ldc.i4.1
    IL_02a5:  bne.un.s   IL_02bb

    IL_02a7:  ldarg.0
    IL_02a8:  ldfld      float32 SpaceCraft.PlayerMovable::jumpActionValue
    IL_02ad:  ldc.r4     0.0
    IL_02b2:  bne.un.s   IL_02bb

    IL_02b4:  ldarg.0
    IL_02b5:  ldc.i4.2
    IL_02b6:  stfld      int32 SpaceCraft.PlayerMovable::jumpStatusInAir
    IL_02bb:  ldarg.0
    IL_02bc:  ldfld      int32 SpaceCraft.PlayerMovable::jumpStatusInAir
    IL_02c1:  ldc.i4.2
    IL_02c2:  bne.un.s   IL_02d1

    IL_02c4:  ldarg.0
    IL_02c5:  ldfld      float32 SpaceCraft.PlayerMovable::jumpActionValue
    IL_02ca:  ldc.r4     0.0
    IL_02cf:  bne.un.s   IL_02d8

    IL_02d1:  ldarg.0
    IL_02d2:  ldc.i4.0
    IL_02d3:  call       instance void SpaceCraft.PlayerMovable::SetJetpackEnabled(bool)
    IL_02d8:  ldarg.0
    IL_02d9:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 SpaceCraft.PlayerMovable::lastMoveAxis
    IL_02de:  stloc.s    V_5
    IL_02e0:  ldarg.0
    IL_02e1:  ldfld      bool SpaceCraft.PlayerMovable::autoForward
    IL_02e6:  brfalse.s  IL_02f4

    IL_02e8:  ldloca.s   V_5
    IL_02ea:  ldc.r4     1.
    IL_02ef:  stfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
    IL_02f4:  ldloc.3
    IL_02f5:  ldloc.3
    IL_02f6:  ldarg.0
    IL_02f7:  ldfld      float32 SpaceCraft.PlayerMovable::moveSpeedChangePercentage
    IL_02fc:  mul
    IL_02fd:  ldc.r4     100.
    IL_0302:  div
    IL_0303:  add
    IL_0304:  stloc.s    V_6
    IL_0306:  ldarg.0
    IL_0307:  ldfld      float32 SpaceCraft.PlayerMovable::runActionValue
    IL_030c:  ldc.r4     0.0
    IL_0311:  bgt.s      IL_031b

    IL_0313:  ldarg.0
    IL_0314:  ldfld      float32 SpaceCraft.PlayerMovable::MoveSpeed
    IL_0319:  br.s       IL_031d

    IL_031b:  ldloc.s    V_6
    IL_031d:  stloc.s    V_7
    IL_031f:  ldloc.1
    IL_0320:  ldloc.s    V_5
    IL_0322:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
    IL_0327:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        float32)
    IL_032c:  ldloc.0
    IL_032d:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_right()
    IL_0332:  ldloc.s    V_5
    IL_0334:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
    IL_0339:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        float32)
    IL_033e:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Addition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0343:  ldloc.s    V_7
    IL_0345:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        float32)
    IL_034a:  stloc.s    V_8
    IL_034c:  ldarg.0
    IL_034d:  ldarg.0
    IL_034e:  ldfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_0353:  ldarg.0
    IL_0354:  ldfld      float32 SpaceCraft.PlayerMovable::PlayerWeight
    IL_0359:  ldc.r4     9.8066502
    IL_035e:  mul
    IL_035f:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_deltaTime()
    IL_0364:  mul
    IL_0365:  add
    IL_0366:  stfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_036b:  ldarg.0
    IL_036c:  ldarg.0
    IL_036d:  ldfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_0372:  ldloc.s    V_4
    IL_0374:  call       float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Min(float32,
                                                                                float32)
    IL_0379:  stfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_037e:  ldarg.0
    IL_037f:  ldfld      bool SpaceCraft.PlayerMovable::flyMode
    IL_0384:  brtrue.s   IL_03a4

    IL_0386:  ldloc.s    V_8
    IL_0388:  ldarg.0
    IL_0389:  ldfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_038e:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_up()
    IL_0393:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_UnaryNegation(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0398:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(float32,
                                                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_039d:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Addition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_03a2:  stloc.s    V_8
    IL_03a4:  ldarg.0
    IL_03a5:  ldfld      bool SpaceCraft.PlayerMovable::isSwimming
    IL_03aa:  brfalse.s  IL_03dc

    IL_03ac:  ldarg.0
    IL_03ad:  ldfld      float32 SpaceCraft.PlayerMovable::jumpActionValue
    IL_03b2:  ldc.r4     0.0
    IL_03b7:  ble.un.s   IL_03dc

    IL_03b9:  ldloc.s    V_8
    IL_03bb:  ldarg.0
    IL_03bc:  ldfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_03c1:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_up()
    IL_03c6:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(float32,
                                                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_03cb:  ldc.r4     6.
    IL_03d0:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        float32)
    IL_03d5:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Addition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_03da:  stloc.s    V_8
    IL_03dc:  ldarg.0
    IL_03dd:  ldfld      class [UnityEngine.PhysicsModule]UnityEngine.CharacterController SpaceCraft.PlayerMovable::m_Controller
    IL_03e2:  ldloc.s    V_8
    IL_03e4:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_deltaTime()
    IL_03e9:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        float32)
    IL_03ee:  callvirt   instance valuetype [UnityEngine.PhysicsModule]UnityEngine.CollisionFlags [UnityEngine.PhysicsModule]UnityEngine.CharacterController::Move(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_03f3:  pop
    IL_03f4:  ldarg.0
    IL_03f5:  ldarg.0
    IL_03f6:  ldfld      class [UnityEngine.PhysicsModule]UnityEngine.CharacterController SpaceCraft.PlayerMovable::m_Controller
    IL_03fb:  callvirt   instance bool [UnityEngine.PhysicsModule]UnityEngine.CharacterController::get_isGrounded()
    IL_0400:  stfld      bool SpaceCraft.PlayerMovable::m_Grounded
    IL_0405:  ldarg.0
    IL_0406:  ldloca.s   V_8
    IL_0408:  call       instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_normalized()
    IL_040d:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerMovable::_currentMove
    IL_0412:  ret
  } // end of method PlayerMovable::UpdatePlayerMovement

  .method private hidebysig instance void 
          SetJetpackEnabled(bool enabled) cil managed
  {
    // Code size       51 (0x33)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerParticles SpaceCraft.PlayerMovable::playerParticles
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void SpaceCraft.PlayerParticles::SetGroundDustStatus(bool)
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class SpaceCraft.PlayerAudio SpaceCraft.PlayerMovable::playerAudio
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance void SpaceCraft.PlayerAudio::SetJetpacking(bool)
    IL_0018:  ldarg.1
    IL_0019:  brfalse.s  IL_0027

    IL_001b:  ldarg.0
    IL_001c:  ldfld      class SpaceCraft.PlayerShareState SpaceCraft.PlayerMovable::playerShareState
    IL_0021:  callvirt   instance void SpaceCraft.PlayerShareState::StartJetpack()
    IL_0026:  ret

    IL_0027:  ldarg.0
    IL_0028:  ldfld      class SpaceCraft.PlayerShareState SpaceCraft.PlayerMovable::playerShareState
    IL_002d:  callvirt   instance void SpaceCraft.PlayerShareState::StopJetpack()
    IL_0032:  ret
  } // end of method PlayerMovable::SetJetpackEnabled

  .method public hidebysig instance void 
          SetMoveSpeed(float32 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 SpaceCraft.PlayerMovable::MoveSpeed
    IL_0007:  ret
  } // end of method PlayerMovable::SetMoveSpeed

  .method public hidebysig instance void 
          SetMoveSpeedChangePercentage(float32 _moveSpeedChange) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 SpaceCraft.PlayerMovable::moveSpeedChangePercentage
    IL_0007:  ret
  } // end of method PlayerMovable::SetMoveSpeedChangePercentage

  .method public hidebysig instance void 
          SetJetpackFactor(float32 _jetPackFactor) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 SpaceCraft.PlayerMovable::jetpackFactor
    IL_0007:  ret
  } // end of method PlayerMovable::SetJetpackFactor

  .method public hidebysig instance void 
          SetIsInNoFlyZone(bool _isInNoFlyZone) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.PlayerMovable::isInNoFlyZone
    IL_0007:  ret
  } // end of method PlayerMovable::SetIsInNoFlyZone

  .method public hidebysig instance void 
          InputOnMove(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 'value') cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
    IL_0006:  ldc.r4     0.0
    IL_000b:  bge.un.s   IL_0014

    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.0
    IL_000f:  stfld      bool SpaceCraft.PlayerMovable::autoForward
    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 SpaceCraft.PlayerMovable::lastMoveAxis
    IL_001b:  ret
  } // end of method PlayerMovable::InputOnMove

  .method public hidebysig instance void 
          InputOnJump(float32 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 SpaceCraft.PlayerMovable::jumpActionValue
    IL_0007:  ret
  } // end of method PlayerMovable::InputOnJump

  .method public hidebysig instance void 
          InputAutoForward() cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool SpaceCraft.PlayerMovable::autoForward
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  stfld      bool SpaceCraft.PlayerMovable::autoForward
    IL_000f:  ret
  } // end of method PlayerMovable::InputAutoForward

  .method public hidebysig instance void 
          InputOnRun(float32 'value') cil managed
  {
    // Code size       65 (0x41)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.PlayerMovable::autoRun
    IL_0006:  brtrue.s   IL_0010

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      float32 SpaceCraft.PlayerMovable::runActionValue
    IL_000f:  ret

    IL_0010:  ldarg.1
    IL_0011:  ldc.r4     1.
    IL_0016:  bne.un.s   IL_0039

    IL_0018:  ldarg.1
    IL_0019:  ldarg.0
    IL_001a:  ldfld      float32 SpaceCraft.PlayerMovable::lastRunValue
    IL_001f:  beq.s      IL_0039

    IL_0021:  ldarg.0
    IL_0022:  ldarg.0
    IL_0023:  ldfld      float32 SpaceCraft.PlayerMovable::runActionValue
    IL_0028:  ldc.r4     0.0
    IL_002d:  beq.s      IL_0032

    IL_002f:  ldc.i4.0
    IL_0030:  br.s       IL_0033

    IL_0032:  ldc.i4.1
    IL_0033:  conv.r4
    IL_0034:  stfld      float32 SpaceCraft.PlayerMovable::runActionValue
    IL_0039:  ldarg.0
    IL_003a:  ldarg.1
    IL_003b:  stfld      float32 SpaceCraft.PlayerMovable::lastRunValue
    IL_0040:  ret
  } // end of method PlayerMovable::InputOnRun

  .method public hidebysig instance void 
          InputOnUnstuck([opt] bool inverted) cil managed
  {
    .param [1] = bool(false)
    // Code size       102 (0x66)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMovable::playerCanAct
    IL_0006:  callvirt   instance bool SpaceCraft.PlayerCanAct::GetCanMove()
    IL_000b:  brtrue.s   IL_000e

    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  ldc.r4     0.0
    IL_0014:  stfld      float32 SpaceCraft.PlayerMovable::m_Fall
    IL_0019:  ldarg.0
    IL_001a:  call       instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_001f:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.PlayerMainController>()
    IL_0024:  ldarg.0
    IL_0025:  call       instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_002a:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_position()
    IL_002f:  ldarg.1
    IL_0030:  brtrue.s   IL_0039

    IL_0032:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_up()
    IL_0037:  br.s       IL_003e

    IL_0039:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_down()
    IL_003e:  ldc.r4     2.5
    IL_0043:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        float32)
    IL_0048:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Addition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_004d:  ldarg.0
    IL_004e:  call       instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_0053:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion [UnityEngine.CoreModule]UnityEngine.Transform::get_rotation()
    IL_0058:  ldc.i4.0
    IL_0059:  callvirt   instance void SpaceCraft.PlayerMainController::SetPlayerPlacement(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                           bool)
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4.0
    IL_0060:  stfld      bool SpaceCraft.PlayerMovable::m_Grounded
    IL_0065:  ret
  } // end of method PlayerMovable::InputOnUnstuck

  .method public hidebysig instance void 
          IsSwimming(bool _isSwimming) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool SpaceCraft.PlayerMovable::previousSwimmingStatus
    IL_0007:  beq.s      IL_0019

    IL_0009:  ldarg.0
    IL_000a:  ldstr      "ChangeSwimmingStatus"
    IL_000f:  ldc.r4     0.30000001
    IL_0014:  call       instance void [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::Invoke(string,
                                                                                                 float32)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  stfld      bool SpaceCraft.PlayerMovable::previousSwimmingStatus
    IL_0020:  ret
  } // end of method PlayerMovable::IsSwimming

  .method private hidebysig instance void 
          ChangeSwimmingStatus() cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool SpaceCraft.PlayerMovable::isSwimming
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  stfld      bool SpaceCraft.PlayerMovable::isSwimming
    IL_000f:  ret
  } // end of method PlayerMovable::ChangeSwimmingStatus

  .method public hidebysig instance void 
          SetAutoRun(bool _autoRun) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.PlayerMovable::autoRun
    IL_0007:  ret
  } // end of method PlayerMovable::SetAutoRun

  .method public hidebysig instance float32 
          GetMaximumFallVelocity() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 SpaceCraft.PlayerMovable::MaximumFallVelocity
    IL_0006:  ret
  } // end of method PlayerMovable::GetMaximumFallVelocity

  .method public hidebysig instance void 
          ToggleFlyMode() cil managed
  {
    // Code size       74 (0x4a)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMovable::playerCanAct
    IL_0006:  callvirt   instance bool SpaceCraft.PlayerCanAct::GetCanMove()
    IL_000b:  brtrue.s   IL_000e

    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  ldarg.0
    IL_0010:  ldfld      bool SpaceCraft.PlayerMovable::flyMode
    IL_0015:  ldc.i4.0
    IL_0016:  ceq
    IL_0018:  stfld      bool SpaceCraft.PlayerMovable::flyMode
    IL_001d:  ldarg.0
    IL_001e:  ldfld      bool SpaceCraft.PlayerMovable::flyMode
    IL_0023:  brtrue.s   IL_002c

    IL_0025:  ldstr      "Fly mode OFF"
    IL_002a:  br.s       IL_0031

    IL_002c:  ldstr      "Fly mode ON"
    IL_0031:  stloc.0
    IL_0032:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.DisplayersHandler>()
    IL_0037:  callvirt   instance class SpaceCraft.InformationsDisplayer SpaceCraft.DisplayersHandler::GetInformationsDisplayer()
    IL_003c:  ldc.r4     0.75
    IL_0041:  ldloc.0
    IL_0042:  ldc.i4.4
    IL_0043:  ldnull
    IL_0044:  callvirt   instance void SpaceCraft.InformationsDisplayer::AddInformation(float32,
                                                                                        string,
                                                                                        valuetype SpaceCraft.DataConfig/UiInformationsType,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Sprite)
    IL_0049:  ret
  } // end of method PlayerMovable::ToggleFlyMode

  .method public hidebysig instance bool 
          GetFlyMode() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.PlayerMovable::flyMode
    IL_0006:  ret
  } // end of method PlayerMovable::GetFlyMode

  .method public hidebysig instance void 
          SetFlyMode(bool _canFly) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.PlayerMovable::flyMode
    IL_0007:  ret
  } // end of method PlayerMovable::SetFlyMode

  .method public hidebysig instance bool 
          GetGrounded() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.PlayerMovable::m_Grounded
    IL_0006:  ret
  } // end of method PlayerMovable::GetGrounded

  .method public hidebysig instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 
          GetCurrentMove() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerMovable::_currentMove
    IL_0006:  ret
  } // end of method PlayerMovable::GetCurrentMove

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool SpaceCraft.PlayerMovable::EnableJump
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool SpaceCraft.PlayerMovable::m_Grounded
    IL_000e:  ldarg.0
    IL_000f:  call       instance void [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::.ctor()
    IL_0014:  ret
  } // end of method PlayerMovable::.ctor

} // end of class SpaceCraft.PlayerMovable

.class public auto ansi beforefieldinit SpaceCraft.PlayerMultitool
       extends [UnityEngine.CoreModule]UnityEngine.MonoBehaviour
{
  .field private class SpaceCraft.MultiToolScreen multiToolScreen
  .field private class SpaceCraft.MultiToolMine multiToolMine
  .field private class SpaceCraft.MultiToolLight multiToolLight
  .field private class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> enabledStates
  .field private int32 currentStateIndex
  .field private float32 timePreviousTime
  .field private float32 securityTime
  .field private class SpaceCraft.GameSettingsHandler gameSettingsHandler
  .field private class SpaceCraft.PlayerCanAct playerCanAct
  .field private bool canUseLight
  .field private bool lightIsOn
  .field private int32 lightTier
  .method private hidebysig instance void 
          Start() cil managed
  {
    // Code size       69 (0x45)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_0006:  ldnull
    IL_0007:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_000c:  brfalse.s  IL_0044

    IL_000e:  ldarg.0
    IL_000f:  call       instance void SpaceCraft.PlayerMultitool::UpdateTools()
    IL_0014:  ldarg.0
    IL_0015:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.GameSettingsHandler>()
    IL_001a:  stfld      class SpaceCraft.GameSettingsHandler SpaceCraft.PlayerMultitool::gameSettingsHandler
    IL_001f:  ldarg.0
    IL_0020:  ldarg.0
    IL_0021:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerCanAct>()
    IL_0026:  stfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMultitool::playerCanAct
    IL_002b:  ldarg.0
    IL_002c:  ldc.i4.0
    IL_002d:  call       instance void SpaceCraft.PlayerMultitool::AddEnabledState(valuetype SpaceCraft.DataConfig/MultiToolState)
    IL_0032:  ldarg.0
    IL_0033:  ldc.i4.0
    IL_0034:  call       instance void SpaceCraft.PlayerMultitool::SetState(valuetype SpaceCraft.DataConfig/MultiToolState)
    IL_0039:  ldarg.0
    IL_003a:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_time()
    IL_003f:  stfld      float32 SpaceCraft.PlayerMultitool::timePreviousTime
    IL_0044:  ret
  } // end of method PlayerMultitool::Start

  .method public hidebysig instance void 
          UpdateTools() cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponentInChildren<class SpaceCraft.MultiToolScreen>()
    IL_0007:  stfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_000c:  ldarg.0
    IL_000d:  call       instance void SpaceCraft.PlayerMultitool::UpdateMultiToolScreen()
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponentInChildren<class SpaceCraft.MultiToolMine>()
    IL_0019:  stfld      class SpaceCraft.MultiToolMine SpaceCraft.PlayerMultitool::multiToolMine
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponentInChildren<class SpaceCraft.MultiToolLight>()
    IL_0025:  stfld      class SpaceCraft.MultiToolLight SpaceCraft.PlayerMultitool::multiToolLight
    IL_002a:  ret
  } // end of method PlayerMultitool::UpdateTools

  .method private hidebysig instance void 
          UpdateMultiToolScreen() cil managed
  {
    // Code size       91 (0x5b)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble.s      IL_005a

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_0014:  ldnull
    IL_0015:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_001a:  brfalse.s  IL_005a

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0028:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Count()
    IL_002d:  callvirt   instance void SpaceCraft.MultiToolScreen::ShowOrHideArrows(int32)
    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0039:  ldarg.0
    IL_003a:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_003f:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Item(int32)
    IL_0044:  call       instance void SpaceCraft.PlayerMultitool::PopulateState(valuetype SpaceCraft.DataConfig/MultiToolState)
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_004f:  ldarg.0
    IL_0050:  ldfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_0055:  callvirt   instance void SpaceCraft.MultiToolScreen::ShowLight(bool)
    IL_005a:  ret
  } // end of method PlayerMultitool::UpdateMultiToolScreen

  .method public hidebysig instance void 
          AddEnabledState(valuetype SpaceCraft.DataConfig/MultiToolState _multiToolState) cil managed
  {
    // Code size       55 (0x37)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void SpaceCraft.PlayerMultitool::Start()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::Contains(!0)
    IL_0012:  brtrue.s   IL_0020

    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_001a:  ldarg.1
    IL_001b:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::Add(!0)
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_002c:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Count()
    IL_0031:  callvirt   instance void SpaceCraft.MultiToolScreen::ShowOrHideArrows(int32)
    IL_0036:  ret
  } // end of method PlayerMultitool::AddEnabledState

  .method public hidebysig instance void 
          RemoveEnabledState(valuetype SpaceCraft.DataConfig/MultiToolState _multiToolState) cil managed
  {
    // Code size       114 (0x72)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance void SpaceCraft.PlayerMultitool::Start()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::Contains(!0)
    IL_0012:  brfalse.s  IL_0021

    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_001a:  ldarg.1
    IL_001b:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::Remove(!0)
    IL_0020:  pop
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.0
    IL_0023:  stfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0034:  ldarg.0
    IL_0035:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_003a:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Item(int32)
    IL_003f:  callvirt   instance void SpaceCraft.MultiToolScreen::SetState(valuetype SpaceCraft.DataConfig/MultiToolState)
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0050:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Count()
    IL_0055:  callvirt   instance void SpaceCraft.MultiToolScreen::ShowOrHideArrows(int32)
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0061:  ldarg.0
    IL_0062:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_0067:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Item(int32)
    IL_006c:  call       instance void SpaceCraft.PlayerMultitool::PopulateState(valuetype SpaceCraft.DataConfig/MultiToolState)
    IL_0071:  ret
  } // end of method PlayerMultitool::RemoveEnabledState

  .method public hidebysig instance bool 
          HasEnabledState(valuetype SpaceCraft.DataConfig/MultiToolState _multiToolState) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::Contains(!0)
    IL_000c:  ret
  } // end of method PlayerMultitool::HasEnabledState

  .method public hidebysig instance void 
          InputOnRotateObject(float32 rotate) cil managed
  {
    // Code size       183 (0xb7)
    .maxstack  4
    .locals init (valuetype SpaceCraft.DataConfig/MultiToolState V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.PlayerCanAct SpaceCraft.PlayerMultitool::playerCanAct
    IL_0006:  callvirt   instance bool SpaceCraft.PlayerCanAct::GetCanMove()
    IL_000b:  brtrue.s   IL_000e

    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerBuilder>()
    IL_0014:  callvirt   instance bool SpaceCraft.PlayerBuilder::GetIsGhostExisting()
    IL_0019:  brfalse.s  IL_001c

    IL_001b:  ret

    IL_001c:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_time()
    IL_0021:  ldarg.0
    IL_0022:  ldfld      float32 SpaceCraft.PlayerMultitool::timePreviousTime
    IL_0027:  ldarg.0
    IL_0028:  ldfld      float32 SpaceCraft.PlayerMultitool::securityTime
    IL_002d:  add
    IL_002e:  bge.un.s   IL_0031

    IL_0030:  ret

    IL_0031:  ldarg.0
    IL_0032:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_time()
    IL_0037:  stfld      float32 SpaceCraft.PlayerMultitool::timePreviousTime
    IL_003c:  ldarg.1
    IL_003d:  ldc.r4     0.0
    IL_0042:  ble.un.s   IL_006c

    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_004b:  ldc.i4.0
    IL_004c:  bgt.s      IL_005d

    IL_004e:  ldarg.0
    IL_004f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0054:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Count()
    IL_0059:  ldc.i4.1
    IL_005a:  sub
    IL_005b:  br.s       IL_0065

    IL_005d:  ldarg.0
    IL_005e:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_0063:  ldc.i4.1
    IL_0064:  sub
    IL_0065:  stfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_006a:  br.s       IL_0092

    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0079:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Count()
    IL_007e:  ldc.i4.1
    IL_007f:  sub
    IL_0080:  bge.s      IL_008c

    IL_0082:  ldarg.0
    IL_0083:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_0088:  ldc.i4.1
    IL_0089:  add
    IL_008a:  br.s       IL_008d

    IL_008c:  ldc.i4.0
    IL_008d:  stfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_0092:  ldarg.0
    IL_0093:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerAudio>()
    IL_0098:  callvirt   instance void SpaceCraft.PlayerAudio::PlayChangeTool()
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_00a9:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Item(int32)
    IL_00ae:  stloc.0
    IL_00af:  ldarg.0
    IL_00b0:  ldloc.0
    IL_00b1:  call       instance void SpaceCraft.PlayerMultitool::PopulateState(valuetype SpaceCraft.DataConfig/MultiToolState)
    IL_00b6:  ret
  } // end of method PlayerMultitool::InputOnRotateObject

  .method public hidebysig instance void 
          SetState(valuetype SpaceCraft.DataConfig/MultiToolState _state) cil managed
  {
    // Code size       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::Contains(!0)
    IL_000c:  brfalse.s  IL_0037

    IL_000e:  ldarg.0
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::IndexOf(!0)
    IL_001b:  stfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_0027:  ldarg.0
    IL_0028:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_002d:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Item(int32)
    IL_0032:  call       instance void SpaceCraft.PlayerMultitool::PopulateState(valuetype SpaceCraft.DataConfig/MultiToolState)
    IL_0037:  ret
  } // end of method PlayerMultitool::SetState

  .method public hidebysig instance valuetype SpaceCraft.DataConfig/MultiToolState 
          GetState() cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void SpaceCraft.PlayerMultitool::Start()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_000c:  ldarg.0
    IL_000d:  ldfld      int32 SpaceCraft.PlayerMultitool::currentStateIndex
    IL_0012:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::get_Item(int32)
    IL_0017:  ret
  } // end of method PlayerMultitool::GetState

  .method private hidebysig instance void 
          PopulateState(valuetype SpaceCraft.DataConfig/MultiToolState _state) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void SpaceCraft.MultiToolScreen::SetState(valuetype SpaceCraft.DataConfig/MultiToolState)
    IL_000c:  ret
  } // end of method PlayerMultitool::PopulateState

  .method public hidebysig instance class SpaceCraft.MultiToolMine 
          GetMultiToolMine() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void SpaceCraft.PlayerMultitool::Start()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class SpaceCraft.MultiToolMine SpaceCraft.PlayerMultitool::multiToolMine
    IL_000c:  ret
  } // end of method PlayerMultitool::GetMultiToolMine

  .method public hidebysig instance void 
          SetCanUseLight(bool _canUseLight,
                         int32 _lightTier) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.PlayerMultitool::canUseLight
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      int32 SpaceCraft.PlayerMultitool::lightTier
    IL_000e:  ldarg.0
    IL_000f:  ldfld      bool SpaceCraft.PlayerMultitool::canUseLight
    IL_0014:  brtrue.s   IL_0023

    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.0
    IL_0018:  stfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_001d:  ldarg.0
    IL_001e:  call       instance void SpaceCraft.PlayerMultitool::SetLight()
    IL_0023:  ret
  } // end of method PlayerMultitool::SetCanUseLight

  .method public hidebysig instance void 
          ToggleLight() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  stfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_000f:  ldarg.0
    IL_0010:  call       instance void SpaceCraft.PlayerMultitool::SetLight()
    IL_0015:  ret
  } // end of method PlayerMultitool::ToggleLight

  .method public hidebysig instance void 
          SwitchOffLight() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_0006:  brfalse.s  IL_0015

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.0
    IL_000a:  stfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_000f:  ldarg.0
    IL_0010:  call       instance void SpaceCraft.PlayerMultitool::SetLight()
    IL_0015:  ret
  } // end of method PlayerMultitool::SwitchOffLight

  .method public hidebysig instance void 
          SetLight() cil managed
  {
    // Code size       146 (0x92)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.PlayerMultitool::canUseLight
    IL_0006:  brtrue.s   IL_0048

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class SpaceCraft.GameSettingsHandler SpaceCraft.PlayerMultitool::gameSettingsHandler
    IL_000e:  callvirt   instance class SpaceCraft.JsonableGameState SpaceCraft.GameSettingsHandler::GetCurrentGameSettings()
    IL_0013:  callvirt   instance bool SpaceCraft.JsonableGameState::GetCanAlwaysUseLight()
    IL_0018:  brtrue.s   IL_0048

    IL_001a:  ldarg.0
    IL_001b:  ldfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_0020:  brfalse.s  IL_0041

    IL_0022:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.BaseHudHandler>()
    IL_0027:  ldstr      "UI_warn_no_light_chip"
    IL_002c:  ldc.r4     2.
    IL_0031:  ldstr      ""
    IL_0036:  ldstr      ""
    IL_003b:  ldc.i4.0
    IL_003c:  callvirt   instance void SpaceCraft.BaseHudHandler::DisplayCursorText(string,
                                                                                    float32,
                                                                                    string,
                                                                                    string,
                                                                                    bool)
    IL_0041:  ldarg.0
    IL_0042:  ldc.i4.0
    IL_0043:  stfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_0048:  ldarg.0
    IL_0049:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerAudio>()
    IL_004e:  callvirt   instance void SpaceCraft.PlayerAudio::PlayChangeTool()
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class SpaceCraft.MultiToolLight SpaceCraft.PlayerMultitool::multiToolLight
    IL_0059:  ldarg.0
    IL_005a:  ldfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_005f:  ldarg.0
    IL_0060:  ldfld      int32 SpaceCraft.PlayerMultitool::lightTier
    IL_0065:  callvirt   instance void SpaceCraft.MultiToolLight::SetLightStatus(bool,
                                                                                 int32)
    IL_006a:  ldsfld     class SpaceCraft.PlayersDataManager SpaceCraft.PlayersDataManager::Instance
    IL_006f:  ldarg.0
    IL_0070:  ldfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_0075:  ldarg.0
    IL_0076:  ldfld      int32 SpaceCraft.PlayerMultitool::lightTier
    IL_007b:  callvirt   instance void SpaceCraft.PlayersDataManager::SetLightStatus(bool,
                                                                                     int32)
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class SpaceCraft.MultiToolScreen SpaceCraft.PlayerMultitool::multiToolScreen
    IL_0086:  ldarg.0
    IL_0087:  ldfld      bool SpaceCraft.PlayerMultitool::lightIsOn
    IL_008c:  callvirt   instance void SpaceCraft.MultiToolScreen::ShowLight(bool)
    IL_0091:  ret
  } // end of method PlayerMultitool::SetLight

  .method public hidebysig instance class SpaceCraft.MultiToolLight 
          GetMultiToolLight() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.MultiToolLight SpaceCraft.PlayerMultitool::multiToolLight
    IL_0006:  ret
  } // end of method PlayerMultitool::GetMultiToolLight

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState>::.ctor()
    IL_0006:  stfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.DataConfig/MultiToolState> SpaceCraft.PlayerMultitool::enabledStates
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     0.15000001
    IL_0011:  stfld      float32 SpaceCraft.PlayerMultitool::securityTime
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  stfld      int32 SpaceCraft.PlayerMultitool::lightTier
    IL_001d:  ldarg.0
    IL_001e:  call       instance void [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::.ctor()
    IL_0023:  ret
  } // end of method PlayerMultitool::.ctor

} // end of class SpaceCraft.PlayerMultitool

.class public auto ansi beforefieldinit SpaceCraft.PlayerParticles
       extends [UnityEngine.CoreModule]UnityEngine.MonoBehaviour
{
  .class auto ansi sealed nested private beforefieldinit '<SpawnDustOnGround>d__21'
         extends [mscorlib]System.Object
         implements class [mscorlib]System.Collections.Generic.IEnumerator`1<object>,
                    [mscorlib]System.Collections.IEnumerator,
                    [mscorlib]System.IDisposable
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private object '<>2__current'
    .field public class SpaceCraft.PlayerParticles '<>4__this'
    .field private class [UnityEngine.CoreModule]UnityEngine.WaitForSeconds '<wait>5__2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>1__state'
      IL_000d:  ret
    } // end of method '<SpawnDustOnGround>d__21'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.IDisposable::Dispose
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<SpawnDustOnGround>d__21'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [mscorlib]System.Collections.IEnumerator::MoveNext
      // Code size       269 (0x10d)
      .maxstack  2
      .locals init (int32 V_0,
               class SpaceCraft.PlayerParticles V_1,
               class [UnityEngine.CoreModule]UnityEngine.GameObject V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class SpaceCraft.PlayerParticles SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>4__this'
      IL_000d:  stloc.1
      IL_000e:  ldloc.0
      IL_000f:  brfalse.s  IL_001a

      IL_0011:  ldloc.0
      IL_0012:  ldc.i4.1
      IL_0013:  beq        IL_0101

      IL_0018:  ldc.i4.0
      IL_0019:  ret

      IL_001a:  ldarg.0
      IL_001b:  ldc.i4.m1
      IL_001c:  stfld      int32 SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>1__state'
      IL_0021:  ldarg.0
      IL_0022:  ldc.r4     0.5
      IL_0027:  newobj     instance void [UnityEngine.CoreModule]UnityEngine.WaitForSeconds::.ctor(float32)
      IL_002c:  stfld      class [UnityEngine.CoreModule]UnityEngine.WaitForSeconds SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<wait>5__2'
      IL_0031:  ldloc.1
      IL_0032:  ldnull
      IL_0033:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_0038:  brfalse.s  IL_003c

      IL_003a:  ldc.i4.0
      IL_003b:  ret

      IL_003c:  ldloc.1
      IL_003d:  ldfld      bool SpaceCraft.PlayerParticles::_spawnDustOnGround
      IL_0042:  brfalse    IL_00ec

      IL_0047:  ldloc.1
      IL_0048:  ldfld      class SpaceCraft.PlayerGroundRelation SpaceCraft.PlayerParticles::_playerGroundRelation
      IL_004d:  ldnull
      IL_004e:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                          class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_0053:  brfalse    IL_00ec

      IL_0058:  ldloc.1
      IL_0059:  ldfld      class SpaceCraft.PlayerGroundRelation SpaceCraft.PlayerParticles::_playerGroundRelation
      IL_005e:  callvirt   instance bool SpaceCraft.PlayerGroundRelation::GetIsOnTerrain()
      IL_0063:  brfalse    IL_00ec

      IL_0068:  ldloc.1
      IL_0069:  ldfld      class SpaceCraft.ParticlesPool SpaceCraft.PlayerParticles::_pool
      IL_006e:  brfalse.s  IL_007d

      IL_0070:  ldloc.1
      IL_0071:  ldfld      class SpaceCraft.ParticlesPool SpaceCraft.PlayerParticles::_pool
      IL_0076:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Pool.ObjectPool`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.ParticlesPool::get_Pool()
      IL_007b:  brtrue.s   IL_007f

      IL_007d:  ldc.i4.0
      IL_007e:  ret

      IL_007f:  ldloc.1
      IL_0080:  ldfld      class SpaceCraft.ParticlesPool SpaceCraft.PlayerParticles::_pool
      IL_0085:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Pool.ObjectPool`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.ParticlesPool::get_Pool()
      IL_008a:  callvirt   instance !0 class [UnityEngine.CoreModule]UnityEngine.Pool.ObjectPool`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>::Get()
      IL_008f:  stloc.2
      IL_0090:  ldloc.2
      IL_0091:  ldnull
      IL_0092:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                          class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_0097:  brfalse.s  IL_00af

      IL_0099:  ldloc.2
      IL_009a:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.GameObject::get_transform()
      IL_009f:  ldloc.1
      IL_00a0:  ldfld      class SpaceCraft.PlayerGroundRelation SpaceCraft.PlayerParticles::_playerGroundRelation
      IL_00a5:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.PlayerGroundRelation::GetGroundHit()
      IL_00aa:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.Transform::set_position(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
      IL_00af:  ldloc.1
      IL_00b0:  ldfld      bool SpaceCraft.PlayerParticles::_owner
      IL_00b5:  brfalse.s  IL_00ec

      IL_00b7:  ldloc.1
      IL_00b8:  ldfld      bool SpaceCraft.PlayerParticles::_spawnDustOnGround
      IL_00bd:  brfalse.s  IL_00d9

      IL_00bf:  ldloc.1
      IL_00c0:  ldfld      class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem SpaceCraft.PlayerParticles::dustParticlesFront
      IL_00c5:  callvirt   instance bool [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem::get_isPlaying()
      IL_00ca:  brtrue.s   IL_00d9

      IL_00cc:  ldloc.1
      IL_00cd:  ldfld      class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem SpaceCraft.PlayerParticles::dustParticlesFront
      IL_00d2:  callvirt   instance void [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem::Play()
      IL_00d7:  br.s       IL_00ec

      IL_00d9:  ldloc.1
      IL_00da:  ldfld      bool SpaceCraft.PlayerParticles::_spawnDustOnGround
      IL_00df:  brtrue.s   IL_00ec

      IL_00e1:  ldloc.1
      IL_00e2:  ldfld      class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem SpaceCraft.PlayerParticles::dustParticlesFront
      IL_00e7:  callvirt   instance void [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem::Stop()
      IL_00ec:  ldarg.0
      IL_00ed:  ldarg.0
      IL_00ee:  ldfld      class [UnityEngine.CoreModule]UnityEngine.WaitForSeconds SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<wait>5__2'
      IL_00f3:  stfld      object SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>2__current'
      IL_00f8:  ldarg.0
      IL_00f9:  ldc.i4.1
      IL_00fa:  stfld      int32 SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>1__state'
      IL_00ff:  ldc.i4.1
      IL_0100:  ret

      IL_0101:  ldarg.0
      IL_0102:  ldc.i4.m1
      IL_0103:  stfld      int32 SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>1__state'
      IL_0108:  br         IL_0031
    } // end of method '<SpawnDustOnGround>d__21'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance object  'System.Collections.Generic.IEnumerator<System.Object>.get_Current'() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      object SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>2__current'
      IL_0006:  ret
    } // end of method '<SpawnDustOnGround>d__21'::'System.Collections.Generic.IEnumerator<System.Object>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::Reset
      // Code size       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<SpawnDustOnGround>d__21'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::get_Current
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      object SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>2__current'
      IL_0006:  ret
    } // end of method '<SpawnDustOnGround>d__21'::System.Collections.IEnumerator.get_Current

    .property instance object 'System.Collections.Generic.IEnumerator<System.Object>.Current'()
    {
      .get instance object SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'System.Collections.Generic.IEnumerator<System.Object>.get_Current'()
    } // end of property '<SpawnDustOnGround>d__21'::'System.Collections.Generic.IEnumerator<System.Object>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::System.Collections.IEnumerator.get_Current()
    } // end of property '<SpawnDustOnGround>d__21'::System.Collections.IEnumerator.Current
  } // end of class '<SpawnDustOnGround>d__21'

  .field public class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem[] rainParticles
  .field public class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem dustParticles
  .field public class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem dustParticlesFront
  .field public class [UnityEngine.CoreModule]UnityEngine.GameObject jetPackParticle
  .field private class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material> _rainSharedMaterials
  .field private class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material> _rainInstanciatedMaterials
  .field private class SpaceCraft.PlayerGroundRelation _playerGroundRelation
  .field private bool _spawnDustOnGround
  .field private bool _owner
  .field private float32 _currentRainEmission
  .field private int32 _rainTestLayerMask
  .field private bool _swimming
  .field private static literal float32 _minRainEmission = float32(20.)
  .field private class SpaceCraft.ParticlesPool _pool
  .method private hidebysig instance void 
          Start() cil managed
  {
    // Code size       154 (0x9a)
    .maxstack  3
    .locals init (class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem[] V_0,
             int32 V_1,
             class [UnityEngine.CoreModule]UnityEngine.Renderer[] V_2,
             int32 V_3,
             class [UnityEngine.CoreModule]UnityEngine.Renderer V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.PlayerGroundRelation>()
    IL_0007:  stfld      class SpaceCraft.PlayerGroundRelation SpaceCraft.PlayerParticles::_playerGroundRelation
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>()
    IL_0013:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::get_IsOwner()
    IL_0018:  stfld      bool SpaceCraft.PlayerParticles::_owner
    IL_001d:  ldarg.0
    IL_001e:  ldarg.0
    IL_001f:  call       instance class [mscorlib]System.Collections.IEnumerator SpaceCraft.PlayerParticles::SpawnDustOnGround()
    IL_0024:  call       instance class [UnityEngine.CoreModule]UnityEngine.Coroutine [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::StartCoroutine(class [mscorlib]System.Collections.IEnumerator)
    IL_0029:  pop
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem[] SpaceCraft.PlayerParticles::rainParticles
    IL_0030:  stloc.0
    IL_0031:  ldc.i4.0
    IL_0032:  stloc.1
    IL_0033:  br.s       IL_0067

    IL_0035:  ldloc.0
    IL_0036:  ldloc.1
    IL_0037:  ldelem.ref
    IL_0038:  callvirt   instance !!0[] [UnityEngine.CoreModule]UnityEngine.Component::GetComponentsInChildren<class [UnityEngine.CoreModule]UnityEngine.Renderer>()
    IL_003d:  stloc.2
    IL_003e:  ldc.i4.0
    IL_003f:  stloc.3
    IL_0040:  br.s       IL_005d

    IL_0042:  ldloc.2
    IL_0043:  ldloc.3
    IL_0044:  ldelem.ref
    IL_0045:  stloc.s    V_4
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material> SpaceCraft.PlayerParticles::_rainSharedMaterials
    IL_004d:  ldloc.s    V_4
    IL_004f:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Material [UnityEngine.CoreModule]UnityEngine.Renderer::get_sharedMaterial()
    IL_0054:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material>::Add(!0)
    IL_0059:  ldloc.3
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  stloc.3
    IL_005d:  ldloc.3
    IL_005e:  ldloc.2
    IL_005f:  ldlen
    IL_0060:  conv.i4
    IL_0061:  blt.s      IL_0042

    IL_0063:  ldloc.1
    IL_0064:  ldc.i4.1
    IL_0065:  add
    IL_0066:  stloc.1
    IL_0067:  ldloc.1
    IL_0068:  ldloc.0
    IL_0069:  ldlen
    IL_006a:  conv.i4
    IL_006b:  blt.s      IL_0035

    IL_006d:  ldarg.0
    IL_006e:  ldsfld     string[] SpaceCraft.GameConfig::commonIgnoredAndWater
    IL_0073:  call       int32 [UnityEngine.CoreModule]UnityEngine.LayerMask::GetMask(string[])
    IL_0078:  not
    IL_0079:  stfld      int32 SpaceCraft.PlayerParticles::_rainTestLayerMask
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem SpaceCraft.PlayerParticles::dustParticles
    IL_0085:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_008a:  ldc.r4     8.
    IL_008f:  newobj     instance void SpaceCraft.ParticlesPool::.ctor(class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                       float32)
    IL_0094:  stfld      class SpaceCraft.ParticlesPool SpaceCraft.PlayerParticles::_pool
    IL_0099:  ret
  } // end of method PlayerParticles::Start

  .method public hidebysig instance void 
          SetRainParticlesEmission(float32 emissionNumber) cil managed
  {
    // Code size       70 (0x46)
    .maxstack  3
    .locals init (class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem[] V_0,
             int32 V_1,
             valuetype [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem/EmissionModule V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem[] SpaceCraft.PlayerParticles::rainParticles
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br.s       IL_0038

    IL_000b:  ldloc.0
    IL_000c:  ldloc.1
    IL_000d:  ldelem.ref
    IL_000e:  dup
    IL_000f:  callvirt   instance valuetype [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem/EmissionModule [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem::get_emission()
    IL_0014:  stloc.2
    IL_0015:  ldloca.s   V_2
    IL_0017:  ldarg.1
    IL_0018:  call       valuetype [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem/MinMaxCurve [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem/MinMaxCurve::op_Implicit(float32)
    IL_001d:  call       instance void [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem/EmissionModule::set_rateOverTime(valuetype [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem/MinMaxCurve)
    IL_0022:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_0027:  ldarg.1
    IL_0028:  ldc.r4     20.
    IL_002d:  cgt
    IL_002f:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.GameObject::SetActive(bool)
    IL_0034:  ldloc.1
    IL_0035:  ldc.i4.1
    IL_0036:  add
    IL_0037:  stloc.1
    IL_0038:  ldloc.1
    IL_0039:  ldloc.0
    IL_003a:  ldlen
    IL_003b:  conv.i4
    IL_003c:  blt.s      IL_000b

    IL_003e:  ldarg.0
    IL_003f:  ldarg.1
    IL_0040:  stfld      float32 SpaceCraft.PlayerParticles::_currentRainEmission
    IL_0045:  ret
  } // end of method PlayerParticles::SetRainParticlesEmission

  .method public hidebysig instance void 
          SetRainColor(valuetype [UnityEngine.CoreModule]UnityEngine.Color color) cil managed
  {
    // Code size       193 (0xc1)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.Material> V_1,
             class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem[] V_2,
             int32 V_3,
             class [UnityEngine.CoreModule]UnityEngine.Renderer[] V_4,
             int32 V_5,
             class [UnityEngine.CoreModule]UnityEngine.Renderer V_6,
             class [UnityEngine.CoreModule]UnityEngine.Material V_7)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material> SpaceCraft.PlayerParticles::_rainInstanciatedMaterials
    IL_0008:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material>::GetEnumerator()
    IL_000d:  stloc.1
    .try
    {
      IL_000e:  br.s       IL_001c

      IL_0010:  ldloca.s   V_1
      IL_0012:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.Material>::get_Current()
      IL_0017:  call       void [UnityEngine.CoreModule]UnityEngine.Object::Destroy(class [UnityEngine.CoreModule]UnityEngine.Object)
      IL_001c:  ldloca.s   V_1
      IL_001e:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.Material>::MoveNext()
      IL_0023:  brtrue.s   IL_0010

      IL_0025:  leave.s    IL_0035

    }  // end .try
    finally
    {
      IL_0027:  ldloca.s   V_1
      IL_0029:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [UnityEngine.CoreModule]UnityEngine.Material>
      IL_002f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0034:  endfinally
    }  // end handler
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material> SpaceCraft.PlayerParticles::_rainInstanciatedMaterials
    IL_003b:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material>::Clear()
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem[] SpaceCraft.PlayerParticles::rainParticles
    IL_0046:  stloc.2
    IL_0047:  ldc.i4.0
    IL_0048:  stloc.3
    IL_0049:  br.s       IL_00ba

    IL_004b:  ldloc.2
    IL_004c:  ldloc.3
    IL_004d:  ldelem.ref
    IL_004e:  callvirt   instance !!0[] [UnityEngine.CoreModule]UnityEngine.Component::GetComponentsInChildren<class [UnityEngine.CoreModule]UnityEngine.Renderer>()
    IL_0053:  stloc.s    V_4
    IL_0055:  ldc.i4.0
    IL_0056:  stloc.s    V_5
    IL_0058:  br.s       IL_00ae

    IL_005a:  ldloc.s    V_4
    IL_005c:  ldloc.s    V_5
    IL_005e:  ldelem.ref
    IL_005f:  stloc.s    V_6
    IL_0061:  ldloc.s    V_6
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material> SpaceCraft.PlayerParticles::_rainSharedMaterials
    IL_0069:  ldloc.0
    IL_006a:  dup
    IL_006b:  ldc.i4.1
    IL_006c:  add
    IL_006d:  stloc.0
    IL_006e:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material>::get_Item(int32)
    IL_0073:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.Renderer::set_sharedMaterial(class [UnityEngine.CoreModule]UnityEngine.Material)
    IL_0078:  ldarg.1
    IL_0079:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Color::a
    IL_007e:  ldc.r4     0.0
    IL_0083:  ble.un.s   IL_00a8

    IL_0085:  ldloc.s    V_6
    IL_0087:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Material [UnityEngine.CoreModule]UnityEngine.Renderer::get_material()
    IL_008c:  stloc.s    V_7
    IL_008e:  ldloc.s    V_7
    IL_0090:  ldstr      "_TintColor"
    IL_0095:  ldarg.1
    IL_0096:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.Material::SetColor(string,
                                                                                              valuetype [UnityEngine.CoreModule]UnityEngine.Color)
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material> SpaceCraft.PlayerParticles::_rainInstanciatedMaterials
    IL_00a1:  ldloc.s    V_7
    IL_00a3:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material>::Add(!0)
    IL_00a8:  ldloc.s    V_5
    IL_00aa:  ldc.i4.1
    IL_00ab:  add
    IL_00ac:  stloc.s    V_5
    IL_00ae:  ldloc.s    V_5
    IL_00b0:  ldloc.s    V_4
    IL_00b2:  ldlen
    IL_00b3:  conv.i4
    IL_00b4:  blt.s      IL_005a

    IL_00b6:  ldloc.3
    IL_00b7:  ldc.i4.1
    IL_00b8:  add
    IL_00b9:  stloc.3
    IL_00ba:  ldloc.3
    IL_00bb:  ldloc.2
    IL_00bc:  ldlen
    IL_00bd:  conv.i4
    IL_00be:  blt.s      IL_004b

    IL_00c0:  ret
  } // end of method PlayerParticles::SetRainColor

  .method public hidebysig instance void 
          SetGroundDustStatus(bool spawnDust) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.PlayerParticles::_spawnDustOnGround
    IL_0007:  ret
  } // end of method PlayerParticles::SetGroundDustStatus

  .method public hidebysig instance void 
          SetJetpackStatus(bool active) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.PlayerParticles::jetPackParticle
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.GameObject::SetActive(bool)
    IL_000c:  ret
  } // end of method PlayerParticles::SetJetpackStatus

  .method public hidebysig instance void 
          SetSwimming(bool swimming) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.PlayerParticles::_swimming
    IL_0007:  ret
  } // end of method PlayerParticles::SetSwimming

  .method private hidebysig instance void 
          Update() cil managed
  {
    // Code size       140 (0x8c)
    .maxstack  5
    .locals init (valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_0,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_1,
             class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem[] V_2,
             int32 V_3,
             class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 SpaceCraft.PlayerParticles::_currentRainEmission
    IL_0006:  ldc.r4     20.
    IL_000b:  ble.un.s   IL_008b

    IL_000d:  ldarg.0
    IL_000e:  call       instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_0013:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_position()
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_001f:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_forward()
    IL_0024:  stloc.1
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class [UnityEngine.ParticleSystemModule]UnityEngine.ParticleSystem[] SpaceCraft.PlayerParticles::rainParticles
    IL_002b:  stloc.2
    IL_002c:  ldc.i4.0
    IL_002d:  stloc.3
    IL_002e:  br.s       IL_0085

    IL_0030:  ldloc.2
    IL_0031:  ldloc.3
    IL_0032:  ldelem.ref
    IL_0033:  stloc.s    V_4
    IL_0035:  ldloc.s    V_4
    IL_0037:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_003c:  ldarg.0
    IL_003d:  ldfld      bool SpaceCraft.PlayerParticles::_swimming
    IL_0042:  brtrue.s   IL_007b

    IL_0044:  ldloc.0
    IL_0045:  ldloc.1
    IL_0046:  ldloc.s    V_4
    IL_0048:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_004d:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_localPosition()
    IL_0052:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector3::z
    IL_0057:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        float32)
    IL_005c:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Addition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0061:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_up()
    IL_0066:  ldc.r4     100.
    IL_006b:  ldarg.0
    IL_006c:  ldfld      int32 SpaceCraft.PlayerParticles::_rainTestLayerMask
    IL_0071:  call       bool [UnityEngine.PhysicsModule]UnityEngine.Physics::Raycast(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                      float32,
                                                                                      int32)
    IL_0076:  ldc.i4.0
    IL_0077:  ceq
    IL_0079:  br.s       IL_007c

    IL_007b:  ldc.i4.0
    IL_007c:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.GameObject::SetActive(bool)
    IL_0081:  ldloc.3
    IL_0082:  ldc.i4.1
    IL_0083:  add
    IL_0084:  stloc.3
    IL_0085:  ldloc.3
    IL_0086:  ldloc.2
    IL_0087:  ldlen
    IL_0088:  conv.i4
    IL_0089:  blt.s      IL_0030

    IL_008b:  ret
  } // end of method PlayerParticles::Update

  .method private hidebysig instance class [mscorlib]System.Collections.IEnumerator 
          SpawnDustOnGround() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 33 53 70 61 63 65 43 72 61 66 74 2E 50 6C   // ..3SpaceCraft.Pl
                                                                                                                                          61 79 65 72 50 61 72 74 69 63 6C 65 73 2B 3C 53   // ayerParticles+<S
                                                                                                                                          70 61 77 6E 44 75 73 74 4F 6E 47 72 6F 75 6E 64   // pawnDustOnGround
                                                                                                                                          3E 64 5F 5F 32 31 00 00 )                         // >d__21..
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::.ctor(int32)
    IL_0006:  dup
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.PlayerParticles SpaceCraft.PlayerParticles/'<SpawnDustOnGround>d__21'::'<>4__this'
    IL_000d:  ret
  } // end of method PlayerParticles::SpawnDustOnGround

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material>::.ctor()
    IL_0006:  stfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material> SpaceCraft.PlayerParticles::_rainSharedMaterials
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material>::.ctor()
    IL_0011:  stfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine.CoreModule]UnityEngine.Material> SpaceCraft.PlayerParticles::_rainInstanciatedMaterials
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::.ctor()
    IL_001c:  ret
  } // end of method PlayerParticles::.ctor

} // end of class SpaceCraft.PlayerParticles
