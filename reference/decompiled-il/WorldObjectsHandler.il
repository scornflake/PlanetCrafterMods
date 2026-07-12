.class public auto ansi beforefieldinit SpaceCraft.WorldObjectsHandler
       extends [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass108_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.WorldObjectsHandler '<>4__this'
    .field public int32[] worldObjectsIds
    .field public class [mscorlib]System.Action`1<bool> callback
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass108_0'::.ctor

    .method assembly hidebysig instance void 
            '<GetGeneticsDetails>b__0'(bool success,
                                       int16[] types,
                                       int32[] values) cil managed
    {
      // Code size       156 (0x9c)
      .maxstack  6
      .locals init (int32 V_0,
               class SpaceCraft.WorldObject V_1,
               valuetype SpaceCraft.DataConfig/GeneticTraitType V_2,
               uint8[] V_3,
               valuetype [UnityEngine.CoreModule]UnityEngine.Color32 V_4)
      IL_0000:  ldarg.1
      IL_0001:  brfalse    IL_008a

      IL_0006:  ldc.i4.0
      IL_0007:  stloc.0
      IL_0008:  br.s       IL_007f

      IL_000a:  ldarg.0
      IL_000b:  ldfld      class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::'<>4__this'
      IL_0010:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
      IL_0015:  ldarg.0
      IL_0016:  ldfld      int32[] SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::worldObjectsIds
      IL_001b:  ldloc.0
      IL_001c:  ldelem.i4
      IL_001d:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::get_Item(!0)
      IL_0022:  stloc.1
      IL_0023:  ldarg.2
      IL_0024:  ldloc.0
      IL_0025:  ldelem.i2
      IL_0026:  stloc.2
      IL_0027:  ldloc.1
      IL_0028:  ldloc.2
      IL_0029:  callvirt   instance void SpaceCraft.WorldObject::SetGeneticTraitType(valuetype SpaceCraft.DataConfig/GeneticTraitType)
      IL_002e:  ldloca.s   V_2
      IL_0030:  constrained. SpaceCraft.DataConfig/GeneticTraitType
      IL_0036:  callvirt   instance string [mscorlib]System.Object::ToString()
      IL_003b:  ldstr      "Color"
      IL_0040:  callvirt   instance bool [mscorlib]System.String::Contains(string)
      IL_0045:  brfalse.s  IL_0072

      IL_0047:  ldarg.3
      IL_0048:  ldloc.0
      IL_0049:  ldelem.i4
      IL_004a:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
      IL_004f:  stloc.3
      IL_0050:  ldloca.s   V_4
      IL_0052:  ldloc.3
      IL_0053:  ldc.i4.0
      IL_0054:  ldelem.u1
      IL_0055:  ldloc.3
      IL_0056:  ldc.i4.1
      IL_0057:  ldelem.u1
      IL_0058:  ldloc.3
      IL_0059:  ldc.i4.2
      IL_005a:  ldelem.u1
      IL_005b:  ldloc.3
      IL_005c:  ldc.i4.3
      IL_005d:  ldelem.u1
      IL_005e:  call       instance void [UnityEngine.CoreModule]UnityEngine.Color32::.ctor(uint8,
                                                                                            uint8,
                                                                                            uint8,
                                                                                            uint8)
      IL_0063:  ldloc.1
      IL_0064:  ldloc.s    V_4
      IL_0066:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Color [UnityEngine.CoreModule]UnityEngine.Color32::op_Implicit(valuetype [UnityEngine.CoreModule]UnityEngine.Color32)
      IL_006b:  callvirt   instance void SpaceCraft.WorldObject::SetColor(valuetype [UnityEngine.CoreModule]UnityEngine.Color)
      IL_0070:  br.s       IL_007b

      IL_0072:  ldloc.1
      IL_0073:  ldarg.3
      IL_0074:  ldloc.0
      IL_0075:  ldelem.i4
      IL_0076:  callvirt   instance void SpaceCraft.WorldObject::SetGeneticTraitValue(int32)
      IL_007b:  ldloc.0
      IL_007c:  ldc.i4.1
      IL_007d:  add
      IL_007e:  stloc.0
      IL_007f:  ldloc.0
      IL_0080:  ldarg.0
      IL_0081:  ldfld      int32[] SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::worldObjectsIds
      IL_0086:  ldlen
      IL_0087:  conv.i4
      IL_0088:  blt.s      IL_000a

      IL_008a:  ldarg.0
      IL_008b:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::callback
      IL_0090:  dup
      IL_0091:  brtrue.s   IL_0095

      IL_0093:  pop
      IL_0094:  ret

      IL_0095:  ldarg.1
      IL_0096:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_009b:  ret
    } // end of method '<>c__DisplayClass108_0'::'<GetGeneticsDetails>b__0'

  } // end of class '<>c__DisplayClass108_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass77_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [mscorlib]System.Action`1<bool> callback
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass77_0'::.ctor

    .method assembly hidebysig instance void 
            '<DestroyWorldObjectFromScene>b__0'(bool success) cil managed
    {
      // Code size       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass77_0'::callback
      IL_0006:  dup
      IL_0007:  brtrue.s   IL_000b

      IL_0009:  pop
      IL_000a:  ret

      IL_000b:  ldarg.1
      IL_000c:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass77_0'::'<DestroyWorldObjectFromScene>b__0'

  } // end of class '<>c__DisplayClass77_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass90_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.WorldObject worldObject
    .field public class [mscorlib]System.Action`1<class SpaceCraft.Inventory> '<>9__0'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass90_0'::.ctor

    .method assembly hidebysig instance void 
            '<InstantiateWorldObject>b__0'(class SpaceCraft.Inventory newInventory) cil managed
    {
      // Code size       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
      IL_0006:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::GetSecondaryInventoriesId()
      IL_000b:  ldarg.1
      IL_000c:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
      IL_0011:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass90_0'::'<InstantiateWorldObject>b__0'

  } // end of class '<>c__DisplayClass90_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass90_1'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.InventoryAssociated assoInventory
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass90_1'::.ctor

    .method assembly hidebysig instance void 
            '<InstantiateWorldObject>b__1'(class SpaceCraft.Inventory inventory) cil managed
    {
      // Code size       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class SpaceCraft.InventoryAssociated SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1'::assoInventory
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void SpaceCraft.InventoryAssociated::SetInventory(class SpaceCraft.Inventory)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass90_1'::'<InstantiateWorldObject>b__1'

  } // end of class '<>c__DisplayClass90_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass93_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass93_0'::.ctor

    .method assembly hidebysig instance void 
            '<CreateAndInstantiateWorldObject>b__0'(class [UnityEngine.CoreModule]UnityEngine.GameObject go) cil managed
    {
      // Code size       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass93_0'::result
      IL_0006:  dup
      IL_0007:  brtrue.s   IL_000b

      IL_0009:  pop
      IL_000a:  ret

      IL_000b:  ldarg.1
      IL_000c:  callvirt   instance void class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>::Invoke(!0)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass93_0'::'<CreateAndInstantiateWorldObject>b__0'

  } // end of class '<>c__DisplayClass93_0'

  .field public static class SpaceCraft.WorldObjectsHandler Instance
  .field public class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> onConstructibleInstantiated
  .field public class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> onConstructibleDestroyed
  .field public class [mscorlib]System.Action`1<class SpaceCraft.GroupData> onNewWorldObjectGroupAdded
  .field private class [UnityEngine.CoreModule]UnityEngine.GameObject _groupNetworkContainer
  .custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = ( 01 00 00 00 ) 
  .field private class [UnityEngine.CoreModule]UnityEngine.GameObject _groupNetworkContainerStatic
  .custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = ( 01 00 00 00 ) 
  .field private class [UnityEngine.CoreModule]UnityEngine.GameObject _groupNetworkContainerWithInventory
  .custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = ( 01 00 00 00 ) 
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> _allWorldObjects
  .field private class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> _constructedWorldObjects
  .field private class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> _itemsPickablesWorldObjects
  .field private float32 _stateConstructedObjectsIndex
  .field private bool _hasLoadedData
  .field private bool _hasInitiatedAllObjects
  .field private int32 _currentPlanetHash
  .field private class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> _instantiateCallback
  .field private class [mscorlib]System.Action`1<bool> _destroyWorldObjectFromSceneCallback
  .field private class [mscorlib]System.Action`1<bool> _hasObjectAtPositionCallback
  .field private class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`3<bool,int16[],int32[]>> _callbackUpdateTraits
  .field private class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>> _getGameObjectCallbackQueue
  .field private class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> _allWorldObjectsGroups
  .field private class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> _constructedWorldObjectsGroups
  .field private class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> _constructedPanelTypes
  .field private int32 _totalCraft
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32> _totalCraftPerClient
  .field private class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> OnWorldObjectFromSceneDestroyed
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData> _energyGroupData
  .field private class [mscorlib]System.Action`1<class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>> _energyGroupDataCallback
  .method private hidebysig instance void 
          Awake() cil managed
  {
    // Code size       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::.ctor()
    IL_0006:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::.ctor()
    IL_0011:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::.ctor()
    IL_001c:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0027:  ldarg.0
    IL_0028:  ldftn      instance void SpaceCraft.WorldObjectsHandler::OnNetworkListChanged(valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkListEvent`1<valuetype SpaceCraft.Group/GroupCountData>)
    IL_002e:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1/OnListChangedDelegate<valuetype SpaceCraft.Group/GroupCountData>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0033:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::add_OnListChanged(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1/OnListChangedDelegate<!0>)
    IL_0038:  ret
  } // end of method WorldObjectsHandler::Awake

  .method public hidebysig virtual instance void 
          OnNetworkSpawn() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0006:  ldarg.0
    IL_0007:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsClient()
    IL_000c:  brfalse.s  IL_0015

    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.1
    IL_0010:  stfld      bool SpaceCraft.WorldObjectsHandler::_hasLoadedData
    IL_0015:  ret
  } // end of method WorldObjectsHandler::OnNetworkSpawn

  .method public hidebysig virtual instance void 
          OnDestroy() cil managed
  {
    // Code size       49 (0x31)
    .maxstack  8
    IL_0000:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0005:  ldarg.0
    IL_0006:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_000b:  brfalse.s  IL_002a

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0013:  ldarg.0
    IL_0014:  ldftn      instance void SpaceCraft.WorldObjectsHandler::OnNetworkListChanged(valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkListEvent`1<valuetype SpaceCraft.Group/GroupCountData>)
    IL_001a:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1/OnListChangedDelegate<valuetype SpaceCraft.Group/GroupCountData>::.ctor(object,
                                                                                                                                                                        native int)
    IL_001f:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::remove_OnListChanged(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1/OnListChangedDelegate<!0>)
    IL_0024:  ldnull
    IL_0025:  stsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_002a:  ldarg.0
    IL_002b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::OnDestroy()
    IL_0030:  ret
  } // end of method WorldObjectsHandler::OnDestroy

  .method public hidebysig instance void 
          SetAllWorldObjects(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> allWorldObjects) cil managed
  {
    // Code size       104 (0x68)
    .maxstack  3
    .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_0,
             class SpaceCraft.WorldObject V_1)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0006:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_constructedWorldObjects
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0011:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_itemsPickablesWorldObjects
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_001c:  stloc.0
    .try
    {
      IL_001d:  br.s       IL_0047

      IL_001f:  ldloca.s   V_0
      IL_0021:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_0026:  stloc.1
      IL_0027:  ldarg.0
      IL_0028:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
      IL_002d:  ldloc.1
      IL_002e:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
      IL_0033:  ldloc.1
      IL_0034:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::set_Item(!0,
                                                                                                                                               !1)
      IL_0039:  ldarg.0
      IL_003a:  ldloc.1
      IL_003b:  call       instance void SpaceCraft.WorldObjectsHandler::AddToSpecificLists(class SpaceCraft.WorldObject)
      IL_0040:  ldarg.0
      IL_0041:  ldloc.1
      IL_0042:  call       instance void SpaceCraft.WorldObjectsHandler::ChangeStateIndex(class SpaceCraft.WorldObject)
      IL_0047:  ldloca.s   V_0
      IL_0049:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_004e:  brtrue.s   IL_001f

      IL_0050:  leave.s    IL_0060

    }  // end .try
    finally
    {
      IL_0052:  ldloca.s   V_0
      IL_0054:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_005a:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_005f:  endfinally
    }  // end handler
    IL_0060:  ldarg.0
    IL_0061:  ldc.i4.1
    IL_0062:  stfld      bool SpaceCraft.WorldObjectsHandler::_hasLoadedData
    IL_0067:  ret
  } // end of method WorldObjectsHandler::SetAllWorldObjects

  .method public hidebysig instance void 
          PlaceAllWorldObjects(int32 currentPlanetHash) cil managed
  {
    // Code size       90 (0x5a)
    .maxstack  4
    .locals init (class [mscorlib]System.Collections.Generic.List`1<int32> V_0,
             int32 V_1,
             class SpaceCraft.WorldObject V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0006:  callvirt   instance class [mscorlib]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::get_Keys()
    IL_000b:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      int32 SpaceCraft.WorldObjectsHandler::_currentPlanetHash
    IL_0018:  ldc.i4.0
    IL_0019:  stloc.1
    IL_001a:  br.s       IL_0049

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0029:  ldloca.s   V_2
    IL_002b:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_0030:  brfalse.s  IL_0045

    IL_0032:  ldloc.2
    IL_0033:  callvirt   instance bool SpaceCraft.WorldObject::GetIsPlaced()
    IL_0038:  brfalse.s  IL_0045

    IL_003a:  ldarg.0
    IL_003b:  ldloc.2
    IL_003c:  ldc.i4.1
    IL_003d:  ldc.i4.0
    IL_003e:  conv.i8
    IL_003f:  call       instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObjectsHandler::InstantiateWorldObject(class SpaceCraft.WorldObject,
                                                                                                                                              bool,
                                                                                                                                              uint64)
    IL_0044:  pop
    IL_0045:  ldloc.1
    IL_0046:  ldc.i4.1
    IL_0047:  add
    IL_0048:  stloc.1
    IL_0049:  ldloc.1
    IL_004a:  ldloc.0
    IL_004b:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0050:  blt.s      IL_001c

    IL_0052:  ldarg.0
    IL_0053:  ldc.i4.1
    IL_0054:  stfld      bool SpaceCraft.WorldObjectsHandler::_hasInitiatedAllObjects
    IL_0059:  ret
  } // end of method WorldObjectsHandler::PlaceAllWorldObjects

  .method public hidebysig instance void 
          UpdateAllWorldObjectsActivation(int32 currentPlanetHash) cil managed
  {
    // Code size       103 (0x67)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.List`1<int32> V_0,
             int32 V_1,
             class SpaceCraft.WorldObject V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0006:  callvirt   instance class [mscorlib]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::get_Keys()
    IL_000b:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      int32 SpaceCraft.WorldObjectsHandler::_currentPlanetHash
    IL_0018:  ldc.i4.0
    IL_0019:  stloc.1
    IL_001a:  br.s       IL_005d

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0029:  ldloca.s   V_2
    IL_002b:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_0030:  brfalse.s  IL_0059

    IL_0032:  ldloc.2
    IL_0033:  callvirt   instance int32 SpaceCraft.WorldObject::GetPlanetHash()
    IL_0038:  stloc.3
    IL_0039:  ldloc.3
    IL_003a:  brfalse.s  IL_0059

    IL_003c:  ldloc.2
    IL_003d:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_0042:  ldnull
    IL_0043:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0048:  brfalse.s  IL_0059

    IL_004a:  ldloc.2
    IL_004b:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_0050:  ldloc.3
    IL_0051:  ldarg.1
    IL_0052:  ceq
    IL_0054:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.GameObject::SetActive(bool)
    IL_0059:  ldloc.1
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  stloc.1
    IL_005d:  ldloc.1
    IL_005e:  ldloc.0
    IL_005f:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0064:  blt.s      IL_001c

    IL_0066:  ret
  } // end of method WorldObjectsHandler::UpdateAllWorldObjectsActivation

  .method public hidebysig instance class SpaceCraft.WorldObject 
          CreateNewWorldObject(class SpaceCraft.Group group,
                               [opt] int32 worldObjectId,
                               [opt] class [UnityEngine.CoreModule]UnityEngine.GameObject gameObject,
                               [opt] bool save) cil managed
  {
    .param [2] = int32(0x00000000)
    .param [3] = nullref
    .param [4] = bool(true)
    // Code size       98 (0x62)
    .maxstack  3
    .locals init (class SpaceCraft.WorldObject V_0,
             class SpaceCraft.GeneticTraitData V_1)
    IL_0000:  ldarg.2
    IL_0001:  brfalse.s  IL_0006

    IL_0003:  ldarg.2
    IL_0004:  br.s       IL_000b

    IL_0006:  call       int32 SpaceCraft.WorldObjectsIdHandler::GetNewWorldObjectIdForDb()
    IL_000b:  ldarg.1
    IL_000c:  newobj     instance void SpaceCraft.WorldObject::.ctor(int32,
                                                                     class SpaceCraft.Group)
    IL_0011:  stloc.0
    IL_0012:  ldarg.2
    IL_0013:  brtrue.s   IL_0047

    IL_0015:  ldarg.1
    IL_0016:  ldsfld     class SpaceCraft.GeneticTraitHandler SpaceCraft.GeneticTraitHandler::Instance
    IL_001b:  callvirt   instance class SpaceCraft.Group SpaceCraft.GeneticTraitHandler::GetGroupOfGeneticTrait()
    IL_0020:  bne.un.s   IL_0047

    IL_0022:  ldsfld     class SpaceCraft.GeneticTraitHandler SpaceCraft.GeneticTraitHandler::Instance
    IL_0027:  callvirt   instance class SpaceCraft.GeneticTraitData SpaceCraft.GeneticTraitHandler::GetRandomGeneticTraitWithRarity()
    IL_002c:  stloc.1
    IL_002d:  ldloc.1
    IL_002e:  ldnull
    IL_002f:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0034:  brfalse.s  IL_0047

    IL_0036:  ldsfld     class SpaceCraft.GeneticTraitHandler SpaceCraft.GeneticTraitHandler::Instance
    IL_003b:  ldloc.0
    IL_003c:  ldloc.1
    IL_003d:  callvirt   instance valuetype SpaceCraft.GeneticTraitData/SerializedData SpaceCraft.GeneticTraitData::AsSerializedData()
    IL_0042:  callvirt   instance void SpaceCraft.GeneticTraitHandler::SetWorldObjectValuesForAGivenGeneticTrait(class SpaceCraft.WorldObject,
                                                                                                                 valuetype SpaceCraft.GeneticTraitData/SerializedData)
    IL_0047:  ldloc.0
    IL_0048:  ldarg.3
    IL_0049:  callvirt   instance void SpaceCraft.WorldObject::SetGameObject(class [UnityEngine.CoreModule]UnityEngine.GameObject)
    IL_004e:  ldloc.0
    IL_004f:  ldarg.s    save
    IL_0051:  ldc.i4.0
    IL_0052:  ceq
    IL_0054:  callvirt   instance void SpaceCraft.WorldObject::SetDontSaveMe(bool)
    IL_0059:  ldarg.0
    IL_005a:  ldloc.0
    IL_005b:  call       instance void SpaceCraft.WorldObjectsHandler::StoreNewWorldObject(class SpaceCraft.WorldObject)
    IL_0060:  ldloc.0
    IL_0061:  ret
  } // end of method WorldObjectsHandler::CreateNewWorldObject

  .method private hidebysig instance void 
          StoreNewWorldObject(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::set_Item(!0,
                                                                                                                                             !1)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  call       instance void SpaceCraft.WorldObjectsHandler::AddToSpecificLists(class SpaceCraft.WorldObject)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  call       instance void SpaceCraft.WorldObjectsHandler::ChangeStateIndex(class SpaceCraft.WorldObject)
    IL_0020:  ret
  } // end of method WorldObjectsHandler::StoreNewWorldObject

  .method public hidebysig instance class SpaceCraft.WorldObject 
          GetWorldObjectViaId(int32 id) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  3
    .locals init (class SpaceCraft.WorldObject V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_000e:  brfalse.s  IL_0012

    IL_0010:  ldloc.0
    IL_0011:  ret

    IL_0012:  ldnull
    IL_0013:  ret
  } // end of method WorldObjectsHandler::GetWorldObjectViaId

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> 
          GetAllWorldObjects() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0006:  ret
  } // end of method WorldObjectsHandler::GetAllWorldObjects

  .method public hidebysig instance class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> 
          GetConstructedWorldObjects() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_constructedWorldObjects
    IL_0006:  ret
  } // end of method WorldObjectsHandler::GetConstructedWorldObjects

  .method public hidebysig instance class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> 
          GetPickablesByDronesWorldObjects() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_itemsPickablesWorldObjects
    IL_0006:  ret
  } // end of method WorldObjectsHandler::GetPickablesByDronesWorldObjects

  .method public hidebysig instance class SpaceCraft.WorldObject 
          GetFirstWorldObjectOfGroup(class SpaceCraft.Group group,
                                     [opt] int32 planetHash) cil managed
  {
    .param [2] = int32(0x00000000)
    // Code size       94 (0x5e)
    .maxstack  2
    .locals init (valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject> V_0,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject> V_1,
             class SpaceCraft.WorldObject V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0041

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldloca.s   V_1
      IL_0018:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_001d:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_0022:  ldarg.1
      IL_0023:  bne.un.s   IL_0041

      IL_0025:  ldarg.2
      IL_0026:  brfalse.s  IL_0037

      IL_0028:  ldloca.s   V_1
      IL_002a:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_002f:  callvirt   instance int32 SpaceCraft.WorldObject::GetPlanetHash()
      IL_0034:  ldarg.2
      IL_0035:  bne.un.s   IL_0041

      IL_0037:  ldloca.s   V_1
      IL_0039:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_003e:  stloc.2
      IL_003f:  leave.s    IL_005c

      IL_0041:  ldloca.s   V_0
      IL_0043:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>::MoveNext()
      IL_0048:  brtrue.s   IL_000e

      IL_004a:  leave.s    IL_005a

    }  // end .try
    finally
    {
      IL_004c:  ldloca.s   V_0
      IL_004e:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>
      IL_0054:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0059:  endfinally
    }  // end handler
    IL_005a:  ldnull
    IL_005b:  ret

    IL_005c:  ldloc.2
    IL_005d:  ret
  } // end of method WorldObjectsHandler::GetFirstWorldObjectOfGroup

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> 
          GetAllWorldObjectOfGroup(class SpaceCraft.Group group,
                                   [opt] int32 planetHash) cil managed
  {
    .param [2] = int32(0x00000000)
    // Code size       101 (0x65)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_0,
             valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject> V_1,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject> V_2)
    IL_0000:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_000c:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_004a

      IL_0014:  ldloca.s   V_1
      IL_0016:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>::get_Current()
      IL_001b:  stloc.2
      IL_001c:  ldloca.s   V_2
      IL_001e:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_0023:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_0028:  ldarg.1
      IL_0029:  bne.un.s   IL_004a

      IL_002b:  ldarg.2
      IL_002c:  brfalse.s  IL_003d

      IL_002e:  ldloca.s   V_2
      IL_0030:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_0035:  callvirt   instance int32 SpaceCraft.WorldObject::GetPlanetHash()
      IL_003a:  ldarg.2
      IL_003b:  bne.un.s   IL_004a

      IL_003d:  ldloc.0
      IL_003e:  ldloca.s   V_2
      IL_0040:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_0045:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
      IL_004a:  ldloca.s   V_1
      IL_004c:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>::MoveNext()
      IL_0051:  brtrue.s   IL_0014

      IL_0053:  leave.s    IL_0063

    }  // end .try
    finally
    {
      IL_0055:  ldloca.s   V_1
      IL_0057:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>
      IL_005d:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0062:  endfinally
    }  // end handler
    IL_0063:  ldloc.0
    IL_0064:  ret
  } // end of method WorldObjectsHandler::GetAllWorldObjectOfGroup

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> 
          GetWorldObjectsToSave() cil managed
  {
    // Code size       82 (0x52)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_0,
             valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject> V_1,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject> V_2)
    IL_0000:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_000c:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_0037

      IL_0014:  ldloca.s   V_1
      IL_0016:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>::get_Current()
      IL_001b:  stloc.2
      IL_001c:  ldloca.s   V_2
      IL_001e:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_0023:  callvirt   instance bool SpaceCraft.WorldObject::GetDontSaveMe()
      IL_0028:  brtrue.s   IL_0037

      IL_002a:  ldloc.0
      IL_002b:  ldloca.s   V_2
      IL_002d:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_0032:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
      IL_0037:  ldloca.s   V_1
      IL_0039:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>::MoveNext()
      IL_003e:  brtrue.s   IL_0014

      IL_0040:  leave.s    IL_0050

    }  // end .try
    finally
    {
      IL_0042:  ldloca.s   V_1
      IL_0044:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>
      IL_004a:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_004f:  endfinally
    }  // end handler
    IL_0050:  ldloc.0
    IL_0051:  ret
  } // end of method WorldObjectsHandler::GetWorldObjectsToSave

  .method public hidebysig instance bool 
          GetHasLoadedData() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.WorldObjectsHandler::_hasLoadedData
    IL_0006:  brfalse.s  IL_0011

    IL_0008:  call       class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.GroupsHandler::GetAllGroups()
    IL_000d:  ldnull
    IL_000e:  cgt.un
    IL_0010:  ret

    IL_0011:  ldc.i4.0
    IL_0012:  ret
  } // end of method WorldObjectsHandler::GetHasLoadedData

  .method public hidebysig instance bool 
          GetHasInitiatedAllObjects() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.WorldObjectsHandler::_hasInitiatedAllObjects
    IL_0006:  ret
  } // end of method WorldObjectsHandler::GetHasInitiatedAllObjects

  .method public hidebysig instance class SpaceCraft.WorldObject 
          GetWorldObjectAtPosition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position) cil managed
  {
    // Code size       96 (0x60)
    .maxstack  2
    .locals init (valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject> V_0,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject> V_1,
             class SpaceCraft.WorldObject V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0043

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldloca.s   V_1
      IL_0018:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_001d:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::GetPosition()
      IL_0022:  call       valuetype [Unity.Mathematics]Unity.Mathematics.float3 [Unity.Mathematics]Unity.Mathematics.float3::op_Implicit(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
      IL_0027:  ldarg.1
      IL_0028:  call       valuetype [Unity.Mathematics]Unity.Mathematics.float3 [Unity.Mathematics]Unity.Mathematics.float3::op_Implicit(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
      IL_002d:  call       float32 [Unity.Mathematics]Unity.Mathematics.math::distancesq(valuetype [Unity.Mathematics]Unity.Mathematics.float3,
                                                                                         valuetype [Unity.Mathematics]Unity.Mathematics.float3)
      IL_0032:  ldc.r4     1.1920929e-07
      IL_0037:  bge.un.s   IL_0043

      IL_0039:  ldloca.s   V_1
      IL_003b:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.WorldObject>::get_Value()
      IL_0040:  stloc.2
      IL_0041:  leave.s    IL_005e

      IL_0043:  ldloca.s   V_0
      IL_0045:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>::MoveNext()
      IL_004a:  brtrue.s   IL_000e

      IL_004c:  leave.s    IL_005c

    }  // end .try
    finally
    {
      IL_004e:  ldloca.s   V_0
      IL_0050:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.WorldObject>
      IL_0056:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_005b:  endfinally
    }  // end handler
    IL_005c:  ldnull
    IL_005d:  ret

    IL_005e:  ldloc.2
    IL_005f:  ret
  } // end of method WorldObjectsHandler::GetWorldObjectAtPosition

  .method private hidebysig instance void 
          HasWorldObjectAtPositionServerRpc(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                            [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [2] = nullref
    // Code size       225 (0xe1)
    .maxstack  7
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_2)
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xeac57ef1
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_2
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_2
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_2
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_1
    IL_007b:  ldloca     V_1
    IL_007f:  ldarga     position
    IL_0083:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_1
    IL_008e:  ldc.i4     0xeac57ef1
    IL_0093:  ldarg      rpcParams
    IL_0097:  ldloc      V_2
    IL_009b:  ldc.i4     0x2
    IL_00a0:  ldc.i4     0x0
    IL_00a5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00aa:  nop
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00b1:  ldc.i4     0x1
    IL_00b6:  ceq
    IL_00b8:  brtrue     IL_00be

    IL_00bd:  ret

    IL_00be:  nop
    IL_00bf:  ldarg.0
    IL_00c0:  ldc.i4     0x0
    IL_00c5:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00ca:  ldarg.0
    IL_00cb:  ldarg.0
    IL_00cc:  ldarg.1
    IL_00cd:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectAtPosition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_00d2:  ldnull
    IL_00d3:  cgt.un
    IL_00d5:  ldarg.2
    IL_00d6:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00db:  call       instance void SpaceCraft.WorldObjectsHandler::HasWorldObjectAtPositionClientRpc(bool,
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_00e0:  ret
  } // end of method WorldObjectsHandler::HasWorldObjectAtPositionServerRpc

  .method private hidebysig instance void 
          HasWorldObjectAtPositionClientRpc(bool result,
                                            [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [2] = nullref
    // Code size       250 (0xfa)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_2)
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_00aa

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x503b6e41
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  ldloca     V_1
    IL_007a:  ldarga     result
    IL_007e:  ldloca     V_2
    IL_0082:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0088:  ldloc      V_2
    IL_008c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0091:  nop
    IL_0092:  ldarg.0
    IL_0093:  ldloca     V_1
    IL_0097:  ldc.i4     0x503b6e41
    IL_009c:  ldarg      clientRpcParams
    IL_00a0:  ldc.i4     0x0
    IL_00a5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00aa:  nop
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00b1:  ldc.i4     0x1
    IL_00b6:  ceq
    IL_00b8:  brfalse    IL_00d9

    IL_00bd:  ldloc      V_0
    IL_00c1:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00c6:  brtrue     IL_00da

    IL_00cb:  ldloc      V_0
    IL_00cf:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00d4:  brtrue     IL_00da

    IL_00d9:  ret

    IL_00da:  nop
    IL_00db:  ldarg.0
    IL_00dc:  ldc.i4     0x0
    IL_00e1:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler::_hasObjectAtPositionCallback
    IL_00ec:  ldarg.1
    IL_00ed:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
    IL_00f2:  ldarg.0
    IL_00f3:  ldnull
    IL_00f4:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler::_hasObjectAtPositionCallback
    IL_00f9:  ret
  } // end of method WorldObjectsHandler::HasWorldObjectAtPositionClientRpc

  .method public hidebysig instance void 
          HasWorldObjectAtPosition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                   class [mscorlib]System.Action`1<bool> callback) cil managed
  {
    // Code size       35 (0x23)
    .maxstack  3
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler::_hasObjectAtPositionCallback
    IL_0006:  brtrue.s   IL_0022

    IL_0008:  ldarg.2
    IL_0009:  brfalse.s  IL_0022

    IL_000b:  ldarg.0
    IL_000c:  ldarg.2
    IL_000d:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler::_hasObjectAtPositionCallback
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldloca.s   V_0
    IL_0016:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_001c:  ldloc.0
    IL_001d:  call       instance void SpaceCraft.WorldObjectsHandler::HasWorldObjectAtPositionServerRpc(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0022:  ret
  } // end of method WorldObjectsHandler::HasWorldObjectAtPosition

  .method private hidebysig instance void 
          DecrementNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> list,
                               int32 groupHashCode) cil managed
  {
    // Code size       87 (0x57)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             valuetype SpaceCraft.Group/GroupCountData V_2)
    IL_0000:  ldc.i4.m1
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_001d

    IL_0006:  ldarg.1
    IL_0007:  ldloc.1
    IL_0008:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Item(int32)
    IL_000d:  ldfld      int32 SpaceCraft.Group/GroupCountData::hashCode
    IL_0012:  ldarg.2
    IL_0013:  bne.un.s   IL_0019

    IL_0015:  ldloc.1
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0026

    IL_0019:  ldloc.1
    IL_001a:  ldc.i4.1
    IL_001b:  add
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  ldarg.1
    IL_001f:  callvirt   instance int32 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Count()
    IL_0024:  blt.s      IL_0006

    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.0
    IL_0028:  blt.s      IL_0056

    IL_002a:  ldarg.1
    IL_002b:  ldloc.0
    IL_002c:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Item(int32)
    IL_0031:  stloc.2
    IL_0032:  ldloca.s   V_2
    IL_0034:  ldflda     int32 SpaceCraft.Group/GroupCountData::count
    IL_0039:  dup
    IL_003a:  ldind.i4
    IL_003b:  ldc.i4.1
    IL_003c:  sub
    IL_003d:  stind.i4
    IL_003e:  ldloc.2
    IL_003f:  ldfld      int32 SpaceCraft.Group/GroupCountData::count
    IL_0044:  brtrue.s   IL_004e

    IL_0046:  ldarg.1
    IL_0047:  ldloc.0
    IL_0048:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::RemoveAt(int32)
    IL_004d:  ret

    IL_004e:  ldarg.1
    IL_004f:  ldloc.0
    IL_0050:  ldloc.2
    IL_0051:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::set_Item(int32,
                                                                                                                                                     !0)
    IL_0056:  ret
  } // end of method WorldObjectsHandler::DecrementNetworkList

  .method private hidebysig instance void 
          IncrementNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> list,
                               int32 groupHashCode) cil managed
  {
    // Code size       84 (0x54)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             valuetype SpaceCraft.Group/GroupCountData V_2)
    IL_0000:  ldc.i4.m1
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_001d

    IL_0006:  ldarg.1
    IL_0007:  ldloc.1
    IL_0008:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Item(int32)
    IL_000d:  ldfld      int32 SpaceCraft.Group/GroupCountData::hashCode
    IL_0012:  ldarg.2
    IL_0013:  bne.un.s   IL_0019

    IL_0015:  ldloc.1
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0026

    IL_0019:  ldloc.1
    IL_001a:  ldc.i4.1
    IL_001b:  add
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  ldarg.1
    IL_001f:  callvirt   instance int32 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Count()
    IL_0024:  blt.s      IL_0006

    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.0
    IL_0028:  bge.s      IL_0037

    IL_002a:  ldarg.1
    IL_002b:  ldarg.2
    IL_002c:  call       valuetype SpaceCraft.Group/GroupCountData SpaceCraft.Group/GroupCountData::op_Implicit(int32)
    IL_0031:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::Add(!0)
    IL_0036:  ret

    IL_0037:  ldarg.1
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Item(int32)
    IL_003e:  stloc.2
    IL_003f:  ldloca.s   V_2
    IL_0041:  ldflda     int32 SpaceCraft.Group/GroupCountData::count
    IL_0046:  dup
    IL_0047:  ldind.i4
    IL_0048:  ldc.i4.1
    IL_0049:  add
    IL_004a:  stind.i4
    IL_004b:  ldarg.1
    IL_004c:  ldloc.0
    IL_004d:  ldloc.2
    IL_004e:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::set_Item(int32,
                                                                                                                                                     !0)
    IL_0053:  ret
  } // end of method WorldObjectsHandler::IncrementNetworkList

  .method private hidebysig instance int32 
          IndexOfInNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> list,
                               int32 groupHashCode) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0019

    IL_0004:  ldarg.1
    IL_0005:  ldloc.0
    IL_0006:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Item(int32)
    IL_000b:  ldfld      int32 SpaceCraft.Group/GroupCountData::hashCode
    IL_0010:  ldarg.2
    IL_0011:  bne.un.s   IL_0015

    IL_0013:  ldloc.0
    IL_0014:  ret

    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  add
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldarg.1
    IL_001b:  callvirt   instance int32 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Count()
    IL_0020:  blt.s      IL_0004

    IL_0022:  ldc.i4.m1
    IL_0023:  ret
  } // end of method WorldObjectsHandler::IndexOfInNetworkList

  .method public hidebysig instance void 
          UpdateWorldObjectSaveState(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void SpaceCraft.WorldObjectsHandler::AddToSpecificLists(class SpaceCraft.WorldObject)
    IL_0007:  ret
  } // end of method WorldObjectsHandler::UpdateWorldObjectSaveState

  .method private hidebysig instance void 
          AddToSpecificLists(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       187 (0xbb)
    .maxstack  3
    .locals init (class SpaceCraft.GroupItem V_0,
             class SpaceCraft.GroupItem V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brfalse.s  IL_0027

    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance bool SpaceCraft.WorldObject::GetDontSaveMe()
    IL_000e:  brtrue.s   IL_0027

    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_001d:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0022:  call       instance void SpaceCraft.WorldObjectsHandler::IncrementNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                            int32)
    IL_0027:  ldarg.1
    IL_0028:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_002d:  isinst     SpaceCraft.GroupConstructible
    IL_0032:  brtrue.s   IL_004c

    IL_0034:  ldarg.1
    IL_0035:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_003a:  isinst     SpaceCraft.GroupItem
    IL_003f:  stloc.0
    IL_0040:  ldloc.0
    IL_0041:  brfalse.s  IL_0086

    IL_0043:  ldloc.0
    IL_0044:  callvirt   instance valuetype SpaceCraft.DataConfig/UsableType SpaceCraft.GroupItem::GetUsableType()
    IL_0049:  ldc.i4.6
    IL_004a:  bne.un.s   IL_0086

    IL_004c:  ldarg.1
    IL_004d:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0052:  call       bool SpaceCraft.WorldObjectsIdHandler::IsWorldObjectFromScene(int32)
    IL_0057:  brtrue.s   IL_00ba

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_constructedWorldObjects
    IL_005f:  ldarg.1
    IL_0060:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::Add(!0)
    IL_0065:  pop
    IL_0066:  ldarg.0
    IL_0067:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_006c:  brfalse.s  IL_00ba

    IL_006e:  ldarg.0
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_0075:  ldarg.1
    IL_0076:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_007b:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0080:  call       instance void SpaceCraft.WorldObjectsHandler::IncrementNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                            int32)
    IL_0085:  ret

    IL_0086:  ldarg.0
    IL_0087:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_008c:  brfalse.s  IL_00ba

    IL_008e:  ldarg.1
    IL_008f:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0094:  isinst     SpaceCraft.GroupItem
    IL_0099:  stloc.1
    IL_009a:  ldloc.1
    IL_009b:  brfalse.s  IL_00ba

    IL_009d:  ldloc.1
    IL_009e:  callvirt   instance bool SpaceCraft.GroupItem::GetCanBePickedUpFromWorldByDrones()
    IL_00a3:  brfalse.s  IL_00ba

    IL_00a5:  ldloc.1
    IL_00a6:  callvirt   instance valuetype SpaceCraft.DataConfig/LogisticDisplayType SpaceCraft.GroupItem::GetLogisticDisplayType()
    IL_00ab:  brtrue.s   IL_00ba

    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_itemsPickablesWorldObjects
    IL_00b3:  ldarg.1
    IL_00b4:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::Add(!0)
    IL_00b9:  pop
    IL_00ba:  ret
  } // end of method WorldObjectsHandler::AddToSpecificLists

  .method public hidebysig instance void 
          OnNetworkListChanged(valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkListEvent`1<valuetype SpaceCraft.Group/GroupCountData> changedEvent) cil managed
  {
    // Code size       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool SpaceCraft.WorldObjectsHandler::GetHasLoadedData()
    IL_0006:  brfalse.s  IL_0035

    IL_0008:  ldarg.1
    IL_0009:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkListEvent`1/EventType<!0> valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkListEvent`1<valuetype SpaceCraft.Group/GroupCountData>::Type
    IL_000e:  brtrue.s   IL_0035

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.GroupData> SpaceCraft.WorldObjectsHandler::onNewWorldObjectGroupAdded
    IL_0016:  dup
    IL_0017:  brtrue.s   IL_001b

    IL_0019:  pop
    IL_001a:  ret

    IL_001b:  ldarg.1
    IL_001c:  ldfld      !0 valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkListEvent`1<valuetype SpaceCraft.Group/GroupCountData>::Value
    IL_0021:  ldfld      int32 SpaceCraft.Group/GroupCountData::hashCode
    IL_0026:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_002b:  callvirt   instance class SpaceCraft.GroupData SpaceCraft.Group::GetGroupData()
    IL_0030:  callvirt   instance void class [mscorlib]System.Action`1<class SpaceCraft.GroupData>::Invoke(!0)
    IL_0035:  ret
  } // end of method WorldObjectsHandler::OnNetworkListChanged

  .method public hidebysig instance bool 
          HasObjectInWorldObjects(class SpaceCraft.GroupData groupData,
                                  [opt] bool checkOnlyOnConstructed) cil managed
  {
    .param [2] = bool(false)
    // Code size       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldnull
    IL_0002:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0007:  brtrue.s   IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  ldfld      string SpaceCraft.GroupData::id
    IL_0010:  ldarg.2
    IL_0011:  call       instance bool SpaceCraft.WorldObjectsHandler::HasObjectInWorldObjects(string,
                                                                                               bool)
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method WorldObjectsHandler::HasObjectInWorldObjects

  .method public hidebysig instance bool 
          HasObjectInWorldObjects(class SpaceCraft.Group group,
                                  [opt] bool checkOnlyOnConstructed) cil managed
  {
    .param [2] = bool(false)
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance string SpaceCraft.Group::get_id()
    IL_0007:  ldarg.2
    IL_0008:  call       instance bool SpaceCraft.WorldObjectsHandler::HasObjectInWorldObjects(string,
                                                                                               bool)
    IL_000d:  ret
  } // end of method WorldObjectsHandler::HasObjectInWorldObjects

  .method public hidebysig instance bool 
          HasObjectInWorldObjects(string groupId,
                                  [opt] bool checkOnlyOnConstructed) cil managed
  {
    .param [2] = bool(false)
    // Code size       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  brfalse.s  IL_001c

    IL_0003:  ldarg.0
    IL_0004:  ldarg.0
    IL_0005:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_000a:  ldarg.1
    IL_000b:  call       int32 StringExtensionMethods::GetStableHashCode(string)
    IL_0010:  call       instance int32 SpaceCraft.WorldObjectsHandler::IndexOfInNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                             int32)
    IL_0015:  ldc.i4.m1
    IL_0016:  ceq
    IL_0018:  ldc.i4.0
    IL_0019:  ceq
    IL_001b:  ret

    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0023:  ldarg.1
    IL_0024:  call       int32 StringExtensionMethods::GetStableHashCode(string)
    IL_0029:  call       instance int32 SpaceCraft.WorldObjectsHandler::IndexOfInNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                             int32)
    IL_002e:  ldc.i4.m1
    IL_002f:  ceq
    IL_0031:  ldc.i4.0
    IL_0032:  ceq
    IL_0034:  ret
  } // end of method WorldObjectsHandler::HasObjectInWorldObjects

  .method public hidebysig instance bool 
          HasConstructedGroup(class SpaceCraft.GroupData groupData) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.1
    IL_0003:  call       instance bool SpaceCraft.WorldObjectsHandler::HasObjectInWorldObjects(class SpaceCraft.GroupData,
                                                                                               bool)
    IL_0008:  ret
  } // end of method WorldObjectsHandler::HasConstructedGroup

  .method public hidebysig instance int32 
          GetObjectInWorldObjectsCount(class SpaceCraft.GroupData groupData,
                                       [opt] bool checkOnlyOnConstructed) cil managed
  {
    .param [2] = bool(false)
    // Code size       99 (0x63)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  brfalse.s  IL_0033

    IL_0003:  ldarg.0
    IL_0004:  ldarg.0
    IL_0005:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_000a:  ldarg.1
    IL_000b:  ldfld      string SpaceCraft.GroupData::id
    IL_0010:  call       int32 StringExtensionMethods::GetStableHashCode(string)
    IL_0015:  call       instance int32 SpaceCraft.WorldObjectsHandler::IndexOfInNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                             int32)
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.0
    IL_001d:  bge.s      IL_0021

    IL_001f:  ldc.i4.0
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Item(int32)
    IL_002d:  ldfld      int32 SpaceCraft.Group/GroupCountData::count
    IL_0032:  ret

    IL_0033:  ldarg.0
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_003a:  ldarg.1
    IL_003b:  ldfld      string SpaceCraft.GroupData::id
    IL_0040:  call       int32 StringExtensionMethods::GetStableHashCode(string)
    IL_0045:  call       instance int32 SpaceCraft.WorldObjectsHandler::IndexOfInNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                             int32)
    IL_004a:  stloc.1
    IL_004b:  ldloc.1
    IL_004c:  ldc.i4.0
    IL_004d:  bge.s      IL_0051

    IL_004f:  ldc.i4.0
    IL_0050:  ret

    IL_0051:  ldarg.0
    IL_0052:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0057:  ldloc.1
    IL_0058:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Item(int32)
    IL_005d:  ldfld      int32 SpaceCraft.Group/GroupCountData::count
    IL_0062:  ret
  } // end of method WorldObjectsHandler::GetObjectInWorldObjectsCount

  .method private hidebysig instance void 
          ChangeStateIndex(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0006:  isinst     SpaceCraft.GroupConstructible
    IL_000b:  brfalse.s  IL_002c

    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0013:  call       bool SpaceCraft.WorldObjectsIdHandler::IsWorldObjectFromScene(int32)
    IL_0018:  brtrue.s   IL_002c

    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  ldfld      float32 SpaceCraft.WorldObjectsHandler::_stateConstructedObjectsIndex
    IL_0021:  ldc.r4     1.
    IL_0026:  add
    IL_0027:  stfld      float32 SpaceCraft.WorldObjectsHandler::_stateConstructedObjectsIndex
    IL_002c:  ret
  } // end of method WorldObjectsHandler::ChangeStateIndex

  .method public hidebysig instance bool 
          HasNewConstructed(float32& previousKnownIndex) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 SpaceCraft.WorldObjectsHandler::_stateConstructedObjectsIndex
    IL_0006:  ldarg.1
    IL_0007:  ldind.r4
    IL_0008:  beq.s      IL_0014

    IL_000a:  ldarg.1
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float32 SpaceCraft.WorldObjectsHandler::_stateConstructedObjectsIndex
    IL_0011:  stind.r4
    IL_0012:  ldc.i4.1
    IL_0013:  ret

    IL_0014:  ldc.i4.0
    IL_0015:  ret
  } // end of method WorldObjectsHandler::HasNewConstructed

  .method public hidebysig instance class SpaceCraft.WorldObject 
          GetWorldObjectForInventory(class SpaceCraft.Inventory inventory) cil managed
  {
    // Code size       96 (0x60)
    .maxstack  2
    .locals init (valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject> V_0,
             class SpaceCraft.WorldObject V_1,
             class SpaceCraft.WorldObject V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_constructedWorldObjects
    IL_0006:  callvirt   instance valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<!0> class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0043

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldloc.1
      IL_0017:  callvirt   instance int32 SpaceCraft.WorldObject::GetLinkedInventoryId()
      IL_001c:  ldarg.1
      IL_001d:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
      IL_0022:  beq.s      IL_003f

      IL_0024:  ldloc.1
      IL_0025:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::GetSecondaryInventoriesId()
      IL_002a:  brfalse.s  IL_0043

      IL_002c:  ldloc.1
      IL_002d:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::GetSecondaryInventoriesId()
      IL_0032:  ldarg.1
      IL_0033:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
      IL_0038:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
      IL_003d:  brfalse.s  IL_0043

      IL_003f:  ldloc.1
      IL_0040:  stloc.2
      IL_0041:  leave.s    IL_005e

      IL_0043:  ldloca.s   V_0
      IL_0045:  call       instance bool valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_004a:  brtrue.s   IL_000e

      IL_004c:  leave.s    IL_005c

    }  // end .try
    finally
    {
      IL_004e:  ldloca.s   V_0
      IL_0050:  constrained. valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject>
      IL_0056:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_005b:  endfinally
    }  // end handler
    IL_005c:  ldnull
    IL_005d:  ret

    IL_005e:  ldloc.2
    IL_005f:  ret
  } // end of method WorldObjectsHandler::GetWorldObjectForInventory

  .method public hidebysig instance void 
          GetGameObjectFromWorldObject(class SpaceCraft.WorldObject worldObject,
                                       class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> callback) cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  3
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.2
    IL_0009:  brfalse.s  IL_0017

    IL_000b:  ldarg.2
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_0012:  callvirt   instance void class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>::Invoke(!0)
    IL_0017:  ret

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>> SpaceCraft.WorldObjectsHandler::_getGameObjectCallbackQueue
    IL_001e:  ldarg.2
    IL_001f:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>>::Enqueue(!0)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_002b:  ldloca.s   V_0
    IL_002d:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0033:  ldloc.0
    IL_0034:  call       instance void SpaceCraft.WorldObjectsHandler::GetGameObjectFromWorldObjectServerRpc(int32,
                                                                                                             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0039:  ret
  } // end of method WorldObjectsHandler::GetGameObjectFromWorldObject

  .method private hidebysig instance void 
          GetGameObjectFromWorldObjectServerRpc(int32 woId,
                                                [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [2] = nullref
    // Code size       260 (0x104)
    .maxstack  7
    .locals init (class SpaceCraft.WorldObject V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_1
    IL_000a:  ldloc      V_1
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_1
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x162359a4
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_3
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_3
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_3
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_2
    IL_007b:  ldloc      V_2
    IL_007f:  ldarg      woId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_2
    IL_008e:  ldc.i4     0x162359a4
    IL_0093:  ldarg      rpcParams
    IL_0097:  ldloc      V_3
    IL_009b:  ldc.i4     0x2
    IL_00a0:  ldc.i4     0x0
    IL_00a5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00aa:  nop
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00b1:  ldc.i4     0x1
    IL_00b6:  ceq
    IL_00b8:  brtrue     IL_00be

    IL_00bd:  ret

    IL_00be:  nop
    IL_00bf:  ldarg.0
    IL_00c0:  ldc.i4     0x0
    IL_00c5:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00ca:  ldarg.0
    IL_00cb:  ldarg.1
    IL_00cc:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_00d1:  stloc.0
    IL_00d2:  ldarg.0
    IL_00d3:  ldloc.0
    IL_00d4:  brfalse.s  IL_00e4

    IL_00d6:  ldloc.0
    IL_00d7:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_00dc:  ldnull
    IL_00dd:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_00e2:  brtrue.s   IL_00e8

    IL_00e4:  ldc.i4.0
    IL_00e5:  conv.i8
    IL_00e6:  br.s       IL_00f8

    IL_00e8:  ldloc.0
    IL_00e9:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_00ee:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>()
    IL_00f3:  callvirt   instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::get_NetworkObjectId()
    IL_00f8:  ldarg.2
    IL_00f9:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00fe:  call       instance void SpaceCraft.WorldObjectsHandler::GetGameObjectFromWorldObjectClientRpc(uint64,
                                                                                                             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0103:  ret
  } // end of method WorldObjectsHandler::GetGameObjectFromWorldObjectServerRpc

  .method private hidebysig instance void 
          GetGameObjectFromWorldObjectClientRpc(uint64 networkObjectId,
                                                [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [2] = nullref
    // Code size       270 (0x10e)
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
    IL_003c:  brfalse    IL_009c

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_009c

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0xd16e9648
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  ldloc      V_1
    IL_007a:  ldarg      networkObjectId
    IL_007e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   uint64)
    IL_0083:  nop
    IL_0084:  ldarg.0
    IL_0085:  ldloca     V_1
    IL_0089:  ldc.i4     0xd16e9648
    IL_008e:  ldarg      clientRpcParams
    IL_0092:  ldc.i4     0x0
    IL_0097:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_009c:  nop
    IL_009d:  ldarg.0
    IL_009e:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a3:  ldc.i4     0x1
    IL_00a8:  ceq
    IL_00aa:  brfalse    IL_00cb

    IL_00af:  ldloc      V_0
    IL_00b3:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00b8:  brtrue     IL_00cc

    IL_00bd:  ldloc      V_0
    IL_00c1:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00c6:  brtrue     IL_00cc

    IL_00cb:  ret

    IL_00cc:  nop
    IL_00cd:  ldarg.0
    IL_00ce:  ldc.i4     0x0
    IL_00d3:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>> SpaceCraft.WorldObjectsHandler::_getGameObjectCallbackQueue
    IL_00de:  callvirt   instance !0 class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>>::Dequeue()
    IL_00e3:  dup
    IL_00e4:  brtrue.s   IL_00e8

    IL_00e6:  pop
    IL_00e7:  ret

    IL_00e8:  ldarg.1
    IL_00e9:  brfalse.s  IL_0107

    IL_00eb:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_00f0:  callvirt   instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkSpawnManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_SpawnManager()
    IL_00f5:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject> [Unity.Netcode.Runtime]Unity.Netcode.NetworkSpawnManager::SpawnedObjects
    IL_00fa:  ldarg.1
    IL_00fb:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>::get_Item(!0)
    IL_0100:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_0105:  br.s       IL_0108

    IL_0107:  ldnull
    IL_0108:  callvirt   instance void class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>::Invoke(!0)
    IL_010d:  ret
  } // end of method WorldObjectsHandler::GetGameObjectFromWorldObjectClientRpc

  .method public hidebysig instance void 
          SetTotalCraftedObjects(uint64 clientId,
                                 int32 totalCraftFromDb) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32> SpaceCraft.WorldObjectsHandler::_totalCraftPerClient
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32>::set_Item(!0,
                                                                                                                       !1)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  ldarg.1
    IL_0010:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(uint64)
    IL_0015:  call       instance void SpaceCraft.WorldObjectsHandler::SetTotalCraftedObjectsClientRpc(int32,
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_001a:  ret
  } // end of method WorldObjectsHandler::SetTotalCraftedObjects

  .method private hidebysig instance void 
          SetTotalCraftedObjectsClientRpc(int32 totalCraftFromDb,
                                          [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [2] = nullref
    // Code size       224 (0xe0)
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
    IL_003c:  brfalse    IL_009c

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_009c

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x4fe1fe80
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  ldloc      V_1
    IL_007a:  ldarg      totalCraftFromDb
    IL_007e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0083:  nop
    IL_0084:  ldarg.0
    IL_0085:  ldloca     V_1
    IL_0089:  ldc.i4     0x4fe1fe80
    IL_008e:  ldarg      clientRpcParams
    IL_0092:  ldc.i4     0x0
    IL_0097:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_009c:  nop
    IL_009d:  ldarg.0
    IL_009e:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a3:  ldc.i4     0x1
    IL_00a8:  ceq
    IL_00aa:  brfalse    IL_00cb

    IL_00af:  ldloc      V_0
    IL_00b3:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00b8:  brtrue     IL_00cc

    IL_00bd:  ldloc      V_0
    IL_00c1:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00c6:  brtrue     IL_00cc

    IL_00cb:  ret

    IL_00cc:  nop
    IL_00cd:  ldarg.0
    IL_00ce:  ldc.i4     0x0
    IL_00d3:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00d8:  ldarg.0
    IL_00d9:  ldarg.1
    IL_00da:  stfld      int32 SpaceCraft.WorldObjectsHandler::_totalCraft
    IL_00df:  ret
  } // end of method WorldObjectsHandler::SetTotalCraftedObjectsClientRpc

  .method public hidebysig instance int32 
          GetTotalCraftedObjects() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.WorldObjectsHandler::_totalCraft
    IL_0006:  ret
  } // end of method WorldObjectsHandler::GetTotalCraftedObjects

  .method public hidebysig instance int32 
          GetTotalCraftedObjects(uint64 clientId) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32> SpaceCraft.WorldObjectsHandler::_totalCraftPerClient
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32>::get_Item(!0)
    IL_000c:  ret
  } // end of method WorldObjectsHandler::GetTotalCraftedObjects

  .method public hidebysig instance void 
          AddOneToTotalCraft() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void SpaceCraft.WorldObjectsHandler::AddOneToTotalCraftServerRpc()
    IL_0006:  ret
  } // end of method WorldObjectsHandler::AddOneToTotalCraft

  .method private hidebysig instance void 
          AddOneToTotalCraftServerRpc() cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    // Code size       280 (0x118)
    .maxstack  7
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerator`1<uint64> V_0,
             uint64 V_1,
             uint64 V_2,
             int32 V_3,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_4
    IL_000a:  ldloc      V_4
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_4
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
    IL_003c:  brfalse    IL_009d

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x49f1fdf5
    IL_0048:  ldloc      V_6
    IL_004c:  ldloca     V_7
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_7
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_7
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_5
    IL_007b:  nop
    IL_007c:  ldarg.0
    IL_007d:  ldloca     V_5
    IL_0081:  ldc.i4     0x49f1fdf5
    IL_0086:  ldloc      V_6
    IL_008a:  ldloc      V_7
    IL_008e:  ldc.i4     0x2
    IL_0093:  ldc.i4     0x0
    IL_0098:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_009d:  nop
    IL_009e:  ldarg.0
    IL_009f:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a4:  ldc.i4     0x1
    IL_00a9:  ceq
    IL_00ab:  brtrue     IL_00b1

    IL_00b0:  ret

    IL_00b1:  nop
    IL_00b2:  ldarg.0
    IL_00b3:  ldc.i4     0x0
    IL_00b8:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00bd:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_00c2:  callvirt   instance class [mscorlib]System.Collections.Generic.IReadOnlyList`1<uint64> [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_ConnectedClientsIds()
    IL_00c7:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<uint64>::GetEnumerator()
    IL_00cc:  stloc.0
    .try
    {
      IL_00cd:  br.s       IL_00fd

      IL_00cf:  ldloc.0
      IL_00d0:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<uint64>::get_Current()
      IL_00d5:  stloc.1
      IL_00d6:  ldarg.0
      IL_00d7:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32> SpaceCraft.WorldObjectsHandler::_totalCraftPerClient
      IL_00dc:  ldloc.1
      IL_00dd:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32>::ContainsKey(!0)
      IL_00e2:  brfalse.s  IL_00fd

      IL_00e4:  ldarg.0
      IL_00e5:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32> SpaceCraft.WorldObjectsHandler::_totalCraftPerClient
      IL_00ea:  ldloc.1
      IL_00eb:  stloc.2
      IL_00ec:  dup
      IL_00ed:  ldloc.2
      IL_00ee:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32>::get_Item(!0)
      IL_00f3:  stloc.3
      IL_00f4:  ldloc.2
      IL_00f5:  ldloc.3
      IL_00f6:  ldc.i4.1
      IL_00f7:  add
      IL_00f8:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32>::set_Item(!0,
                                                                                                                         !1)
      IL_00fd:  ldloc.0
      IL_00fe:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_0103:  brtrue.s   IL_00cf

      IL_0105:  leave.s    IL_0111

    }  // end .try
    finally
    {
      IL_0107:  ldloc.0
      IL_0108:  brfalse.s  IL_0110

      IL_010a:  ldloc.0
      IL_010b:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0110:  endfinally
    }  // end handler
    IL_0111:  ldarg.0
    IL_0112:  call       instance void SpaceCraft.WorldObjectsHandler::AddOneToTotalCraftClientRpc()
    IL_0117:  ret
  } // end of method WorldObjectsHandler::AddOneToTotalCraftServerRpc

  .method private hidebysig instance void 
          AddOneToTotalCraftClientRpc() cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       234 (0xea)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_2)
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
    IL_003c:  brfalse    IL_008f

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_008f

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x364c058
    IL_0064:  ldloc      V_2
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  nop
    IL_0077:  ldarg.0
    IL_0078:  ldloca     V_1
    IL_007c:  ldc.i4     0x364c058
    IL_0081:  ldloc      V_2
    IL_0085:  ldc.i4     0x0
    IL_008a:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_008f:  nop
    IL_0090:  ldarg.0
    IL_0091:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0096:  ldc.i4     0x1
    IL_009b:  ceq
    IL_009d:  brfalse    IL_00be

    IL_00a2:  ldloc      V_0
    IL_00a6:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00ab:  brtrue     IL_00bf

    IL_00b0:  ldloc      V_0
    IL_00b4:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00b9:  brtrue     IL_00bf

    IL_00be:  ret

    IL_00bf:  nop
    IL_00c0:  ldarg.0
    IL_00c1:  ldc.i4     0x0
    IL_00c6:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00cb:  ldarg.0
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      int32 SpaceCraft.WorldObjectsHandler::_totalCraft
    IL_00d2:  ldc.i4.1
    IL_00d3:  add
    IL_00d4:  stfld      int32 SpaceCraft.WorldObjectsHandler::_totalCraft
    IL_00d9:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.AchievementsHandler>()
    IL_00de:  ldarg.0
    IL_00df:  ldfld      int32 SpaceCraft.WorldObjectsHandler::_totalCraft
    IL_00e4:  callvirt   instance void SpaceCraft.AchievementsHandler::CraftedNumberVerifications(int32)
    IL_00e9:  ret
  } // end of method WorldObjectsHandler::AddOneToTotalCraftClientRpc

  .method public hidebysig specialname instance void 
          add_OnWorldObjectFromSceneDestroyed(class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       41 (0x29)
    .maxstack  3
    .locals init (class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_0,
             class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_1,
             class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::OnWorldObjectFromSceneDestroyed
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_0010:  castclass  class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::OnWorldObjectFromSceneDestroyed
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>>(!!0&,
                                                                                                                                                    !!0,
                                                                                                                                                    !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method WorldObjectsHandler::add_OnWorldObjectFromSceneDestroyed

  .method public hidebysig specialname instance void 
          remove_OnWorldObjectFromSceneDestroyed(class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       41 (0x29)
    .maxstack  3
    .locals init (class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_0,
             class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_1,
             class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::OnWorldObjectFromSceneDestroyed
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
                                                                                           class [mscorlib]System.Delegate)
    IL_0010:  castclass  class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::OnWorldObjectFromSceneDestroyed
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>>(!!0&,
                                                                                                                                                    !!0,
                                                                                                                                                    !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method WorldObjectsHandler::remove_OnWorldObjectFromSceneDestroyed

  .method public hidebysig instance void 
          DestroyWorldObject(int32 woId,
                             [opt] bool destroyGameObject) cil managed
  {
    .param [2] = bool(false)
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brtrue.s   IL_0011

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldarg.2
    IL_000b:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectServerRpc(int32,
                                                                                                   bool)
    IL_0010:  ret

    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0019:  ldarg.2
    IL_001a:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObject(class SpaceCraft.WorldObject,
                                                                                          bool)
    IL_001f:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObject

  .method public hidebysig instance void 
          DestroyWorldObject(class SpaceCraft.WorldObject worldObject,
                             [opt] bool destroyGameObject) cil managed
  {
    .param [2] = bool(false)
    // Code size       387 (0x183)
    .maxstack  3
    .locals init (class SpaceCraft.GroupConstructible V_0,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<int32> V_1,
             int32 V_2)
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "WorldObjectsHandler Error: Trying to delete a serv"
    + "er unknown worldObject!"
    IL_0008:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0014:  brtrue.s   IL_0024

    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_001d:  ldarg.2
    IL_001e:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectServerRpc(int32,
                                                                                                   bool)
    IL_0023:  ret

    IL_0024:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0029:  ldarg.1
    IL_002a:  callvirt   instance void SpaceCraft.InventoriesHandler::RemoveFromInventoryWhenDeleted(class SpaceCraft.WorldObject)
    IL_002f:  ldarg.1
    IL_0030:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0035:  call       bool SpaceCraft.WorldObjectsIdHandler::IsWorldObjectFromScene(int32)
    IL_003a:  brtrue     IL_0182

    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0045:  ldarg.1
    IL_0046:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_004b:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::Remove(!0)
    IL_0050:  brfalse    IL_0182

    IL_0055:  ldarg.0
    IL_0056:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_constructedWorldObjects
    IL_005b:  ldarg.1
    IL_005c:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::Remove(!0)
    IL_0061:  pop
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_itemsPickablesWorldObjects
    IL_0068:  ldarg.1
    IL_0069:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::Remove(!0)
    IL_006e:  pop
    IL_006f:  ldarg.1
    IL_0070:  callvirt   instance bool SpaceCraft.WorldObject::GetDontSaveMe()
    IL_0075:  brtrue.s   IL_00a5

    IL_0077:  ldarg.0
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_007e:  ldarg.1
    IL_007f:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0084:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0089:  call       instance void SpaceCraft.WorldObjectsHandler::DecrementNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                            int32)
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0095:  ldarg.1
    IL_0096:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_009b:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_00a0:  call       instance void SpaceCraft.WorldObjectsHandler::DecrementNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                            int32)
    IL_00a5:  ldsfld     class SpaceCraft.LogisticInterplanetaryManager SpaceCraft.LogisticInterplanetaryManager::Instance
    IL_00aa:  ldarg.1
    IL_00ab:  callvirt   instance void SpaceCraft.LogisticInterplanetaryManager::RemoveWorldObject(class SpaceCraft.WorldObject)
    IL_00b0:  ldarg.0
    IL_00b1:  ldarg.1
    IL_00b2:  call       instance void SpaceCraft.WorldObjectsHandler::ChangeStateIndex(class SpaceCraft.WorldObject)
    IL_00b7:  ldarg.1
    IL_00b8:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_00bd:  isinst     SpaceCraft.GroupConstructible
    IL_00c2:  stloc.0
    IL_00c3:  ldloc.0
    IL_00c4:  brfalse.s  IL_00de

    IL_00c6:  ldloc.0
    IL_00c7:  ldc.i4.2
    IL_00c8:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_00cd:  ldc.r4     0.0
    IL_00d2:  beq.s      IL_00de

    IL_00d4:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.RequireEnergyHandler>()
    IL_00d9:  callvirt   instance void SpaceCraft.RequireEnergyHandler::UpdateAllEnergyRequester()
    IL_00de:  ldarg.2
    IL_00df:  brfalse.s  IL_0126

    IL_00e1:  ldarg.1
    IL_00e2:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_00e7:  ldnull
    IL_00e8:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_00ed:  brfalse.s  IL_0126

    IL_00ef:  ldarg.1
    IL_00f0:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_00f5:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>()
    IL_00fa:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Implicit(class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_00ff:  brfalse.s  IL_0114

    IL_0101:  ldarg.1
    IL_0102:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_0107:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>()
    IL_010c:  ldc.i4.1
    IL_010d:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::Despawn(bool)
    IL_0112:  br.s       IL_011f

    IL_0114:  ldarg.1
    IL_0115:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_011a:  call       void [UnityEngine.CoreModule]UnityEngine.Object::Destroy(class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_011f:  ldarg.1
    IL_0120:  ldnull
    IL_0121:  callvirt   instance void SpaceCraft.WorldObject::SetGameObject(class [UnityEngine.CoreModule]UnityEngine.GameObject)
    IL_0126:  ldarg.1
    IL_0127:  callvirt   instance bool SpaceCraft.WorldObject::HasLinkedInventory()
    IL_012c:  brfalse.s  IL_013f

    IL_012e:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0133:  ldarg.1
    IL_0134:  callvirt   instance int32 SpaceCraft.WorldObject::GetLinkedInventoryId()
    IL_0139:  ldarg.2
    IL_013a:  callvirt   instance void SpaceCraft.InventoriesHandler::DestroyInventory(int32,
                                                                                       bool)
    IL_013f:  ldarg.1
    IL_0140:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::GetSecondaryInventoriesId()
    IL_0145:  brfalse.s  IL_0182

    IL_0147:  ldarg.1
    IL_0148:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::GetSecondaryInventoriesId()
    IL_014d:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<int32>::GetEnumerator()
    IL_0152:  stloc.1
    .try
    {
      IL_0153:  br.s       IL_0169

      IL_0155:  ldloca.s   V_1
      IL_0157:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<int32>::get_Current()
      IL_015c:  stloc.2
      IL_015d:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
      IL_0162:  ldloc.2
      IL_0163:  ldarg.2
      IL_0164:  callvirt   instance void SpaceCraft.InventoriesHandler::DestroyInventory(int32,
                                                                                         bool)
      IL_0169:  ldloca.s   V_1
      IL_016b:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<int32>::MoveNext()
      IL_0170:  brtrue.s   IL_0155

      IL_0172:  leave.s    IL_0182

    }  // end .try
    finally
    {
      IL_0174:  ldloca.s   V_1
      IL_0176:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<int32>
      IL_017c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0181:  endfinally
    }  // end handler
    IL_0182:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObject

  .method private hidebysig instance void 
          DestroyWorldObjectServerRpc(int32 worlObjectId,
                                      bool destroyGameObject) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    // Code size       244 (0xf4)
    .maxstack  7
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4)
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
    IL_003c:  brfalse    IL_00c5

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xec46da77
    IL_0048:  ldloc      V_2
    IL_004c:  ldloca     V_3
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_3
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_3
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_1
    IL_007b:  ldloc      V_1
    IL_007f:  ldarg      worlObjectId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloca     V_1
    IL_008c:  ldarga     destroyGameObject
    IL_0090:  ldloca     V_4
    IL_0094:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_009a:  ldloc      V_4
    IL_009e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00a3:  nop
    IL_00a4:  ldarg.0
    IL_00a5:  ldloca     V_1
    IL_00a9:  ldc.i4     0xec46da77
    IL_00ae:  ldloc      V_2
    IL_00b2:  ldloc      V_3
    IL_00b6:  ldc.i4     0x2
    IL_00bb:  ldc.i4     0x0
    IL_00c0:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00c5:  nop
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00cc:  ldc.i4     0x1
    IL_00d1:  ceq
    IL_00d3:  brtrue     IL_00d9

    IL_00d8:  ret

    IL_00d9:  nop
    IL_00da:  ldarg.0
    IL_00db:  ldc.i4     0x0
    IL_00e0:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e5:  ldarg.0
    IL_00e6:  ldarg.0
    IL_00e7:  ldarg.1
    IL_00e8:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_00ed:  ldarg.2
    IL_00ee:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObject(class SpaceCraft.WorldObject,
                                                                                          bool)
    IL_00f3:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObjectServerRpc

  .method public hidebysig instance void 
          DestroyWorldObjects(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> worldObjects,
                              [opt] bool destroyGameObject) cil managed
  {
    .param [2] = bool(false)
    // Code size       45 (0x2d)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_0,
             class SpaceCraft.WorldObject V_1)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  br.s       IL_0018

      IL_0009:  ldloc.0
      IL_000a:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_000f:  stloc.1
      IL_0010:  ldarg.0
      IL_0011:  ldloc.1
      IL_0012:  ldarg.2
      IL_0013:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObject(class SpaceCraft.WorldObject,
                                                                                            bool)
      IL_0018:  ldloc.0
      IL_0019:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_001e:  brtrue.s   IL_0009

      IL_0020:  leave.s    IL_002c

    }  // end .try
    finally
    {
      IL_0022:  ldloc.0
      IL_0023:  brfalse.s  IL_002b

      IL_0025:  ldloc.0
      IL_0026:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_002b:  endfinally
    }  // end handler
    IL_002c:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObjects

  .method private hidebysig instance void 
          DestroyWorldObjectGOClientRpc(int32 worldObjectId,
                                        int32 groupHash,
                                        float32 disolveTime,
                                        [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [4] = nullref
    // Code size       371 (0x173)
    .maxstack  5
    .locals init (class SpaceCraft.WorldObject V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_1
    IL_000a:  ldloc      V_1
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_1
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
    IL_003c:  brfalse    IL_00c4

    IL_0041:  ldloc      V_1
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_1
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_00c4

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0xd4fcef1b
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_2
    IL_0076:  ldloc      V_2
    IL_007a:  ldarg      worldObjectId
    IL_007e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0083:  ldloc      V_2
    IL_0087:  ldarg      groupHash
    IL_008b:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0090:  ldloca     V_2
    IL_0094:  ldarga     disolveTime
    IL_0098:  ldloca     V_3
    IL_009c:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a2:  ldloc      V_3
    IL_00a6:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00ab:  nop
    IL_00ac:  ldarg.0
    IL_00ad:  ldloca     V_2
    IL_00b1:  ldc.i4     0xd4fcef1b
    IL_00b6:  ldarg      clientRpcParams
    IL_00ba:  ldc.i4     0x0
    IL_00bf:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00c4:  nop
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00cb:  ldc.i4     0x1
    IL_00d0:  ceq
    IL_00d2:  brfalse    IL_00f3

    IL_00d7:  ldloc      V_1
    IL_00db:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00e0:  brtrue     IL_00f4

    IL_00e5:  ldloc      V_1
    IL_00e9:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00ee:  brtrue     IL_00f4

    IL_00f3:  ret

    IL_00f4:  nop
    IL_00f5:  ldarg.0
    IL_00f6:  ldc.i4     0x0
    IL_00fb:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0100:  ldarg.0
    IL_0101:  ldarg.1
    IL_0102:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0107:  stloc.0
    IL_0108:  ldloc.0
    IL_0109:  brfalse.s  IL_014b

    IL_010b:  ldloc.0
    IL_010c:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_0111:  ldnull
    IL_0112:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0117:  brfalse.s  IL_014b

    IL_0119:  ldarg.3
    IL_011a:  ldc.r4     0.0
    IL_011f:  ble.un.s   IL_0140

    IL_0121:  ldloc.0
    IL_0122:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_0127:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::AddComponent<class SpaceCraft.GhostFx>()
    IL_012c:  ldarg.3
    IL_012d:  callvirt   instance void SpaceCraft.GhostFx::StartDestructDisolveAnimation(float32)
    IL_0132:  ldloc.0
    IL_0133:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_0138:  ldarg.3
    IL_0139:  call       void [UnityEngine.CoreModule]UnityEngine.Object::Destroy(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                  float32)
    IL_013e:  br.s       IL_014b

    IL_0140:  ldloc.0
    IL_0141:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_0146:  call       void [UnityEngine.CoreModule]UnityEngine.Object::Destroy(class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_014b:  ldloc.0
    IL_014c:  brtrue.s   IL_015e

    IL_014e:  ldarg.0
    IL_014f:  ldarg.2
    IL_0150:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_0155:  ldarg.1
    IL_0156:  ldnull
    IL_0157:  ldc.i4.1
    IL_0158:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_015d:  stloc.0
    IL_015e:  ldloc.0
    IL_015f:  ldc.i4.0
    IL_0160:  callvirt   instance void SpaceCraft.WorldObject::SetDontSaveMe(bool)
    IL_0165:  ldloc.0
    IL_0166:  callvirt   instance void SpaceCraft.WorldObject::ResetPositionAndRotation()
    IL_016b:  ldloc.0
    IL_016c:  ldnull
    IL_016d:  callvirt   instance void SpaceCraft.WorldObject::SetGameObject(class [UnityEngine.CoreModule]UnityEngine.GameObject)
    IL_0172:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObjectGOClientRpc

  .method public hidebysig instance void 
          DestroyWorldObjectFromScene(class SpaceCraft.WorldObject worldObject,
                                      float32 disolveTime,
                                      [opt] class [mscorlib]System.Action`1<bool> callback) cil managed
  {
    .param [3] = nullref
    // Code size       91 (0x5b)
    .maxstack  5
    .locals init (class SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass77_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass77_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass77_0'::callback
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler::_destroyWorldObjectFromSceneCallback
    IL_0013:  brtrue.s   IL_0049

    IL_0015:  ldarg.0
    IL_0016:  ldloc.0
    IL_0017:  ldftn      instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass77_0'::'<DestroyWorldObjectFromScene>b__0'(bool)
    IL_001d:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_0022:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler::_destroyWorldObjectFromSceneCallback
    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_002e:  ldarg.1
    IL_002f:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0034:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0039:  ldarg.2
    IL_003a:  ldloca.s   V_1
    IL_003c:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0042:  ldloc.1
    IL_0043:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectFromSceneServerRpc(int32,
                                                                                                            int32,
                                                                                                            float32,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0048:  ret

    IL_0049:  ldloc.0
    IL_004a:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass77_0'::callback
    IL_004f:  dup
    IL_0050:  brtrue.s   IL_0054

    IL_0052:  pop
    IL_0053:  ret

    IL_0054:  ldc.i4.0
    IL_0055:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
    IL_005a:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObjectFromScene

  .method private hidebysig instance void 
          DestroyWorldObjectFromSceneResultClientRpc(bool success,
                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       250 (0xfa)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_2)
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_00aa

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x29b1b272
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  ldloca     V_1
    IL_007a:  ldarga     success
    IL_007e:  ldloca     V_2
    IL_0082:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0088:  ldloc      V_2
    IL_008c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0091:  nop
    IL_0092:  ldarg.0
    IL_0093:  ldloca     V_1
    IL_0097:  ldc.i4     0x29b1b272
    IL_009c:  ldarg      clientRpcParams
    IL_00a0:  ldc.i4     0x0
    IL_00a5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00aa:  nop
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00b1:  ldc.i4     0x1
    IL_00b6:  ceq
    IL_00b8:  brfalse    IL_00d9

    IL_00bd:  ldloc      V_0
    IL_00c1:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00c6:  brtrue     IL_00da

    IL_00cb:  ldloc      V_0
    IL_00cf:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00d4:  brtrue     IL_00da

    IL_00d9:  ret

    IL_00da:  nop
    IL_00db:  ldarg.0
    IL_00dc:  ldc.i4     0x0
    IL_00e1:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler::_destroyWorldObjectFromSceneCallback
    IL_00ec:  ldarg.1
    IL_00ed:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
    IL_00f2:  ldarg.0
    IL_00f3:  ldnull
    IL_00f4:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler::_destroyWorldObjectFromSceneCallback
    IL_00f9:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObjectFromSceneResultClientRpc

  .method private hidebysig instance void 
          DestroyWorldObjectFromSceneServerRpc(int32 worldObjectId,
                                               int32 groupHash,
                                               float32 disolveTime,
                                               [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [4] = nullref
    // Code size       324 (0x144)
    .maxstack  7
    .locals init (class SpaceCraft.WorldObject V_0,
             bool V_1,
             bool V_2,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_3
    IL_000a:  ldloc      V_3
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_3
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
    IL_003c:  brfalse    IL_00d2

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x10112ea3
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_5
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_5
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_5
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_4
    IL_007b:  ldloc      V_4
    IL_007f:  ldarg      worldObjectId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_4
    IL_008c:  ldarg      groupHash
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloca     V_4
    IL_0099:  ldarga     disolveTime
    IL_009d:  ldloca     V_6
    IL_00a1:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a7:  ldloc      V_6
    IL_00ab:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b0:  nop
    IL_00b1:  ldarg.0
    IL_00b2:  ldloca     V_4
    IL_00b6:  ldc.i4     0x10112ea3
    IL_00bb:  ldarg      rpcParams
    IL_00bf:  ldloc      V_5
    IL_00c3:  ldc.i4     0x2
    IL_00c8:  ldc.i4     0x0
    IL_00cd:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00d2:  nop
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00d9:  ldc.i4     0x1
    IL_00de:  ceq
    IL_00e0:  brtrue     IL_00e6

    IL_00e5:  ret

    IL_00e6:  nop
    IL_00e7:  ldarg.0
    IL_00e8:  ldc.i4     0x0
    IL_00ed:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00f2:  ldarg.0
    IL_00f3:  ldarg.1
    IL_00f4:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_00f9:  stloc.0
    IL_00fa:  ldc.i4.0
    IL_00fb:  stloc.1
    IL_00fc:  ldc.i4.0
    IL_00fd:  stloc.2
    IL_00fe:  ldloc.0
    IL_00ff:  brtrue.s   IL_0113

    IL_0101:  ldarg.0
    IL_0102:  ldarg.2
    IL_0103:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_0108:  ldarg.1
    IL_0109:  ldnull
    IL_010a:  ldc.i4.1
    IL_010b:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_0110:  stloc.0
    IL_0111:  ldc.i4.1
    IL_0112:  stloc.2
    IL_0113:  ldloc.2
    IL_0114:  brtrue.s   IL_011e

    IL_0116:  ldloc.0
    IL_0117:  callvirt   instance bool SpaceCraft.WorldObject::GetIsPlaced()
    IL_011c:  brfalse.s  IL_0135

    IL_011e:  ldloc.0
    IL_011f:  ldc.i4.0
    IL_0120:  callvirt   instance void SpaceCraft.WorldObject::SetDontSaveMe(bool)
    IL_0125:  ldloc.0
    IL_0126:  callvirt   instance void SpaceCraft.WorldObject::ResetPositionAndRotation()
    IL_012b:  ldarg.0
    IL_012c:  ldarg.1
    IL_012d:  ldarg.3
    IL_012e:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectGOOnAllClients(int32,
                                                                                                        float32)
    IL_0133:  ldc.i4.1
    IL_0134:  stloc.1
    IL_0135:  ldarg.0
    IL_0136:  ldloc.1
    IL_0137:  ldarg.s    rpcParams
    IL_0139:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_013e:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectFromSceneResultClientRpc(bool,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0143:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObjectFromSceneServerRpc

  .method public hidebysig instance void 
          DisableWorldObjectFromScene(class SpaceCraft.WorldObject worldObject,
                                      [opt] bool updateLists,
                                      [opt] valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 generateResourcePosition) cil managed
  {
    .param [2] = bool(false)
    .param [3] = nullref
    // Code size       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_000d:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0012:  ldarg.2
    IL_0013:  ldarg.3
    IL_0014:  call       instance void SpaceCraft.WorldObjectsHandler::DisableWorldObjectFromSceneServerRpc(int32,
                                                                                                            int32,
                                                                                                            bool,
                                                                                                            valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0019:  ret
  } // end of method WorldObjectsHandler::DisableWorldObjectFromScene

  .method public hidebysig instance void 
          DisableWorldObjectFromScene(int32 worldObjectId,
                                      int32 groupHash,
                                      [opt] bool updateLists,
                                      [opt] valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 generateResourcePosition) cil managed
  {
    .param [3] = bool(false)
    .param [4] = nullref
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    generateResourcePosition
    IL_0006:  call       instance void SpaceCraft.WorldObjectsHandler::DisableWorldObjectFromSceneServerRpc(int32,
                                                                                                            int32,
                                                                                                            bool,
                                                                                                            valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_000b:  ret
  } // end of method WorldObjectsHandler::DisableWorldObjectFromScene

  .method private hidebysig instance void 
          DisableWorldObjectFromSceneServerRpc(int32 worldObjectId,
                                               int32 groupHash,
                                               bool updateLists,
                                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 generateResourcePosition) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    // Code size       383 (0x17f)
    .maxstack  7
    .locals init (class SpaceCraft.WorldObject V_0,
             bool V_1,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_2
    IL_000a:  ldloc      V_2
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_2
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
    IL_003c:  brfalse    IL_00df

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x7279a150
    IL_0048:  ldloc      V_4
    IL_004c:  ldloca     V_5
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_5
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_5
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_3
    IL_007b:  ldloc      V_3
    IL_007f:  ldarg      worldObjectId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_3
    IL_008c:  ldarg      groupHash
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloca     V_3
    IL_0099:  ldarga     updateLists
    IL_009d:  ldloca     V_6
    IL_00a1:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a7:  ldloc      V_6
    IL_00ab:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b0:  ldloca     V_3
    IL_00b4:  ldarga     generateResourcePosition
    IL_00b8:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_00bd:  nop
    IL_00be:  ldarg.0
    IL_00bf:  ldloca     V_3
    IL_00c3:  ldc.i4     0x7279a150
    IL_00c8:  ldloc      V_4
    IL_00cc:  ldloc      V_5
    IL_00d0:  ldc.i4     0x2
    IL_00d5:  ldc.i4     0x0
    IL_00da:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00df:  nop
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e6:  ldc.i4     0x1
    IL_00eb:  ceq
    IL_00ed:  brtrue     IL_00f3

    IL_00f2:  ret

    IL_00f3:  nop
    IL_00f4:  ldarg.0
    IL_00f5:  ldc.i4     0x0
    IL_00fa:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00ff:  ldarg.0
    IL_0100:  ldarg.1
    IL_0101:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0106:  stloc.0
    IL_0107:  ldc.i4.0
    IL_0108:  stloc.1
    IL_0109:  ldloc.0
    IL_010a:  brtrue.s   IL_011e

    IL_010c:  ldarg.0
    IL_010d:  ldarg.2
    IL_010e:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_0113:  ldarg.1
    IL_0114:  ldnull
    IL_0115:  ldc.i4.1
    IL_0116:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_011b:  stloc.0
    IL_011c:  ldc.i4.1
    IL_011d:  stloc.1
    IL_011e:  ldloc.1
    IL_011f:  brtrue.s   IL_0129

    IL_0121:  ldloc.0
    IL_0122:  callvirt   instance bool SpaceCraft.WorldObject::GetIsPlaced()
    IL_0127:  brfalse.s  IL_017e

    IL_0129:  ldloc.0
    IL_012a:  ldc.i4.0
    IL_012b:  callvirt   instance void SpaceCraft.WorldObject::SetDontSaveMe(bool)
    IL_0130:  ldloc.0
    IL_0131:  callvirt   instance void SpaceCraft.WorldObject::ResetPositionAndRotation()
    IL_0136:  ldarg.3
    IL_0137:  brfalse.s  IL_0140

    IL_0139:  ldarg.0
    IL_013a:  ldloc.0
    IL_013b:  call       instance void SpaceCraft.WorldObjectsHandler::UpdateWorldObjectSaveState(class SpaceCraft.WorldObject)
    IL_0140:  ldarg.s    generateResourcePosition
    IL_0142:  call       valuetype [Unity.Mathematics]Unity.Mathematics.float3 [Unity.Mathematics]Unity.Mathematics.float3::op_Implicit(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0147:  call       float32 [Unity.Mathematics]Unity.Mathematics.math::length(valuetype [Unity.Mathematics]Unity.Mathematics.float3)
    IL_014c:  ldc.r4     1.1920929e-07
    IL_0151:  ble.un.s   IL_016d

    IL_0153:  ldarg.0
    IL_0154:  ldloc.0
    IL_0155:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_015a:  ldarg.s    generateResourcePosition
    IL_015c:  ldc.r4     0.0
    IL_0161:  ldc.i4.1
    IL_0162:  ldc.i4.1
    IL_0163:  ldc.r4     0.0
    IL_0168:  call       instance void SpaceCraft.WorldObjectsHandler::CreateAndDropOnFloor(class SpaceCraft.Group,
                                                                                            valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                            float32,
                                                                                            bool,
                                                                                            bool,
                                                                                            float32)
    IL_016d:  ldarg.0
    IL_016e:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::OnWorldObjectFromSceneDestroyed
    IL_0173:  dup
    IL_0174:  brtrue.s   IL_0178

    IL_0176:  pop
    IL_0177:  ret

    IL_0178:  ldloc.0
    IL_0179:  callvirt   instance void class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>::Invoke(!0)
    IL_017e:  ret
  } // end of method WorldObjectsHandler::DisableWorldObjectFromSceneServerRpc

  .method private hidebysig instance void 
          IsWorldObjectFromSceneActiveServerRpc(int32 worldObjectId,
                                                [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [2] = nullref
    // Code size       230 (0xe6)
    .maxstack  7
    .locals init (class SpaceCraft.WorldObject V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_1
    IL_000a:  ldloc      V_1
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_1
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x7e091f6d
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_3
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_3
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_3
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_2
    IL_007b:  ldloc      V_2
    IL_007f:  ldarg      worldObjectId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_2
    IL_008e:  ldc.i4     0x7e091f6d
    IL_0093:  ldarg      rpcParams
    IL_0097:  ldloc      V_3
    IL_009b:  ldc.i4     0x2
    IL_00a0:  ldc.i4     0x0
    IL_00a5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00aa:  nop
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00b1:  ldc.i4     0x1
    IL_00b6:  ceq
    IL_00b8:  brtrue     IL_00be

    IL_00bd:  ret

    IL_00be:  nop
    IL_00bf:  ldarg.0
    IL_00c0:  ldc.i4     0x0
    IL_00c5:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00ca:  ldarg.0
    IL_00cb:  ldarg.1
    IL_00cc:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_00d1:  stloc.0
    IL_00d2:  ldloc.0
    IL_00d3:  brfalse.s  IL_00e5

    IL_00d5:  ldloc.0
    IL_00d6:  callvirt   instance bool SpaceCraft.WorldObject::GetDontSaveMe()
    IL_00db:  brtrue.s   IL_00e5

    IL_00dd:  ldarg.0
    IL_00de:  ldarg.1
    IL_00df:  ldarg.2
    IL_00e0:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectGOOnClient(int32,
                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00e5:  ret
  } // end of method WorldObjectsHandler::IsWorldObjectFromSceneActiveServerRpc

  .method private hidebysig instance void 
          DestroyWorldObjectGOOnClient(int32 worldObjectId,
                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  ldarg.1
    IL_0004:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0009:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_000e:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0013:  ldc.r4     0.0
    IL_0018:  ldarg.2
    IL_0019:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_001e:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectGOClientRpc(int32,
                                                                                                     int32,
                                                                                                     float32,
                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0023:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObjectGOOnClient

  .method public hidebysig instance void 
          DestroyWorldObjectGOOnAllClients(int32 worldObjectId,
                                           [opt] float32 disolveTime) cil managed
  {
    .param [2] = float32(0.)
    // Code size       140 (0x8c)
    .maxstack  5
    .locals init (class SpaceCraft.WorldObject V_0,
             class [UnityEngine.CoreModule]UnityEngine.GameObject V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brtrue.s   IL_0016

    IL_000b:  ldstr      "WorldObjectsHandler Error: Trying to destroy a ser"
    + "ver unknown worldObject GameObject!"
    IL_0010:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
    IL_0015:  ret

    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  ldnull
    IL_001f:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0024:  brtrue.s   IL_0041

    IL_0026:  ldloc.1
    IL_0027:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.WorldUniqueId>()
    IL_002c:  ldnull
    IL_002d:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0032:  brfalse.s  IL_005f

    IL_0034:  ldloc.1
    IL_0035:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.WorldUniqueId>()
    IL_003a:  callvirt   instance int32 SpaceCraft.WorldUniqueId::GetWorldUniqueId()
    IL_003f:  brfalse.s  IL_005f

    IL_0041:  ldarg.0
    IL_0042:  ldarg.1
    IL_0043:  ldloc.0
    IL_0044:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0049:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_004e:  ldarg.2
    IL_004f:  ldloca.s   V_2
    IL_0051:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams
    IL_0057:  ldloc.2
    IL_0058:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectGOClientRpc(int32,
                                                                                                     int32,
                                                                                                     float32,
                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_005d:  br.s       IL_0084

    IL_005f:  ldloc.1
    IL_0060:  ldnull
    IL_0061:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0066:  brfalse.s  IL_0084

    IL_0068:  ldloc.1
    IL_0069:  ldc.i4.1
    IL_006a:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentInParent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>(bool)
    IL_006f:  ldnull
    IL_0070:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0075:  brfalse.s  IL_0084

    IL_0077:  ldloc.1
    IL_0078:  ldc.i4.1
    IL_0079:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentInParent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>(bool)
    IL_007e:  ldc.i4.1
    IL_007f:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::Despawn(bool)
    IL_0084:  ldloc.0
    IL_0085:  ldnull
    IL_0086:  callvirt   instance void SpaceCraft.WorldObject::SetGameObject(class [UnityEngine.CoreModule]UnityEngine.GameObject)
    IL_008b:  ret
  } // end of method WorldObjectsHandler::DestroyWorldObjectGOOnAllClients

  .method public hidebysig instance void 
          IsWorldObjectFromSceneActive(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  3
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0007:  ldloca.s   V_0
    IL_0009:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_000f:  ldloc.0
    IL_0010:  call       instance void SpaceCraft.WorldObjectsHandler::IsWorldObjectFromSceneActiveServerRpc(int32,
                                                                                                             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0015:  ret
  } // end of method WorldObjectsHandler::IsWorldObjectFromSceneActive

  .method public hidebysig instance void 
          RetrieveResourcesFromDeconstruction(class SpaceCraft.WorldObject wo,
                                              class SpaceCraft.Inventory playerInventory,
                                              valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 dropPosition,
                                              [opt] uint64 destroyingId) cil managed
  {
    .param [4] = uint64(0x0)
    // Code size       55 (0x37)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_000d:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0012:  ldarg.2
    IL_0013:  brfalse.s  IL_001d

    IL_0015:  ldarg.2
    IL_0016:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_001b:  br.s       IL_001e

    IL_001d:  ldc.i4.m1
    IL_001e:  ldarg.3
    IL_001f:  ldarg.s    destroyingId
    IL_0021:  brfalse.s  IL_0027

    IL_0023:  ldarg.s    destroyingId
    IL_0025:  br.s       IL_0031

    IL_0027:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_002c:  callvirt   instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_LocalClientId()
    IL_0031:  call       instance void SpaceCraft.WorldObjectsHandler::RetrieveResourcesFromDeconstructionServerRpc(int32,
                                                                                                                    int32,
                                                                                                                    int32,
                                                                                                                    valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                    uint64)
    IL_0036:  ret
  } // end of method WorldObjectsHandler::RetrieveResourcesFromDeconstruction

  .method private hidebysig instance void 
          RetrieveResourcesFromDeconstructionServerRpc(int32 woId,
                                                       int32 groupHash,
                                                       int32 playerInventoryId,
                                                       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 dropPosition,
                                                       uint64 destroyingClientId) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    // Code size       820 (0x334)
    .maxstack  7
    .locals init (class [mscorlib]System.Collections.Generic.List`1<int32> V_0,
             class [mscorlib]System.Collections.Generic.List`1<int32> V_1,
             class SpaceCraft.Group V_2,
             class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_3,
             class SpaceCraft.WorldObject V_4,
             class SpaceCraft.Inventory V_5,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group> V_6,
             class SpaceCraft.Group V_7,
             class SpaceCraft.Panel[] V_8,
             int32 V_9,
             class SpaceCraft.GroupConstructible V_10,
             class SpaceCraft.Group V_11,
             class SpaceCraft.Group V_12,
             class SpaceCraft.WorldObject V_13,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_14,
             class SpaceCraft.WorldObject V_15,
             class SpaceCraft.Group V_16,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_17,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_18,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_19,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_20)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_17
    IL_000a:  ldloc      V_17
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_17
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
    IL_003c:  brfalse    IL_00de

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x4ff9fc05
    IL_0048:  ldloc      V_19
    IL_004c:  ldloca     V_20
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_20
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_20
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_18
    IL_007b:  ldloc      V_18
    IL_007f:  ldarg      woId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_18
    IL_008c:  ldarg      groupHash
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloc      V_18
    IL_0099:  ldarg      playerInventoryId
    IL_009d:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00a2:  ldloca     V_18
    IL_00a6:  ldarga     dropPosition
    IL_00aa:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_00af:  ldloc      V_18
    IL_00b3:  ldarg      destroyingClientId
    IL_00b7:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   uint64)
    IL_00bc:  nop
    IL_00bd:  ldarg.0
    IL_00be:  ldloca     V_18
    IL_00c2:  ldc.i4     0x4ff9fc05
    IL_00c7:  ldloc      V_19
    IL_00cb:  ldloc      V_20
    IL_00cf:  ldc.i4     0x2
    IL_00d4:  ldc.i4     0x0
    IL_00d9:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00de:  nop
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e5:  ldc.i4     0x1
    IL_00ea:  ceq
    IL_00ec:  brtrue     IL_00f2

    IL_00f1:  ret

    IL_00f2:  nop
    IL_00f3:  ldarg.0
    IL_00f4:  ldc.i4     0x0
    IL_00f9:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00fe:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.GameSettingsHandler>()
    IL_0103:  callvirt   instance class SpaceCraft.JsonableGameState SpaceCraft.GameSettingsHandler::GetCurrentGameSettings()
    IL_0108:  callvirt   instance bool SpaceCraft.JsonableGameState::GetFreeCraft()
    IL_010d:  brfalse.s  IL_0110

    IL_010f:  ret

    IL_0110:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0115:  stloc.0
    IL_0116:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_011b:  stloc.1
    IL_011c:  ldarg.2
    IL_011d:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_0122:  stloc.2
    IL_0123:  ldloc.2
    IL_0124:  callvirt   instance class SpaceCraft.Recipe SpaceCraft.Group::GetRecipe()
    IL_0129:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.Recipe::GetIngredientsGroupInRecipe()
    IL_012e:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0133:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0138:  stloc.3
    IL_0139:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::GetEnumerator()
    IL_013e:  stloc.s    V_6
    .try
    {
      IL_0140:  br.s       IL_015c

      IL_0142:  ldloca.s   V_6
      IL_0144:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::get_Current()
      IL_0149:  stloc.s    V_7
      IL_014b:  ldloc.3
      IL_014c:  ldarg.0
      IL_014d:  ldloc.s    V_7
      IL_014f:  ldc.i4.0
      IL_0150:  ldnull
      IL_0151:  ldc.i4.1
      IL_0152:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                      int32,
                                                                                                                      class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                      bool)
      IL_0157:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
      IL_015c:  ldloca.s   V_6
      IL_015e:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::MoveNext()
      IL_0163:  brtrue.s   IL_0142

      IL_0165:  leave.s    IL_0175

    }  // end .try
    finally
    {
      IL_0167:  ldloca.s   V_6
      IL_0169:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>
      IL_016f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0174:  endfinally
    }  // end handler
    IL_0175:  ldarg.0
    IL_0176:  ldarg.1
    IL_0177:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_017c:  stloc.s    V_4
    IL_017e:  ldloc.s    V_4
    IL_0180:  brfalse    IL_020d

    IL_0185:  ldloc.s    V_4
    IL_0187:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_018c:  ldnull
    IL_018d:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0192:  brfalse.s  IL_020d

    IL_0194:  ldloc.s    V_4
    IL_0196:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_019b:  callvirt   instance !!0[] [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentsInChildren<class SpaceCraft.Panel>()
    IL_01a0:  stloc.s    V_8
    IL_01a2:  ldc.i4.0
    IL_01a3:  stloc.s    V_9
    IL_01a5:  br.s       IL_0205

    IL_01a7:  ldloc.s    V_8
    IL_01a9:  ldloc.s    V_9
    IL_01ab:  ldelem.ref
    IL_01ac:  callvirt   instance class SpaceCraft.GroupConstructible SpaceCraft.Panel::GetPanelGroupConstructible()
    IL_01b1:  stloc.s    V_10
    IL_01b3:  ldloc.s    V_10
    IL_01b5:  brfalse.s  IL_01ff

    IL_01b7:  ldloc.s    V_10
    IL_01b9:  callvirt   instance class SpaceCraft.Recipe SpaceCraft.Group::GetRecipe()
    IL_01be:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.Recipe::GetIngredientsGroupInRecipe()
    IL_01c3:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::GetEnumerator()
    IL_01c8:  stloc.s    V_6
    .try
    {
      IL_01ca:  br.s       IL_01e6

      IL_01cc:  ldloca.s   V_6
      IL_01ce:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::get_Current()
      IL_01d3:  stloc.s    V_11
      IL_01d5:  ldloc.3
      IL_01d6:  ldarg.0
      IL_01d7:  ldloc.s    V_11
      IL_01d9:  ldc.i4.0
      IL_01da:  ldnull
      IL_01db:  ldc.i4.1
      IL_01dc:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                      int32,
                                                                                                                      class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                      bool)
      IL_01e1:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
      IL_01e6:  ldloca.s   V_6
      IL_01e8:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::MoveNext()
      IL_01ed:  brtrue.s   IL_01cc

      IL_01ef:  leave.s    IL_01ff

    }  // end .try
    finally
    {
      IL_01f1:  ldloca.s   V_6
      IL_01f3:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>
      IL_01f9:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_01fe:  endfinally
    }  // end handler
    IL_01ff:  ldloc.s    V_9
    IL_0201:  ldc.i4.1
    IL_0202:  add
    IL_0203:  stloc.s    V_9
    IL_0205:  ldloc.s    V_9
    IL_0207:  ldloc.s    V_8
    IL_0209:  ldlen
    IL_020a:  conv.i4
    IL_020b:  blt.s      IL_01a7

    IL_020d:  ldloc.2
    IL_020e:  callvirt   instance bool SpaceCraft.Group::GetLootRecipeOnDeconstruct()
    IL_0213:  brfalse.s  IL_025b

    IL_0215:  ldloc.2
    IL_0216:  callvirt   instance bool SpaceCraft.Group::GetIsGloballyUnlocked()
    IL_021b:  brtrue.s   IL_025b

    IL_021d:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.UnlockingHandler>()
    IL_0222:  callvirt   instance class SpaceCraft.GroupData SpaceCraft.UnlockingHandler::GetBlueprintGroupData()
    IL_0227:  ldfld      string SpaceCraft.GroupData::id
    IL_022c:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupViaId(string)
    IL_0231:  stloc.s    V_12
    IL_0233:  ldarg.0
    IL_0234:  ldloc.s    V_12
    IL_0236:  ldc.i4.0
    IL_0237:  ldnull
    IL_0238:  ldc.i4.1
    IL_0239:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_023e:  stloc.s    V_13
    IL_0240:  ldloc.s    V_13
    IL_0242:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::.ctor()
    IL_0247:  dup
    IL_0248:  ldloc.2
    IL_0249:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::Add(!0)
    IL_024e:  callvirt   instance void SpaceCraft.WorldObject::SetLinkedGroups(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>)
    IL_0253:  ldloc.3
    IL_0254:  ldloc.s    V_13
    IL_0256:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
    IL_025b:  ldarg.3
    IL_025c:  ldc.i4.m1
    IL_025d:  beq.s      IL_026c

    IL_025f:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0264:  ldarg.3
    IL_0265:  callvirt   instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_026a:  br.s       IL_026d

    IL_026c:  ldnull
    IL_026d:  stloc.s    V_5
    IL_026f:  ldloc.3
    IL_0270:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0275:  stloc.s    V_14
    .try
    {
      IL_0277:  br.s       IL_02ef

      IL_0279:  ldloca.s   V_14
      IL_027b:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_0280:  stloc.s    V_15
      IL_0282:  ldloc.s    V_15
      IL_0284:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_0289:  stloc.s    V_16
      IL_028b:  ldloc.s    V_5
      IL_028d:  brfalse.s  IL_0298

      IL_028f:  ldloc.s    V_5
      IL_0291:  callvirt   instance bool SpaceCraft.Inventory::IsFull()
      IL_0296:  brfalse.s  IL_02d2

      IL_0298:  ldarg.0
      IL_0299:  ldloc.s    V_15
      IL_029b:  ldarg.s    dropPosition
      IL_029d:  ldc.r4     0.0
      IL_02a2:  ldc.r4     1.
      IL_02a7:  ldc.r4     0.0
      IL_02ac:  newobj     instance void [UnityEngine.CoreModule]UnityEngine.Vector3::.ctor(float32,
                                                                                            float32,
                                                                                            float32)
      IL_02b1:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::op_Addition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                          valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
      IL_02b6:  ldc.r4     0.0
      IL_02bb:  ldc.i4.1
      IL_02bc:  ldc.i4.1
      IL_02bd:  ldc.i4.0
      IL_02be:  call       instance void SpaceCraft.WorldObjectsHandler::DropOnFloor(class SpaceCraft.WorldObject,
                                                                                     valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                     float32,
                                                                                     bool,
                                                                                     bool,
                                                                                     int32)
      IL_02c3:  ldloc.0
      IL_02c4:  ldloc.s    V_16
      IL_02c6:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
      IL_02cb:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
      IL_02d0:  br.s       IL_02ef

      IL_02d2:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
      IL_02d7:  ldloc.s    V_15
      IL_02d9:  ldloc.s    V_5
      IL_02db:  ldc.i4.1
      IL_02dc:  ldnull
      IL_02dd:  callvirt   instance void SpaceCraft.InventoriesHandler::AddItemToInventory(class SpaceCraft.WorldObject,
                                                                                           class SpaceCraft.Inventory,
                                                                                           bool,
                                                                                           class [mscorlib]System.Action`1<bool>)
      IL_02e2:  ldloc.1
      IL_02e3:  ldloc.s    V_16
      IL_02e5:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
      IL_02ea:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
      IL_02ef:  ldloca.s   V_14
      IL_02f1:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_02f6:  brtrue.s   IL_0279

      IL_02f8:  leave.s    IL_0308

    }  // end .try
    finally
    {
      IL_02fa:  ldloca.s   V_14
      IL_02fc:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_0302:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0307:  endfinally
    }  // end handler
    IL_0308:  ldloc.0
    IL_0309:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Count()
    IL_030e:  ldc.i4.0
    IL_030f:  bgt.s      IL_031a

    IL_0311:  ldloc.1
    IL_0312:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0317:  ldc.i4.0
    IL_0318:  ble.s      IL_0333

    IL_031a:  ldarg.0
    IL_031b:  ldloc.0
    IL_031c:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<int32>::ToArray()
    IL_0321:  ldloc.1
    IL_0322:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<int32>::ToArray()
    IL_0327:  ldarg.s    destroyingClientId
    IL_0329:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(uint64)
    IL_032e:  call       instance void SpaceCraft.WorldObjectsHandler::DisplayDeconstructResultClientRpc(int32[],
                                                                                                         int32[],
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0333:  ret
  } // end of method WorldObjectsHandler::RetrieveResourcesFromDeconstructionServerRpc

  .method private hidebysig instance void 
          DisplayDeconstructResultClientRpc(int32[] dropped,
                                            int32[] stored,
                                            [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [3] = nullref
    // Code size       467 (0x1d3)
    .maxstack  5
    .locals init (class SpaceCraft.InformationsDisplayer V_0,
             float32 V_1,
             int32[] V_2,
             int32 V_3,
             class SpaceCraft.Group V_4,
             class SpaceCraft.Group V_5,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_7,
             bool V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_10,
             bool V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_12,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_13)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_6
    IL_000a:  ldloc      V_6
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_6
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
    IL_003c:  brfalse    IL_0125

    IL_0041:  ldloc      V_6
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_6
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_0125

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0xa2af2c9b
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_7
    IL_0076:  ldarg      dropped
    IL_007a:  ldnull
    IL_007b:  cgt.un
    IL_007d:  stloc      V_8
    IL_0081:  ldloca     V_7
    IL_0085:  ldloca     V_8
    IL_0089:  ldloca     V_9
    IL_008d:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0093:  ldloc      V_9
    IL_0097:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_009c:  ldloc      V_8
    IL_00a0:  brfalse    IL_00c0

    IL_00a5:  ldloca     V_7
    IL_00a9:  ldarg      dropped
    IL_00ad:  ldloca     V_10
    IL_00b1:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00b7:  ldloc      V_10
    IL_00bb:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00c0:  nop
    IL_00c1:  ldarg      stored
    IL_00c5:  ldnull
    IL_00c6:  cgt.un
    IL_00c8:  stloc      V_11
    IL_00cc:  ldloca     V_7
    IL_00d0:  ldloca     V_11
    IL_00d4:  ldloca     V_12
    IL_00d8:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00de:  ldloc      V_12
    IL_00e2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00e7:  ldloc      V_11
    IL_00eb:  brfalse    IL_010b

    IL_00f0:  ldloca     V_7
    IL_00f4:  ldarg      stored
    IL_00f8:  ldloca     V_13
    IL_00fc:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0102:  ldloc      V_13
    IL_0106:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_010b:  nop
    IL_010c:  nop
    IL_010d:  ldarg.0
    IL_010e:  ldloca     V_7
    IL_0112:  ldc.i4     0xa2af2c9b
    IL_0117:  ldarg      clientRpcParams
    IL_011b:  ldc.i4     0x0
    IL_0120:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0125:  nop
    IL_0126:  ldarg.0
    IL_0127:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_012c:  ldc.i4     0x1
    IL_0131:  ceq
    IL_0133:  brfalse    IL_0154

    IL_0138:  ldloc      V_6
    IL_013c:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_0141:  brtrue     IL_0155

    IL_0146:  ldloc      V_6
    IL_014a:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_014f:  brtrue     IL_0155

    IL_0154:  ret

    IL_0155:  nop
    IL_0156:  ldarg.0
    IL_0157:  ldc.i4     0x0
    IL_015c:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0161:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.DisplayersHandler>()
    IL_0166:  callvirt   instance class SpaceCraft.InformationsDisplayer SpaceCraft.DisplayersHandler::GetInformationsDisplayer()
    IL_016b:  stloc.0
    IL_016c:  ldc.r4     2.5
    IL_0171:  stloc.1
    IL_0172:  ldarg.1
    IL_0173:  stloc.2
    IL_0174:  ldc.i4.0
    IL_0175:  stloc.3
    IL_0176:  br.s       IL_019c

    IL_0178:  ldloc.2
    IL_0179:  ldloc.3
    IL_017a:  ldelem.i4
    IL_017b:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_0180:  stloc.s    V_4
    IL_0182:  ldloc.0
    IL_0183:  ldloc.1
    IL_0184:  ldloc.s    V_4
    IL_0186:  call       string SpaceCraft.Readable::GetGroupName(class SpaceCraft.Group)
    IL_018b:  ldc.i4.1
    IL_018c:  ldloc.s    V_4
    IL_018e:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Sprite SpaceCraft.Group::GetImage()
    IL_0193:  callvirt   instance void SpaceCraft.InformationsDisplayer::AddInformation(float32,
                                                                                        string,
                                                                                        valuetype SpaceCraft.DataConfig/UiInformationsType,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Sprite)
    IL_0198:  ldloc.3
    IL_0199:  ldc.i4.1
    IL_019a:  add
    IL_019b:  stloc.3
    IL_019c:  ldloc.3
    IL_019d:  ldloc.2
    IL_019e:  ldlen
    IL_019f:  conv.i4
    IL_01a0:  blt.s      IL_0178

    IL_01a2:  ldarg.2
    IL_01a3:  stloc.2
    IL_01a4:  ldc.i4.0
    IL_01a5:  stloc.3
    IL_01a6:  br.s       IL_01cc

    IL_01a8:  ldloc.2
    IL_01a9:  ldloc.3
    IL_01aa:  ldelem.i4
    IL_01ab:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_01b0:  stloc.s    V_5
    IL_01b2:  ldloc.0
    IL_01b3:  ldloc.1
    IL_01b4:  ldloc.s    V_5
    IL_01b6:  call       string SpaceCraft.Readable::GetGroupName(class SpaceCraft.Group)
    IL_01bb:  ldc.i4.2
    IL_01bc:  ldloc.s    V_5
    IL_01be:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Sprite SpaceCraft.Group::GetImage()
    IL_01c3:  callvirt   instance void SpaceCraft.InformationsDisplayer::AddInformation(float32,
                                                                                        string,
                                                                                        valuetype SpaceCraft.DataConfig/UiInformationsType,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Sprite)
    IL_01c8:  ldloc.3
    IL_01c9:  ldc.i4.1
    IL_01ca:  add
    IL_01cb:  stloc.3
    IL_01cc:  ldloc.3
    IL_01cd:  ldloc.2
    IL_01ce:  ldlen
    IL_01cf:  conv.i4
    IL_01d0:  blt.s      IL_01a8

    IL_01d2:  ret
  } // end of method WorldObjectsHandler::DisplayDeconstructResultClientRpc

  .method public hidebysig instance class [UnityEngine.CoreModule]UnityEngine.GameObject 
          InstantiateWorldObject(class SpaceCraft.WorldObject worldObject,
                                 bool fromDb,
                                 [opt] uint64 owner) cil managed
  {
    .param [3] = uint64(0x0)
    // Code size       1039 (0x40f)
    .maxstack  9
    .locals init (class SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0' V_0,
             class [UnityEngine.CoreModule]UnityEngine.GameObject V_1,
             class [UnityEngine.CoreModule]UnityEngine.GameObject V_2,
             class SpaceCraft.WorldObjectAssociated V_3,
             int32 V_4,
             class [mscorlib]System.Action`1<class SpaceCraft.Inventory> V_5,
             class SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1' V_6,
             class SpaceCraft.GroupConstructible V_7)
    IL_0000:  newobj     instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_000d:  ldloc.0
    IL_000e:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0013:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0018:  brtrue.s   IL_001c

    IL_001a:  ldnull
    IL_001b:  ret

    IL_001c:  ldloc.0
    IL_001d:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0022:  ldarg.2
    IL_0023:  callvirt   instance void SpaceCraft.WorldObject::SetIsFromDb(bool)
    IL_0028:  ldloc.0
    IL_0029:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_002e:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0033:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.Group::GetAssociatedGameObject()
    IL_0038:  stloc.1
    IL_0039:  ldloc.1
    IL_003a:  ldnull
    IL_003b:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0040:  brfalse.s  IL_0044

    IL_0042:  ldnull
    IL_0043:  ret

    IL_0044:  ldloc.0
    IL_0045:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_004a:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_004f:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.Group::GetAssociatedGameObject()
    IL_0054:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>()
    IL_0059:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Implicit(class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_005e:  brfalse.s  IL_00d9

    IL_0060:  ldloc.0
    IL_0061:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0066:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_006b:  call       bool SpaceCraft.WorldObjectsIdHandler::IsWorldObjectFromScene(int32)
    IL_0070:  brfalse.s  IL_0074

    IL_0072:  ldnull
    IL_0073:  ret

    IL_0074:  ldloc.1
    IL_0075:  ldloc.0
    IL_0076:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_007b:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::GetPosition()
    IL_0080:  ldloc.0
    IL_0081:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0086:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.WorldObject::GetRotation()
    IL_008b:  call       !!0 [UnityEngine.CoreModule]UnityEngine.Object::Instantiate<class [UnityEngine.CoreModule]UnityEngine.GameObject>(!!0,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion)
    IL_0090:  stloc.2
    IL_0091:  ldloc.2
    IL_0092:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkBase>()
    IL_0097:  ldnull
    IL_0098:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_009d:  brfalse.s  IL_00ba

    IL_009f:  ldloc.2
    IL_00a0:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkBase>()
    IL_00a5:  ldloc.0
    IL_00a6:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_00ab:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_00b0:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_00b5:  callvirt   instance void SpaceCraft.GroupNetworkBase::SetGroup(int32)
    IL_00ba:  ldloc.2
    IL_00bb:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.WorldObjectAssociated>()
    IL_00c0:  stloc.3
    IL_00c1:  ldloc.3
    IL_00c2:  ldnull
    IL_00c3:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_00c8:  brfalse    IL_0163

    IL_00cd:  ldloc.2
    IL_00ce:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::AddComponent<class SpaceCraft.WorldObjectAssociated>()
    IL_00d3:  stloc.3
    IL_00d4:  br         IL_0163

    IL_00d9:  ldloc.0
    IL_00da:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_00df:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_00e4:  callvirt   instance int32 SpaceCraft.Group::GetInventorySize()
    IL_00e9:  ldc.i4.0
    IL_00ea:  bgt.s      IL_00ff

    IL_00ec:  ldarg.2
    IL_00ed:  brtrue.s   IL_00f7

    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObjectsHandler::_groupNetworkContainer
    IL_00f5:  br.s       IL_0105

    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObjectsHandler::_groupNetworkContainerStatic
    IL_00fd:  br.s       IL_0105

    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObjectsHandler::_groupNetworkContainerWithInventory
    IL_0105:  ldloc.0
    IL_0106:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_010b:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::GetPosition()
    IL_0110:  ldloc.0
    IL_0111:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0116:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.WorldObject::GetRotation()
    IL_011b:  call       !!0 [UnityEngine.CoreModule]UnityEngine.Object::Instantiate<class [UnityEngine.CoreModule]UnityEngine.GameObject>(!!0,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                           valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion)
    IL_0120:  stloc.2
    IL_0121:  ldloc.2
    IL_0122:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkContainer>()
    IL_0127:  ldloc.0
    IL_0128:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_012d:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0132:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0137:  callvirt   instance void SpaceCraft.GroupNetworkBase::SetGroup(int32)
    IL_013c:  ldloc.2
    IL_013d:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentInChildren<class SpaceCraft.WorldObjectAssociated>()
    IL_0142:  stloc.3
    IL_0143:  ldloc.3
    IL_0144:  ldnull
    IL_0145:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_014a:  brfalse.s  IL_0163

    IL_014c:  ldloc.2
    IL_014d:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.GameObject::get_transform()
    IL_0152:  ldc.i4.0
    IL_0153:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Transform::GetChild(int32)
    IL_0158:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_015d:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::AddComponent<class SpaceCraft.WorldObjectAssociated>()
    IL_0162:  stloc.3
    IL_0163:  ldloc.0
    IL_0164:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0169:  ldloc.2
    IL_016a:  callvirt   instance void SpaceCraft.WorldObject::SetGameObject(class [UnityEngine.CoreModule]UnityEngine.GameObject)
    IL_016f:  ldloc.3
    IL_0170:  ldloc.0
    IL_0171:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0176:  callvirt   instance void SpaceCraft.WorldObjectAssociated::SetWorldObject(class SpaceCraft.WorldObject)
    IL_017b:  ldloc.0
    IL_017c:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0181:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0186:  callvirt   instance int32 SpaceCraft.Group::GetInventorySize()
    IL_018b:  ldc.i4.0
    IL_018c:  ble.s      IL_01c4

    IL_018e:  ldloc.0
    IL_018f:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0194:  callvirt   instance int32 SpaceCraft.WorldObject::GetLinkedInventoryId()
    IL_0199:  brtrue.s   IL_01c4

    IL_019b:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_01a0:  ldloc.0
    IL_01a1:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_01a6:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_01ab:  callvirt   instance int32 SpaceCraft.Group::GetInventorySize()
    IL_01b0:  ldc.i4.0
    IL_01b1:  ldloc.0
    IL_01b2:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_01b7:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_01bc:  ldnull
    IL_01bd:  ldnull
    IL_01be:  ldnull
    IL_01bf:  callvirt   instance void SpaceCraft.InventoriesHandler::CreateNewInventory(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>,
                                                                                         class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>,
                                                                                         class [mscorlib]System.Action`1<class SpaceCraft.Inventory>)
    IL_01c4:  ldloc.0
    IL_01c5:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_01ca:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_01cf:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.Group::GetSecondaryInventoriesSize()
    IL_01d4:  brfalse    IL_026d

    IL_01d9:  ldloc.0
    IL_01da:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_01df:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_01e4:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.Group::GetSecondaryInventoriesSize()
    IL_01e9:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Count()
    IL_01ee:  ldc.i4.0
    IL_01ef:  ble.s      IL_026d

    IL_01f1:  ldloc.0
    IL_01f2:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_01f7:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::GetSecondaryInventoriesId()
    IL_01fc:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0201:  brtrue.s   IL_026d

    IL_0203:  ldc.i4.0
    IL_0204:  stloc.s    V_4
    IL_0206:  br.s       IL_0254

    IL_0208:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_020d:  ldloc.0
    IL_020e:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0213:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0218:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.Group::GetSecondaryInventoriesSize()
    IL_021d:  ldloc.s    V_4
    IL_021f:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0224:  ldc.i4.0
    IL_0225:  ldc.i4.0
    IL_0226:  ldnull
    IL_0227:  ldnull
    IL_0228:  ldloc.0
    IL_0229:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.Inventory> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::'<>9__0'
    IL_022e:  dup
    IL_022f:  brtrue.s   IL_0249

    IL_0231:  pop
    IL_0232:  ldloc.0
    IL_0233:  ldloc.0
    IL_0234:  ldftn      instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::'<InstantiateWorldObject>b__0'(class SpaceCraft.Inventory)
    IL_023a:  newobj     instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::.ctor(object,
                                                                                                          native int)
    IL_023f:  dup
    IL_0240:  stloc.s    V_5
    IL_0242:  stfld      class [mscorlib]System.Action`1<class SpaceCraft.Inventory> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::'<>9__0'
    IL_0247:  ldloc.s    V_5
    IL_0249:  callvirt   instance void SpaceCraft.InventoriesHandler::CreateNewInventory(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>,
                                                                                         class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>,
                                                                                         class [mscorlib]System.Action`1<class SpaceCraft.Inventory>)
    IL_024e:  ldloc.s    V_4
    IL_0250:  ldc.i4.1
    IL_0251:  add
    IL_0252:  stloc.s    V_4
    IL_0254:  ldloc.s    V_4
    IL_0256:  ldloc.0
    IL_0257:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_025c:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0261:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.Group::GetSecondaryInventoriesSize()
    IL_0266:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Count()
    IL_026b:  blt.s      IL_0208

    IL_026d:  ldloc.0
    IL_026e:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0273:  callvirt   instance int32 SpaceCraft.WorldObject::GetLinkedInventoryId()
    IL_0278:  brfalse    IL_0324

    IL_027d:  newobj     instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1'::.ctor()
    IL_0282:  stloc.s    V_6
    IL_0284:  ldloc.s    V_6
    IL_0286:  ldloc.2
    IL_0287:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.InventoryAssociated>()
    IL_028c:  stfld      class SpaceCraft.InventoryAssociated SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1'::assoInventory
    IL_0291:  ldloc.s    V_6
    IL_0293:  ldfld      class SpaceCraft.InventoryAssociated SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1'::assoInventory
    IL_0298:  ldnull
    IL_0299:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_029e:  brfalse.s  IL_02bb

    IL_02a0:  ldloc.2
    IL_02a1:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkContainer>()
    IL_02a6:  ldnull
    IL_02a7:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_02ac:  brfalse.s  IL_02bb

    IL_02ae:  ldloc.s    V_6
    IL_02b0:  ldloc.2
    IL_02b1:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentInChildren<class SpaceCraft.InventoryAssociated>()
    IL_02b6:  stfld      class SpaceCraft.InventoryAssociated SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1'::assoInventory
    IL_02bb:  ldloc.s    V_6
    IL_02bd:  ldfld      class SpaceCraft.InventoryAssociated SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1'::assoInventory
    IL_02c2:  ldnull
    IL_02c3:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_02c8:  brfalse.s  IL_02d7

    IL_02ca:  ldloc.s    V_6
    IL_02cc:  ldloc.2
    IL_02cd:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::AddComponent<class SpaceCraft.InventoryAssociated>()
    IL_02d2:  stfld      class SpaceCraft.InventoryAssociated SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1'::assoInventory
    IL_02d7:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_02dc:  ldloc.0
    IL_02dd:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_02e2:  callvirt   instance int32 SpaceCraft.WorldObject::GetLinkedInventoryId()
    IL_02e7:  ldloc.s    V_6
    IL_02e9:  ldftn      instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1'::'<InstantiateWorldObject>b__1'(class SpaceCraft.Inventory)
    IL_02ef:  newobj     instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::.ctor(object,
                                                                                                          native int)
    IL_02f4:  ldnull
    IL_02f5:  callvirt   instance void SpaceCraft.InventoriesHandler::GetInventoryById(int32,
                                                                                       class [mscorlib]System.Action`1<class SpaceCraft.Inventory>,
                                                                                       class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>)
    IL_02fa:  ldarg.2
    IL_02fb:  brtrue.s   IL_0324

    IL_02fd:  ldloc.2
    IL_02fe:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentInChildren<class SpaceCraft.InventoryFromScene>()
    IL_0303:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Implicit(class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0308:  brfalse.s  IL_0324

    IL_030a:  ldloc.2
    IL_030b:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkContainer>()
    IL_0310:  ldnull
    IL_0311:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0316:  brfalse.s  IL_0324

    IL_0318:  ldloc.s    V_6
    IL_031a:  ldfld      class SpaceCraft.InventoryAssociated SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_1'::assoInventory
    IL_031f:  callvirt   instance void SpaceCraft.InventoryAssociated::PopulateRandomInventory()
    IL_0324:  ldloc.0
    IL_0325:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_032a:  callvirt   instance bool SpaceCraft.WorldObject::HasUnitGeneration()
    IL_032f:  brfalse.s  IL_0346

    IL_0331:  ldloc.2
    IL_0332:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.ActionnableShowInfos>()
    IL_0337:  ldnull
    IL_0338:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_033d:  brfalse.s  IL_0346

    IL_033f:  ldloc.2
    IL_0340:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::AddComponent<class SpaceCraft.ActionnableShowInfos>()
    IL_0345:  pop
    IL_0346:  ldloc.0
    IL_0347:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_034c:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0351:  isinst     SpaceCraft.GroupConstructible
    IL_0356:  brfalse.s  IL_039d

    IL_0358:  ldloc.0
    IL_0359:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_035e:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0363:  castclass  SpaceCraft.GroupConstructible
    IL_0368:  stloc.s    V_7
    IL_036a:  ldarg.0
    IL_036b:  ldloc.0
    IL_036c:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0371:  ldloc.2
    IL_0372:  call       instance void SpaceCraft.WorldObjectsHandler::SetPanelsForNewlyInstantiatedWorldObject(class SpaceCraft.WorldObject,
                                                                                                                class [UnityEngine.CoreModule]UnityEngine.GameObject)
    IL_0377:  ldarg.2
    IL_0378:  brtrue.s   IL_0381

    IL_037a:  ldarg.0
    IL_037b:  ldloc.2
    IL_037c:  call       instance void SpaceCraft.WorldObjectsHandler::ChangeContingousPanels(class [UnityEngine.CoreModule]UnityEngine.GameObject)
    IL_0381:  ldarg.2
    IL_0382:  brtrue.s   IL_039d

    IL_0384:  ldloc.s    V_7
    IL_0386:  ldc.i4.2
    IL_0387:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_038c:  ldc.r4     0.0
    IL_0391:  beq.s      IL_039d

    IL_0393:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.RequireEnergyHandler>()
    IL_0398:  callvirt   instance void SpaceCraft.RequireEnergyHandler::UpdateAllEnergyRequester()
    IL_039d:  ldarg.3
    IL_039e:  ldc.i4.0
    IL_039f:  conv.i8
    IL_03a0:  ble.un.s   IL_03d8

    IL_03a2:  ldloc.2
    IL_03a3:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkContainer>()
    IL_03a8:  ldnull
    IL_03a9:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_03ae:  brtrue.s   IL_03bd

    IL_03b0:  ldloc.2
    IL_03b1:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkContainer>()
    IL_03b6:  callvirt   instance bool SpaceCraft.GroupNetworkContainer::GetKeepServerOwnership()
    IL_03bb:  brtrue.s   IL_03d8

    IL_03bd:  ldloc.2
    IL_03be:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>()
    IL_03c3:  ldarg.3
    IL_03c4:  ldc.i4.1
    IL_03c5:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::SpawnWithOwnership(uint64,
                                                                                                              bool)
    IL_03ca:  ldloc.2
    IL_03cb:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>()
    IL_03d0:  ldc.i4.1
    IL_03d1:  stfld      bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::DontDestroyWithOwner
    IL_03d6:  br.s       IL_03e4

    IL_03d8:  ldloc.2
    IL_03d9:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>()
    IL_03de:  ldc.i4.1
    IL_03df:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::Spawn(bool)
    IL_03e4:  ldloc.2
    IL_03e5:  ldloc.0
    IL_03e6:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_03eb:  callvirt   instance int32 SpaceCraft.WorldObject::GetPlanetHash()
    IL_03f0:  ldarg.0
    IL_03f1:  ldfld      int32 SpaceCraft.WorldObjectsHandler::_currentPlanetHash
    IL_03f6:  ceq
    IL_03f8:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.GameObject::SetActive(bool)
    IL_03fd:  ldsfld     class SpaceCraft.LogisticInterplanetaryManager SpaceCraft.LogisticInterplanetaryManager::Instance
    IL_0402:  ldloc.0
    IL_0403:  ldfld      class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass90_0'::worldObject
    IL_0408:  callvirt   instance void SpaceCraft.LogisticInterplanetaryManager::AddWorldObject(class SpaceCraft.WorldObject)
    IL_040d:  ldloc.2
    IL_040e:  ret
  } // end of method WorldObjectsHandler::InstantiateWorldObject

  .method private hidebysig instance void 
          CreateAndInstantiateWorldObjectServerRpc(int32 groupHash,
                                                   valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                                   valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                                                   bool disolve,
                                                   bool checkSpawnPosition,
                                                   bool save,
                                                   bool addDeconstructIcon,
                                                   [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [8] = nullref
    // Code size       499 (0x1f3)
    .maxstack  7
    .locals init (class SpaceCraft.Group V_0,
             class SpaceCraft.WorldObject V_1,
             class [UnityEngine.CoreModule]UnityEngine.GameObject V_2,
             class SpaceCraft.GroupItem V_3,
             class SpaceCraft.GroupNetworkBase V_4,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_10,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_11)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_5
    IL_000a:  ldloc      V_5
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_5
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
    IL_003c:  brfalse    IL_0130

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xc8b34296
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_7
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_7
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_7
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_6
    IL_007b:  ldloc      V_6
    IL_007f:  ldarg      groupHash
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloca     V_6
    IL_008c:  ldarga     position
    IL_0090:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_0095:  ldloca     V_6
    IL_0099:  ldarga     rotation
    IL_009d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion&)
    IL_00a2:  ldloca     V_6
    IL_00a6:  ldarga     disolve
    IL_00aa:  ldloca     V_8
    IL_00ae:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00b4:  ldloc      V_8
    IL_00b8:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00bd:  ldloca     V_6
    IL_00c1:  ldarga     checkSpawnPosition
    IL_00c5:  ldloca     V_9
    IL_00c9:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00cf:  ldloc      V_9
    IL_00d3:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00d8:  ldloca     V_6
    IL_00dc:  ldarga     save
    IL_00e0:  ldloca     V_10
    IL_00e4:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00ea:  ldloc      V_10
    IL_00ee:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00f3:  ldloca     V_6
    IL_00f7:  ldarga     addDeconstructIcon
    IL_00fb:  ldloca     V_11
    IL_00ff:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0105:  ldloc      V_11
    IL_0109:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_010e:  nop
    IL_010f:  ldarg.0
    IL_0110:  ldloca     V_6
    IL_0114:  ldc.i4     0xc8b34296
    IL_0119:  ldarg      rpcParams
    IL_011d:  ldloc      V_7
    IL_0121:  ldc.i4     0x2
    IL_0126:  ldc.i4     0x0
    IL_012b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0130:  nop
    IL_0131:  ldarg.0
    IL_0132:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0137:  ldc.i4     0x1
    IL_013c:  ceq
    IL_013e:  brtrue     IL_0144

    IL_0143:  ret

    IL_0144:  nop
    IL_0145:  ldarg.0
    IL_0146:  ldc.i4     0x0
    IL_014b:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0150:  ldarg.s    checkSpawnPosition
    IL_0152:  brfalse.s  IL_016d

    IL_0154:  ldarg.0
    IL_0155:  ldarg.2
    IL_0156:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectAtPosition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_015b:  brfalse.s  IL_016d

    IL_015d:  ldarg.0
    IL_015e:  ldc.i4.0
    IL_015f:  conv.i8
    IL_0160:  ldarg.s    rpcParams
    IL_0162:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0167:  call       instance void SpaceCraft.WorldObjectsHandler::CreateAndInstantiateWorldObjectClientRpc(uint64,
                                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_016c:  ret

    IL_016d:  ldarg.1
    IL_016e:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_0173:  stloc.0
    IL_0174:  ldarg.0
    IL_0175:  ldloc.0
    IL_0176:  call       int32 SpaceCraft.WorldObjectsIdHandler::GetNewWorldObjectIdForDb()
    IL_017b:  ldnull
    IL_017c:  ldarg.s    save
    IL_017e:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_0183:  stloc.1
    IL_0184:  ldloc.1
    IL_0185:  ldarg.2
    IL_0186:  ldarg.3
    IL_0187:  ldc.i4.0
    IL_0188:  callvirt   instance void SpaceCraft.WorldObject::SetPositionAndRotation(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                      int32)
    IL_018d:  ldarg.0
    IL_018e:  ldloc.1
    IL_018f:  ldc.i4.0
    IL_0190:  ldloc.0
    IL_0191:  isinst     SpaceCraft.GroupItem
    IL_0196:  stloc.3
    IL_0197:  ldloc.3
    IL_0198:  brfalse.s  IL_01a3

    IL_019a:  ldloc.3
    IL_019b:  callvirt   instance valuetype SpaceCraft.DataConfig/UsableType SpaceCraft.GroupItem::GetUsableType()
    IL_01a0:  ldc.i4.6
    IL_01a1:  beq.s      IL_01a7

    IL_01a3:  ldc.i4.0
    IL_01a4:  conv.i8
    IL_01a5:  br.s       IL_01ad

    IL_01a7:  ldarg.2
    IL_01a8:  call       uint64 SpaceCraft.NetworkUtils::GetNearestClientId(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_01ad:  call       instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObjectsHandler::InstantiateWorldObject(class SpaceCraft.WorldObject,
                                                                                                                                              bool,
                                                                                                                                              uint64)
    IL_01b2:  stloc.2
    IL_01b3:  ldarg.s    disolve
    IL_01b5:  ldarg.s    addDeconstructIcon
    IL_01b7:  or
    IL_01b8:  brfalse.s  IL_01da

    IL_01ba:  ldloc.2
    IL_01bb:  ldloca.s   V_4
    IL_01bd:  callvirt   instance bool [UnityEngine.CoreModule]UnityEngine.GameObject::TryGetComponent<class SpaceCraft.GroupNetworkBase>(!!0&)
    IL_01c2:  brfalse.s  IL_01da

    IL_01c4:  ldarg.s    disolve
    IL_01c6:  brfalse.s  IL_01cf

    IL_01c8:  ldloc.s    V_4
    IL_01ca:  callvirt   instance void SpaceCraft.GroupNetworkBase::StartDisolveAnimationClientRpc()
    IL_01cf:  ldarg.s    addDeconstructIcon
    IL_01d1:  brfalse.s  IL_01da

    IL_01d3:  ldloc.s    V_4
    IL_01d5:  callvirt   instance void SpaceCraft.GroupNetworkBase::SetWorldObjectFromGeneratedWreck()
    IL_01da:  ldarg.0
    IL_01db:  ldloc.2
    IL_01dc:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>()
    IL_01e1:  callvirt   instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject::get_NetworkObjectId()
    IL_01e6:  ldarg.s    rpcParams
    IL_01e8:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01ed:  call       instance void SpaceCraft.WorldObjectsHandler::CreateAndInstantiateWorldObjectClientRpc(uint64,
                                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01f2:  ret
  } // end of method WorldObjectsHandler::CreateAndInstantiateWorldObjectServerRpc

  .method private hidebysig instance void 
          CreateAndInstantiateWorldObjectClientRpc(uint64 objectId,
                                                   [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [2] = nullref
    // Code size       269 (0x10d)
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
    IL_003c:  brfalse    IL_009c

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_009c

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0xa020b35b
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  ldloc      V_1
    IL_007a:  ldarg      objectId
    IL_007e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   uint64)
    IL_0083:  nop
    IL_0084:  ldarg.0
    IL_0085:  ldloca     V_1
    IL_0089:  ldc.i4     0xa020b35b
    IL_008e:  ldarg      clientRpcParams
    IL_0092:  ldc.i4     0x0
    IL_0097:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_009c:  nop
    IL_009d:  ldarg.0
    IL_009e:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a3:  ldc.i4     0x1
    IL_00a8:  ceq
    IL_00aa:  brfalse    IL_00cb

    IL_00af:  ldloc      V_0
    IL_00b3:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00b8:  brtrue     IL_00cc

    IL_00bd:  ldloc      V_0
    IL_00c1:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00c6:  brtrue     IL_00cc

    IL_00cb:  ret

    IL_00cc:  nop
    IL_00cd:  ldarg.0
    IL_00ce:  ldc.i4     0x0
    IL_00d3:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.WorldObjectsHandler::_instantiateCallback
    IL_00de:  ldarg.1
    IL_00df:  ldc.i4.0
    IL_00e0:  conv.i8
    IL_00e1:  bgt.un.s   IL_00e6

    IL_00e3:  ldnull
    IL_00e4:  br.s       IL_0100

    IL_00e6:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_00eb:  callvirt   instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkSpawnManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_SpawnManager()
    IL_00f0:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject> [Unity.Netcode.Runtime]Unity.Netcode.NetworkSpawnManager::SpawnedObjects
    IL_00f5:  ldarg.1
    IL_00f6:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,class [Unity.Netcode.Runtime]Unity.Netcode.NetworkObject>::get_Item(!0)
    IL_00fb:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_0100:  callvirt   instance void class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>::Invoke(!0)
    IL_0105:  ldarg.0
    IL_0106:  ldnull
    IL_0107:  stfld      class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.WorldObjectsHandler::_instantiateCallback
    IL_010c:  ret
  } // end of method WorldObjectsHandler::CreateAndInstantiateWorldObjectClientRpc

  .method public hidebysig instance bool 
          CreateAndInstantiateWorldObject(class SpaceCraft.Group group,
                                          valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                          valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                                          [opt] bool disolve,
                                          [opt] bool checkSpawnPosition,
                                          [opt] bool save,
                                          [opt] bool addDeconstructIcon,
                                          [opt] class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> result) cil managed
  {
    .param [4] = bool(false)
    .param [5] = bool(false)
    .param [6] = bool(true)
    .param [7] = bool(false)
    .param [8] = nullref
    // Code size       102 (0x66)
    .maxstack  9
    .locals init (class SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass93_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass93_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.s    result
    IL_0009:  stfld      class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass93_0'::result
    IL_000e:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_0013:  ldnull
    IL_0014:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0019:  brtrue.s   IL_0027

    IL_001b:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_0020:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsListening()
    IL_0025:  brtrue.s   IL_0029

    IL_0027:  ldc.i4.0
    IL_0028:  ret

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.WorldObjectsHandler::_instantiateCallback
    IL_002f:  brtrue.s   IL_0064

    IL_0031:  ldarg.0
    IL_0032:  ldloc.0
    IL_0033:  ldftn      instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass93_0'::'<CreateAndInstantiateWorldObject>b__0'(class [UnityEngine.CoreModule]UnityEngine.GameObject)
    IL_0039:  newobj     instance void class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>::.ctor(object,
                                                                                                                                    native int)
    IL_003e:  stfld      class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject> SpaceCraft.WorldObjectsHandler::_instantiateCallback
    IL_0043:  ldarg.0
    IL_0044:  ldarg.1
    IL_0045:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_004a:  ldarg.2
    IL_004b:  ldarg.3
    IL_004c:  ldarg.s    disolve
    IL_004e:  ldarg.s    checkSpawnPosition
    IL_0050:  ldarg.s    save
    IL_0052:  ldarg.s    addDeconstructIcon
    IL_0054:  ldloca.s   V_1
    IL_0056:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_005c:  ldloc.1
    IL_005d:  call       instance void SpaceCraft.WorldObjectsHandler::CreateAndInstantiateWorldObjectServerRpc(int32,
                                                                                                                valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                                bool,
                                                                                                                bool,
                                                                                                                bool,
                                                                                                                bool,
                                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0062:  ldc.i4.1
    IL_0063:  ret

    IL_0064:  ldc.i4.0
    IL_0065:  ret
  } // end of method WorldObjectsHandler::CreateAndInstantiateWorldObject

  .method private hidebysig instance void 
          CreateAndDropOnFloorServerRpc(int32 groupHash,
                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                        float32 dropSize,
                                        bool save,
                                        bool ownershipToNearestClient,
                                        float32 despawnTime,
                                        [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [7] = nullref
    // Code size       363 (0x16b)
    .maxstack  9
    .locals init (class SpaceCraft.WorldObject V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_1
    IL_000a:  ldloc      V_1
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_1
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
    IL_003c:  brfalse    IL_0123

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x8aa6a5cf
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_3
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_3
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_3
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_2
    IL_007b:  ldloc      V_2
    IL_007f:  ldarg      groupHash
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloca     V_2
    IL_008c:  ldarga     position
    IL_0090:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_0095:  ldloca     V_2
    IL_0099:  ldarga     dropSize
    IL_009d:  ldloca     V_4
    IL_00a1:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a7:  ldloc      V_4
    IL_00ab:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b0:  ldloca     V_2
    IL_00b4:  ldarga     save
    IL_00b8:  ldloca     V_5
    IL_00bc:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00c2:  ldloc      V_5
    IL_00c6:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00cb:  ldloca     V_2
    IL_00cf:  ldarga     ownershipToNearestClient
    IL_00d3:  ldloca     V_6
    IL_00d7:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00dd:  ldloc      V_6
    IL_00e1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00e6:  ldloca     V_2
    IL_00ea:  ldarga     despawnTime
    IL_00ee:  ldloca     V_7
    IL_00f2:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00f8:  ldloc      V_7
    IL_00fc:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0101:  nop
    IL_0102:  ldarg.0
    IL_0103:  ldloca     V_2
    IL_0107:  ldc.i4     0x8aa6a5cf
    IL_010c:  ldarg      rpcParams
    IL_0110:  ldloc      V_3
    IL_0114:  ldc.i4     0x2
    IL_0119:  ldc.i4     0x0
    IL_011e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0123:  nop
    IL_0124:  ldarg.0
    IL_0125:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_012a:  ldc.i4     0x1
    IL_012f:  ceq
    IL_0131:  brtrue     IL_0137

    IL_0136:  ret

    IL_0137:  nop
    IL_0138:  ldarg.0
    IL_0139:  ldc.i4     0x0
    IL_013e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0143:  ldarg.0
    IL_0144:  ldarg.1
    IL_0145:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_014a:  ldc.i4.0
    IL_014b:  ldnull
    IL_014c:  ldarg.s    save
    IL_014e:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_0153:  stloc.0
    IL_0154:  ldarg.0
    IL_0155:  ldloc.0
    IL_0156:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_015b:  ldarg.2
    IL_015c:  ldarg.3
    IL_015d:  ldc.i4.0
    IL_015e:  ldarg.s    ownershipToNearestClient
    IL_0160:  ldc.i4.0
    IL_0161:  ldarg.s    despawnTime
    IL_0163:  ldarg.s    rpcParams
    IL_0165:  call       instance void SpaceCraft.WorldObjectsHandler::DropOnFloorServerRpc(int32,
                                                                                            valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                            float32,
                                                                                            bool,
                                                                                            bool,
                                                                                            int32,
                                                                                            float32,
                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_016a:  ret
  } // end of method WorldObjectsHandler::CreateAndDropOnFloorServerRpc

  .method public hidebysig instance void 
          CreateAndDropOnFloor(class SpaceCraft.Group group,
                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                               [opt] float32 dropSize,
                               [opt] bool save,
                               [opt] bool ownershipToNearestClient,
                               [opt] float32 despawnTime) cil managed
  {
    .param [3] = float32(0.)
    .param [4] = bool(true)
    .param [5] = bool(true)
    .param [6] = float32(0.)
    // Code size       30 (0x1e)
    .maxstack  8
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    save
    IL_000b:  ldarg.s    ownershipToNearestClient
    IL_000d:  ldarg.s    despawnTime
    IL_000f:  ldloca.s   V_0
    IL_0011:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0017:  ldloc.0
    IL_0018:  call       instance void SpaceCraft.WorldObjectsHandler::CreateAndDropOnFloorServerRpc(int32,
                                                                                                     valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                     float32,
                                                                                                     bool,
                                                                                                     bool,
                                                                                                     float32,
                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_001d:  ret
  } // end of method WorldObjectsHandler::CreateAndDropOnFloor

  .method public hidebysig instance void 
          DropOnFloor(class SpaceCraft.WorldObject worldObject,
                      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                      [opt] float32 dropSize,
                      [opt] bool dropSound,
                      [opt] bool ownershipToNearestClient,
                      [opt] int32 settingValue) cil managed
  {
    .param [3] = float32(0.)
    .param [4] = bool(true)
    .param [5] = bool(false)
    .param [6] = int32(0x00000000)
    // Code size       35 (0x23)
    .maxstack  9
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    dropSound
    IL_000b:  ldarg.s    ownershipToNearestClient
    IL_000d:  ldarg.s    settingValue
    IL_000f:  ldc.r4     0.0
    IL_0014:  ldloca.s   V_0
    IL_0016:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_001c:  ldloc.0
    IL_001d:  call       instance void SpaceCraft.WorldObjectsHandler::DropOnFloorServerRpc(int32,
                                                                                            valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                            float32,
                                                                                            bool,
                                                                                            bool,
                                                                                            int32,
                                                                                            float32,
                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0022:  ret
  } // end of method WorldObjectsHandler::DropOnFloor

  .method public hidebysig instance void 
          DropOnFloorWithRotation(class SpaceCraft.WorldObject worldObject,
                                  valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                  valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                                  [opt] float32 dropSize,
                                  [opt] bool dropSound,
                                  [opt] bool ownershipToNearestClient,
                                  [opt] int32 settingValue) cil managed
  {
    .param [4] = float32(0.)
    .param [5] = bool(true)
    .param [6] = bool(false)
    .param [7] = int32(0x00000000)
    // Code size       37 (0x25)
    .maxstack  10
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    dropSize
    IL_000b:  ldarg.s    dropSound
    IL_000d:  ldarg.s    ownershipToNearestClient
    IL_000f:  ldarg.s    settingValue
    IL_0011:  ldc.r4     0.0
    IL_0016:  ldloca.s   V_0
    IL_0018:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_001e:  ldloc.0
    IL_001f:  call       instance void SpaceCraft.WorldObjectsHandler::DropOnFloorWithRotationServerRpc(int32,
                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                        float32,
                                                                                                        bool,
                                                                                                        bool,
                                                                                                        int32,
                                                                                                        float32,
                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0024:  ret
  } // end of method WorldObjectsHandler::DropOnFloorWithRotation

  .method private hidebysig instance void 
          DropOnFloorServerRpc(int32 worldObjectId,
                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                               float32 dropSize,
                               bool dropSound,
                               bool ownershipToNearestClient,
                               int32 settingValue,
                               float32 despawnTime,
                               [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [8] = nullref
    // Code size       372 (0x174)
    .maxstack  11
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6)
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
    IL_003c:  brfalse    IL_0130

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x1d21d6c
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_2
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_2
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_2
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_1
    IL_007b:  ldloc      V_1
    IL_007f:  ldarg      worldObjectId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloca     V_1
    IL_008c:  ldarga     position
    IL_0090:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_0095:  ldloca     V_1
    IL_0099:  ldarga     dropSize
    IL_009d:  ldloca     V_3
    IL_00a1:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a7:  ldloc      V_3
    IL_00ab:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b0:  ldloca     V_1
    IL_00b4:  ldarga     dropSound
    IL_00b8:  ldloca     V_4
    IL_00bc:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00c2:  ldloc      V_4
    IL_00c6:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00cb:  ldloca     V_1
    IL_00cf:  ldarga     ownershipToNearestClient
    IL_00d3:  ldloca     V_5
    IL_00d7:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00dd:  ldloc      V_5
    IL_00e1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00e6:  ldloc      V_1
    IL_00ea:  ldarg      settingValue
    IL_00ee:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00f3:  ldloca     V_1
    IL_00f7:  ldarga     despawnTime
    IL_00fb:  ldloca     V_6
    IL_00ff:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0105:  ldloc      V_6
    IL_0109:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_010e:  nop
    IL_010f:  ldarg.0
    IL_0110:  ldloca     V_1
    IL_0114:  ldc.i4     0x1d21d6c
    IL_0119:  ldarg      rpcParams
    IL_011d:  ldloc      V_2
    IL_0121:  ldc.i4     0x2
    IL_0126:  ldc.i4     0x0
    IL_012b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0130:  nop
    IL_0131:  ldarg.0
    IL_0132:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0137:  ldc.i4     0x1
    IL_013c:  ceq
    IL_013e:  brtrue     IL_0144

    IL_0143:  ret

    IL_0144:  nop
    IL_0145:  ldarg.0
    IL_0146:  ldc.i4     0x0
    IL_014b:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0150:  ldarg.0
    IL_0151:  ldarg.1
    IL_0152:  ldarg.2
    IL_0153:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion [UnityEngine.CoreModule]UnityEngine.Quaternion::get_identity()
    IL_0158:  ldarg.3
    IL_0159:  ldarg.s    dropSound
    IL_015b:  ldarg.s    ownershipToNearestClient
    IL_015d:  ldarg.s    settingValue
    IL_015f:  ldarg.s    despawnTime
    IL_0161:  ldc.i4.0
    IL_0162:  ldarg.s    rpcParams
    IL_0164:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_0169:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_016e:  call       instance void SpaceCraft.WorldObjectsHandler::DropOnFloorImplentation(int32,
                                                                                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                               valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                               float32,
                                                                                               bool,
                                                                                               bool,
                                                                                               int32,
                                                                                               float32,
                                                                                               bool,
                                                                                               uint64)
    IL_0173:  ret
  } // end of method WorldObjectsHandler::DropOnFloorServerRpc

  .method private hidebysig instance void 
          DropOnFloorWithRotationServerRpc(int32 worldObjectId,
                                           valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                           valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                                           float32 dropSize,
                                           bool dropSound,
                                           bool ownershipToNearestClient,
                                           int32 settingValue,
                                           float32 despawnTime,
                                           [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [9] = nullref
    // Code size       382 (0x17e)
    .maxstack  11
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6)
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
    IL_003c:  brfalse    IL_013d

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x1fdd3f21
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_2
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_2
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_2
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_1
    IL_007b:  ldloc      V_1
    IL_007f:  ldarg      worldObjectId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloca     V_1
    IL_008c:  ldarga     position
    IL_0090:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_0095:  ldloca     V_1
    IL_0099:  ldarga     rotation
    IL_009d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion&)
    IL_00a2:  ldloca     V_1
    IL_00a6:  ldarga     dropSize
    IL_00aa:  ldloca     V_3
    IL_00ae:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00b4:  ldloc      V_3
    IL_00b8:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00bd:  ldloca     V_1
    IL_00c1:  ldarga     dropSound
    IL_00c5:  ldloca     V_4
    IL_00c9:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00cf:  ldloc      V_4
    IL_00d3:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00d8:  ldloca     V_1
    IL_00dc:  ldarga     ownershipToNearestClient
    IL_00e0:  ldloca     V_5
    IL_00e4:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00ea:  ldloc      V_5
    IL_00ee:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00f3:  ldloc      V_1
    IL_00f7:  ldarg      settingValue
    IL_00fb:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0100:  ldloca     V_1
    IL_0104:  ldarga     despawnTime
    IL_0108:  ldloca     V_6
    IL_010c:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0112:  ldloc      V_6
    IL_0116:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_011b:  nop
    IL_011c:  ldarg.0
    IL_011d:  ldloca     V_1
    IL_0121:  ldc.i4     0x1fdd3f21
    IL_0126:  ldarg      rpcParams
    IL_012a:  ldloc      V_2
    IL_012e:  ldc.i4     0x2
    IL_0133:  ldc.i4     0x0
    IL_0138:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_013d:  nop
    IL_013e:  ldarg.0
    IL_013f:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0144:  ldc.i4     0x1
    IL_0149:  ceq
    IL_014b:  brtrue     IL_0151

    IL_0150:  ret

    IL_0151:  nop
    IL_0152:  ldarg.0
    IL_0153:  ldc.i4     0x0
    IL_0158:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_015d:  ldarg.0
    IL_015e:  ldarg.1
    IL_015f:  ldarg.2
    IL_0160:  ldarg.3
    IL_0161:  ldarg.s    dropSize
    IL_0163:  ldarg.s    dropSound
    IL_0165:  ldarg.s    ownershipToNearestClient
    IL_0167:  ldarg.s    settingValue
    IL_0169:  ldarg.s    despawnTime
    IL_016b:  ldc.i4.1
    IL_016c:  ldarg.s    rpcParams
    IL_016e:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_0173:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_0178:  call       instance void SpaceCraft.WorldObjectsHandler::DropOnFloorImplentation(int32,
                                                                                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                               valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                               float32,
                                                                                               bool,
                                                                                               bool,
                                                                                               int32,
                                                                                               float32,
                                                                                               bool,
                                                                                               uint64)
    IL_017d:  ret
  } // end of method WorldObjectsHandler::DropOnFloorWithRotationServerRpc

  .method private hidebysig instance void 
          DropOnFloorImplentation(int32 worldObjectId,
                                  valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                  valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                                  float32 dropSize,
                                  bool dropSound,
                                  bool ownershipToNearestClient,
                                  int32 settingValue,
                                  float32 despawnTime,
                                  bool disolve,
                                  uint64 senderClientId) cil managed
  {
    // Code size       297 (0x129)
    .maxstack  5
    .locals init (class SpaceCraft.WorldObject V_0,
             uint64 V_1,
             class [UnityEngine.CoreModule]UnityEngine.GameObject V_2,
             class SpaceCraft.GroupNetworkBase V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brtrue.s   IL_0016

    IL_000b:  ldstr      "WorldObjectsHandler Error: Trying to drop a server"
    + " unknown worldObject!"
    IL_0010:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
    IL_0015:  ret

    IL_0016:  ldloc.0
    IL_0017:  ldarg.2
    IL_0018:  ldarg.3
    IL_0019:  ldc.i4.0
    IL_001a:  callvirt   instance void SpaceCraft.WorldObject::SetPositionAndRotation(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                      int32)
    IL_001f:  ldarg.0
    IL_0020:  ldloc.0
    IL_0021:  call       instance void SpaceCraft.WorldObjectsHandler::UpdateWorldObjectSaveState(class SpaceCraft.WorldObject)
    IL_0026:  ldarg.s    settingValue
    IL_0028:  brfalse.s  IL_0032

    IL_002a:  ldloc.0
    IL_002b:  ldarg.s    settingValue
    IL_002d:  callvirt   instance void SpaceCraft.WorldObject::SetSetting(int32)
    IL_0032:  ldsfld     class SpaceCraft.ProceduralInstancesHandler SpaceCraft.ProceduralInstancesHandler::Instance
    IL_0037:  ldnull
    IL_0038:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_003d:  brfalse.s  IL_0069

    IL_003f:  ldloc.0
    IL_0040:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0045:  isinst     SpaceCraft.GroupItem
    IL_004a:  brfalse.s  IL_005e

    IL_004c:  ldloc.0
    IL_004d:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0052:  isinst     SpaceCraft.GroupItem
    IL_0057:  callvirt   instance bool SpaceCraft.GroupItem::GetCraftedInWorld()
    IL_005c:  brtrue.s   IL_0069

    IL_005e:  ldsfld     class SpaceCraft.ProceduralInstancesHandler SpaceCraft.ProceduralInstancesHandler::Instance
    IL_0063:  ldloc.0
    IL_0064:  callvirt   instance void SpaceCraft.ProceduralInstancesHandler::CheckIfDroppedObjectIsInsideAnInstance(class SpaceCraft.WorldObject)
    IL_0069:  ldarg.s    ownershipToNearestClient
    IL_006b:  brtrue.s   IL_0071

    IL_006d:  ldarg.s    senderClientId
    IL_006f:  br.s       IL_0077

    IL_0071:  ldarg.2
    IL_0072:  call       uint64 SpaceCraft.NetworkUtils::GetNearestClientId(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0077:  stloc.1
    IL_0078:  ldarg.0
    IL_0079:  ldloc.0
    IL_007a:  ldc.i4.0
    IL_007b:  ldloc.1
    IL_007c:  call       instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObjectsHandler::InstantiateWorldObject(class SpaceCraft.WorldObject,
                                                                                                                                              bool,
                                                                                                                                              uint64)
    IL_0081:  stloc.2
    IL_0082:  ldarg.3
    IL_0083:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion [UnityEngine.CoreModule]UnityEngine.Quaternion::get_identity()
    IL_0088:  call       bool [UnityEngine.CoreModule]UnityEngine.Quaternion::op_Equality(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                          valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion)
    IL_008d:  brfalse.s  IL_00b1

    IL_008f:  ldloc.2
    IL_0090:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.GameObject::get_transform()
    IL_0095:  ldc.r4     0.0
    IL_009a:  ldc.i4.s   90
    IL_009c:  ldc.i4     0xb4
    IL_00a1:  call       int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32,
                                                                                 int32)
    IL_00a6:  conv.r4
    IL_00a7:  ldc.r4     0.0
    IL_00ac:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.Transform::Rotate(float32,
                                                                                             float32,
                                                                                             float32)
    IL_00b1:  ldloc.2
    IL_00b2:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.WorldObjectFromScene>()
    IL_00b7:  ldnull
    IL_00b8:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_00bd:  brfalse.s  IL_00ca

    IL_00bf:  ldloc.2
    IL_00c0:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.WorldObjectFromScene>()
    IL_00c5:  callvirt   instance void SpaceCraft.WorldObjectFromScene::SetDoNotRandomize()
    IL_00ca:  ldloc.2
    IL_00cb:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkContainer>()
    IL_00d0:  ldarg.s    dropSize
    IL_00d2:  ldarg.s    dropSound
    IL_00d4:  ldarg.s    despawnTime
    IL_00d6:  ldc.r4     1.1920929e-07
    IL_00db:  cgt
    IL_00dd:  ldloc.1
    IL_00de:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(uint64)
    IL_00e3:  callvirt   instance void SpaceCraft.GroupNetworkContainer::StartAndStopPhysicsAfterDelayClientRpc(float32,
                                                                                                                bool,
                                                                                                                bool,
                                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_00e8:  ldloc.2
    IL_00e9:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentInChildren<class SpaceCraft.WorldObjectAssociated>()
    IL_00ee:  ldc.r4     1.
    IL_00f3:  callvirt   instance void SpaceCraft.WorldObjectAssociated::AutoSavePositionContinuously(float32)
    IL_00f8:  ldarg.s    despawnTime
    IL_00fa:  ldc.r4     1.1920929e-07
    IL_00ff:  ble.un.s   IL_010e

    IL_0101:  ldloc.2
    IL_0102:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkContainer>()
    IL_0107:  ldarg.s    despawnTime
    IL_0109:  callvirt   instance void SpaceCraft.GroupNetworkContainer::DespawnAfterDelay(float32)
    IL_010e:  ldarg.s    disolve
    IL_0110:  brfalse.s  IL_0128

    IL_0112:  ldloc.2
    IL_0113:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.GroupNetworkBase>()
    IL_0118:  stloc.3
    IL_0119:  ldloc.3
    IL_011a:  ldnull
    IL_011b:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0120:  brfalse.s  IL_0128

    IL_0122:  ldloc.3
    IL_0123:  callvirt   instance void SpaceCraft.GroupNetworkBase::StartDisolveAnimationClientRpc()
    IL_0128:  ret
  } // end of method WorldObjectsHandler::DropOnFloorImplentation

  .method public hidebysig instance void 
          GetEnergyGroupData(class [mscorlib]System.Action`1<class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>> callback) cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  2
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Action`1<class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>> SpaceCraft.WorldObjectsHandler::_energyGroupDataCallback
    IL_0006:  brtrue.s   IL_001e

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [mscorlib]System.Action`1<class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>> SpaceCraft.WorldObjectsHandler::_energyGroupDataCallback
    IL_000f:  ldarg.0
    IL_0010:  ldloca.s   V_0
    IL_0012:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0018:  ldloc.0
    IL_0019:  call       instance void SpaceCraft.WorldObjectsHandler::GetEnergyGroupDataServerRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_001e:  ret
  } // end of method WorldObjectsHandler::GetEnergyGroupData

  .method private hidebysig instance void 
          GetEnergyGroupDataServerRpc([opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [1] = nullref
    // Code size       444 (0x1bc)
    .maxstack  7
    .locals init (int32 V_0,
             valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject> V_1,
             class SpaceCraft.WorldObject V_2,
             float32 V_3,
             int32 V_4,
             valuetype SpaceCraft.Group/EnergyGroupData V_5,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_6
    IL_000a:  ldloc      V_6
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_6
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
    IL_003c:  brfalse    IL_009d

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x189d93d8
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_8
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_8
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_8
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_7
    IL_007b:  nop
    IL_007c:  ldarg.0
    IL_007d:  ldloca     V_7
    IL_0081:  ldc.i4     0x189d93d8
    IL_0086:  ldarg      rpcParams
    IL_008a:  ldloc      V_8
    IL_008e:  ldc.i4     0x2
    IL_0093:  ldc.i4     0x0
    IL_0098:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_009d:  nop
    IL_009e:  ldarg.0
    IL_009f:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a4:  ldc.i4     0x1
    IL_00a9:  ceq
    IL_00ab:  brtrue     IL_00b1

    IL_00b0:  ret

    IL_00b1:  nop
    IL_00b2:  ldarg.0
    IL_00b3:  ldc.i4     0x0
    IL_00b8:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00bd:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlanetLoader>()
    IL_00c2:  callvirt   instance class SpaceCraft.PlanetData SpaceCraft.PlanetLoader::GetCurrentPlanetData()
    IL_00c7:  callvirt   instance string SpaceCraft.PlanetData::GetPlanetId()
    IL_00cc:  call       int32 StringExtensionMethods::GetStableHashCode(string)
    IL_00d1:  stloc.0
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData> SpaceCraft.WorldObjectsHandler::_energyGroupData
    IL_00d8:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>::Clear()
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_constructedWorldObjects
    IL_00e3:  callvirt   instance valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<!0> class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_00e8:  stloc.1
    .try
    {
      IL_00e9:  br         IL_0188

      IL_00ee:  ldloca.s   V_1
      IL_00f0:  call       instance !0 valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_00f5:  stloc.2
      IL_00f6:  ldloc.2
      IL_00f7:  callvirt   instance int32 SpaceCraft.WorldObject::GetPlanetHash()
      IL_00fc:  ldloc.0
      IL_00fd:  bne.un     IL_0188

      IL_0102:  ldloc.2
      IL_0103:  ldc.i4.2
      IL_0104:  callvirt   instance float32 SpaceCraft.WorldObject::GetUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
      IL_0109:  stloc.3
      IL_010a:  ldloc.3
      IL_010b:  call       float32 [Unity.Mathematics]Unity.Mathematics.math::abs(float32)
      IL_0110:  ldc.r4     0.0
      IL_0115:  ble.un.s   IL_0188

      IL_0117:  ldarg.0
      IL_0118:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData> SpaceCraft.WorldObjectsHandler::_energyGroupData
      IL_011d:  ldloc.2
      IL_011e:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_0123:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
      IL_0128:  call       valuetype SpaceCraft.Group/EnergyGroupData SpaceCraft.Group/EnergyGroupData::op_Implicit(int32)
      IL_012d:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>::IndexOf(!0)
      IL_0132:  stloc.s    V_4
      IL_0134:  ldloc.s    V_4
      IL_0136:  ldc.i4.0
      IL_0137:  bge.s      IL_0152

      IL_0139:  ldarg.0
      IL_013a:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData> SpaceCraft.WorldObjectsHandler::_energyGroupData
      IL_013f:  ldloc.2
      IL_0140:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_0145:  ldloc.3
      IL_0146:  newobj     instance void SpaceCraft.Group/EnergyGroupData::.ctor(class SpaceCraft.Group,
                                                                                 float32)
      IL_014b:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>::Add(!0)
      IL_0150:  br.s       IL_0188

      IL_0152:  ldarg.0
      IL_0153:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData> SpaceCraft.WorldObjectsHandler::_energyGroupData
      IL_0158:  ldloc.s    V_4
      IL_015a:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>::get_Item(int32)
      IL_015f:  stloc.s    V_5
      IL_0161:  ldloca.s   V_5
      IL_0163:  ldflda     float32 SpaceCraft.Group/EnergyGroupData::generation
      IL_0168:  dup
      IL_0169:  ldind.r4
      IL_016a:  ldloc.3
      IL_016b:  add
      IL_016c:  stind.r4
      IL_016d:  ldloca.s   V_5
      IL_016f:  ldflda     int32 SpaceCraft.Group/EnergyGroupData::number
      IL_0174:  dup
      IL_0175:  ldind.i4
      IL_0176:  ldc.i4.1
      IL_0177:  add
      IL_0178:  stind.i4
      IL_0179:  ldarg.0
      IL_017a:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData> SpaceCraft.WorldObjectsHandler::_energyGroupData
      IL_017f:  ldloc.s    V_4
      IL_0181:  ldloc.s    V_5
      IL_0183:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>::set_Item(int32,
                                                                                                                                                 !0)
      IL_0188:  ldloca.s   V_1
      IL_018a:  call       instance bool valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_018f:  brtrue     IL_00ee

      IL_0194:  leave.s    IL_01a4

    }  // end .try
    finally
    {
      IL_0196:  ldloca.s   V_1
      IL_0198:  constrained. valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject>
      IL_019e:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_01a3:  endfinally
    }  // end handler
    IL_01a4:  ldarg.0
    IL_01a5:  ldarg.0
    IL_01a6:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData> SpaceCraft.WorldObjectsHandler::_energyGroupData
    IL_01ab:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>::ToArray()
    IL_01b0:  ldarg.1
    IL_01b1:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01b6:  call       instance void SpaceCraft.WorldObjectsHandler::GetEnergyGroupDataClientRpc(valuetype SpaceCraft.Group/EnergyGroupData[],
                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01bb:  ret
  } // end of method WorldObjectsHandler::GetEnergyGroupDataServerRpc

  .method private hidebysig instance void 
          GetEnergyGroupDataClientRpc(valuetype SpaceCraft.Group/EnergyGroupData[] data,
                                      [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [2] = nullref
    // Code size       309 (0x135)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             bool V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForStructs V_4)
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
    IL_003c:  brfalse    IL_00da

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_00da

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x3d22ec91
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  ldarg      data
    IL_007a:  ldnull
    IL_007b:  cgt.un
    IL_007d:  stloc      V_2
    IL_0081:  ldloca     V_1
    IL_0085:  ldloca     V_2
    IL_0089:  ldloca     V_3
    IL_008d:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0093:  ldloc      V_3
    IL_0097:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_009c:  ldloc      V_2
    IL_00a0:  brfalse    IL_00c0

    IL_00a5:  ldloca     V_1
    IL_00a9:  ldarg      data
    IL_00ad:  ldloca     V_4
    IL_00b1:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForStructs
    IL_00b7:  ldloc      V_4
    IL_00bb:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<valuetype SpaceCraft.Group/EnergyGroupData>(!!0[],
                                                                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForStructs)
    IL_00c0:  nop
    IL_00c1:  nop
    IL_00c2:  ldarg.0
    IL_00c3:  ldloca     V_1
    IL_00c7:  ldc.i4     0x3d22ec91
    IL_00cc:  ldarg      clientRpcParams
    IL_00d0:  ldc.i4     0x0
    IL_00d5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00da:  nop
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e1:  ldc.i4     0x1
    IL_00e6:  ceq
    IL_00e8:  brfalse    IL_0109

    IL_00ed:  ldloc      V_0
    IL_00f1:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00f6:  brtrue     IL_010a

    IL_00fb:  ldloc      V_0
    IL_00ff:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0104:  brtrue     IL_010a

    IL_0109:  ret

    IL_010a:  nop
    IL_010b:  ldarg.0
    IL_010c:  ldc.i4     0x0
    IL_0111:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0116:  ldarg.0
    IL_0117:  ldfld      class [mscorlib]System.Action`1<class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>> SpaceCraft.WorldObjectsHandler::_energyGroupDataCallback
    IL_011c:  dup
    IL_011d:  brtrue.s   IL_0122

    IL_011f:  pop
    IL_0120:  br.s       IL_012d

    IL_0122:  ldarg.1
    IL_0123:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0128:  callvirt   instance void class [mscorlib]System.Action`1<class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>>::Invoke(!0)
    IL_012d:  ldarg.0
    IL_012e:  ldnull
    IL_012f:  stfld      class [mscorlib]System.Action`1<class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>> SpaceCraft.WorldObjectsHandler::_energyGroupDataCallback
    IL_0134:  ret
  } // end of method WorldObjectsHandler::GetEnergyGroupDataClientRpc

  .method private hidebysig instance void 
          GenerateRandomAppearanceObjectServerRpc(float32 chanceToAppear,
                                                  int32 groupHash,
                                                  int32 worldObjectId,
                                                  int32 inventoryId,
                                                  valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                                  valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                                                  [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [7] = nullref
    // Code size       417 (0x1a1)
    .maxstack  7
    .locals init (class SpaceCraft.WorldObject V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_1
    IL_000a:  ldloc      V_1
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_1
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
    IL_003c:  brfalse    IL_00f9

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xb06ae8b1
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_3
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_3
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_3
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_2
    IL_007b:  ldloca     V_2
    IL_007f:  ldarga     chanceToAppear
    IL_0083:  ldloca     V_4
    IL_0087:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_008d:  ldloc      V_4
    IL_0091:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0096:  ldloc      V_2
    IL_009a:  ldarg      groupHash
    IL_009e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00a3:  ldloc      V_2
    IL_00a7:  ldarg      worldObjectId
    IL_00ab:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00b0:  ldloc      V_2
    IL_00b4:  ldarg      inventoryId
    IL_00b8:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00bd:  ldloca     V_2
    IL_00c1:  ldarga     position
    IL_00c5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_00ca:  ldloca     V_2
    IL_00ce:  ldarga     rotation
    IL_00d2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion&)
    IL_00d7:  nop
    IL_00d8:  ldarg.0
    IL_00d9:  ldloca     V_2
    IL_00dd:  ldc.i4     0xb06ae8b1
    IL_00e2:  ldarg      rpcParams
    IL_00e6:  ldloc      V_3
    IL_00ea:  ldc.i4     0x2
    IL_00ef:  ldc.i4     0x0
    IL_00f4:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00f9:  nop
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0100:  ldc.i4     0x1
    IL_0105:  ceq
    IL_0107:  brtrue     IL_010d

    IL_010c:  ret

    IL_010d:  nop
    IL_010e:  ldarg.0
    IL_010f:  ldc.i4     0x0
    IL_0114:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0119:  ldarg.0
    IL_011a:  ldarg.3
    IL_011b:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0120:  stloc.0
    IL_0121:  ldloc.0
    IL_0122:  brfalse.s  IL_0152

    IL_0124:  ldloc.0
    IL_0125:  callvirt   instance bool SpaceCraft.WorldObject::GetDontSaveMe()
    IL_012a:  brtrue.s   IL_0152

    IL_012c:  ldloc.0
    IL_012d:  callvirt   instance bool SpaceCraft.WorldObject::GetIsPlaced()
    IL_0132:  brfalse.s  IL_0148

    IL_0134:  ldloc.0
    IL_0135:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::GetPosition()
    IL_013a:  ldarg.s    position
    IL_013c:  call       float32 [UnityEngine.CoreModule]UnityEngine.Vector3::Distance(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0141:  ldc.r4     2.
    IL_0146:  ble.un.s   IL_0151

    IL_0148:  ldarg.0
    IL_0149:  ldarg.3
    IL_014a:  ldarg.s    rpcParams
    IL_014c:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectGOOnClient(int32,
                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0151:  ret

    IL_0152:  ldloc.0
    IL_0153:  brtrue.s   IL_0165

    IL_0155:  ldarg.0
    IL_0156:  ldarg.2
    IL_0157:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_015c:  ldarg.3
    IL_015d:  ldnull
    IL_015e:  ldc.i4.1
    IL_015f:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_0164:  stloc.0
    IL_0165:  ldloc.0
    IL_0166:  ldc.i4.0
    IL_0167:  callvirt   instance void SpaceCraft.WorldObject::SetDontSaveMe(bool)
    IL_016c:  ldarg.1
    IL_016d:  ldc.r4     1.
    IL_0172:  ldc.r4     100.
    IL_0177:  call       float32 [UnityEngine.CoreModule]UnityEngine.Random::Range(float32,
                                                                                   float32)
    IL_017c:  blt.un.s   IL_0197

    IL_017e:  ldloc.0
    IL_017f:  ldarg.s    position
    IL_0181:  ldarg.s    rotation
    IL_0183:  ldc.i4.0
    IL_0184:  callvirt   instance void SpaceCraft.WorldObject::SetPositionAndRotation(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                      int32)
    IL_0189:  ldarg.s    inventoryId
    IL_018b:  ldc.i4.0
    IL_018c:  blt.s      IL_01a0

    IL_018e:  ldloc.0
    IL_018f:  ldarg.s    inventoryId
    IL_0191:  callvirt   instance void SpaceCraft.WorldObject::SetLinkedInventoryId(int32)
    IL_0196:  ret

    IL_0197:  ldarg.0
    IL_0198:  ldarg.3
    IL_0199:  ldarg.s    rpcParams
    IL_019b:  call       instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectGOOnClient(int32,
                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01a0:  ret
  } // end of method WorldObjectsHandler::GenerateRandomAppearanceObjectServerRpc

  .method public hidebysig instance void 
          GenerateRandomAppearanceObject(float32 chanceToAppear,
                                         class SpaceCraft.Group groupData,
                                         int32 worldObjectId,
                                         int32 inventoryId,
                                         valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                         valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    inventoryId
    IL_000b:  ldarg.s    position
    IL_000d:  ldarg.s    rotation
    IL_000f:  ldloca.s   V_0
    IL_0011:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0017:  ldloc.0
    IL_0018:  call       instance void SpaceCraft.WorldObjectsHandler::GenerateRandomAppearanceObjectServerRpc(float32,
                                                                                                               int32,
                                                                                                               int32,
                                                                                                               int32,
                                                                                                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                               valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_001d:  ret
  } // end of method WorldObjectsHandler::GenerateRandomAppearanceObject

  .method public hidebysig instance void 
          GetGeneticsDetails(int32[] worldObjectsIds,
                             class [mscorlib]System.Action`1<bool> callback) cil managed
  {
    // Code size       98 (0x62)
    .maxstack  3
    .locals init (class SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      int32[] SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::worldObjectsIds
    IL_0014:  ldloc.0
    IL_0015:  ldarg.2
    IL_0016:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::callback
    IL_001b:  ldarg.0
    IL_001c:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0021:  brfalse.s  IL_0035

    IL_0023:  ldloc.0
    IL_0024:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::callback
    IL_0029:  dup
    IL_002a:  brtrue.s   IL_002e

    IL_002c:  pop
    IL_002d:  ret

    IL_002e:  ldc.i4.1
    IL_002f:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
    IL_0034:  ret

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`3<bool,int16[],int32[]>> SpaceCraft.WorldObjectsHandler::_callbackUpdateTraits
    IL_003b:  ldloc.0
    IL_003c:  ldftn      instance void SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::'<GetGeneticsDetails>b__0'(bool,
                                                                                                                           int16[],
                                                                                                                           int32[])
    IL_0042:  newobj     instance void class [mscorlib]System.Action`3<bool,int16[],int32[]>::.ctor(object,
                                                                                                    native int)
    IL_0047:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`3<bool,int16[],int32[]>>::Enqueue(!0)
    IL_004c:  ldarg.0
    IL_004d:  ldloc.0
    IL_004e:  ldfld      int32[] SpaceCraft.WorldObjectsHandler/'<>c__DisplayClass108_0'::worldObjectsIds
    IL_0053:  ldloca.s   V_1
    IL_0055:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_005b:  ldloc.1
    IL_005c:  call       instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetailsServerRpc(int32[],
                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0061:  ret
  } // end of method WorldObjectsHandler::GetGeneticsDetails

  .method public hidebysig instance void 
          GetGeneticsDetails(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> worldObjects,
                             class [mscorlib]System.Action`1<bool> callback) cil managed
  {
    // Code size       91 (0x5b)
    .maxstack  4
    .locals init (int32[] V_0,
             int32 V_1,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_2,
             class SpaceCraft.WorldObject V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brfalse.s  IL_0013

    IL_0008:  ldarg.2
    IL_0009:  brfalse.s  IL_0012

    IL_000b:  ldarg.2
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
    IL_0012:  ret

    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Count()
    IL_0019:  newarr     [mscorlib]System.Int32
    IL_001e:  stloc.0
    IL_001f:  ldc.i4.0
    IL_0020:  stloc.1
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0027:  stloc.2
    .try
    {
      IL_0028:  br.s       IL_003e

      IL_002a:  ldloc.2
      IL_002b:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_0030:  stloc.3
      IL_0031:  ldloc.0
      IL_0032:  ldloc.1
      IL_0033:  dup
      IL_0034:  ldc.i4.1
      IL_0035:  add
      IL_0036:  stloc.1
      IL_0037:  ldloc.3
      IL_0038:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
      IL_003d:  stelem.i4
      IL_003e:  ldloc.2
      IL_003f:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_0044:  brtrue.s   IL_002a

      IL_0046:  leave.s    IL_0052

    }  // end .try
    finally
    {
      IL_0048:  ldloc.2
      IL_0049:  brfalse.s  IL_0051

      IL_004b:  ldloc.2
      IL_004c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0051:  endfinally
    }  // end handler
    IL_0052:  ldarg.0
    IL_0053:  ldloc.0
    IL_0054:  ldarg.2
    IL_0055:  call       instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetails(int32[],
                                                                                          class [mscorlib]System.Action`1<bool>)
    IL_005a:  ret
  } // end of method WorldObjectsHandler::GetGeneticsDetails

  .method public hidebysig instance void 
          GetGeneticsDetails(class SpaceCraft.WorldObject worldObject,
                             class [mscorlib]System.Action`1<bool> callback) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [mscorlib]System.Int32
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_000f:  stelem.i4
    IL_0010:  ldarg.2
    IL_0011:  call       instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetails(int32[],
                                                                                          class [mscorlib]System.Action`1<bool>)
    IL_0016:  ret
  } // end of method WorldObjectsHandler::GetGeneticsDetails

  .method private hidebysig instance void 
          GetGeneticsDetailsServerRpc(int32[] worldObjects,
                                      [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [2] = nullref
    // Code size       484 (0x1e4)
    .maxstack  7
    .locals init (int16[] V_0,
             int32[] V_1,
             int32 V_2,
             class SpaceCraft.WorldObject V_3,
             int32 V_4,
             valuetype SpaceCraft.DataConfig/GeneticTraitType V_5,
             valuetype [UnityEngine.CoreModule]UnityEngine.Color32 V_6,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_9,
             bool V_10,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_12)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_7
    IL_000a:  ldloc      V_7
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_7
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
    IL_003c:  brfalse    IL_00e8

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xf290d064
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_9
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_9
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_9
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_8
    IL_007b:  ldarg      worldObjects
    IL_007f:  ldnull
    IL_0080:  cgt.un
    IL_0082:  stloc      V_10
    IL_0086:  ldloca     V_8
    IL_008a:  ldloca     V_10
    IL_008e:  ldloca     V_11
    IL_0092:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0098:  ldloc      V_11
    IL_009c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00a1:  ldloc      V_10
    IL_00a5:  brfalse    IL_00c5

    IL_00aa:  ldloca     V_8
    IL_00ae:  ldarg      worldObjects
    IL_00b2:  ldloca     V_12
    IL_00b6:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00bc:  ldloc      V_12
    IL_00c0:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00c5:  nop
    IL_00c6:  nop
    IL_00c7:  ldarg.0
    IL_00c8:  ldloca     V_8
    IL_00cc:  ldc.i4     0xf290d064
    IL_00d1:  ldarg      rpcParams
    IL_00d5:  ldloc      V_9
    IL_00d9:  ldc.i4     0x2
    IL_00de:  ldc.i4     0x0
    IL_00e3:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00e8:  nop
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00ef:  ldc.i4     0x1
    IL_00f4:  ceq
    IL_00f6:  brtrue     IL_00fc

    IL_00fb:  ret

    IL_00fc:  nop
    IL_00fd:  ldarg.0
    IL_00fe:  ldc.i4     0x0
    IL_0103:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0108:  ldarg.1
    IL_0109:  ldlen
    IL_010a:  conv.i4
    IL_010b:  newarr     [mscorlib]System.Int16
    IL_0110:  stloc.0
    IL_0111:  ldarg.1
    IL_0112:  ldlen
    IL_0113:  conv.i4
    IL_0114:  newarr     [mscorlib]System.Int32
    IL_0119:  stloc.1
    IL_011a:  ldc.i4.0
    IL_011b:  stloc.2
    IL_011c:  br         IL_01cb

    IL_0121:  ldarg.0
    IL_0122:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0127:  ldarg.1
    IL_0128:  ldloc.2
    IL_0129:  ldelem.i4
    IL_012a:  ldloca.s   V_3
    IL_012c:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_0131:  brfalse    IL_01b7

    IL_0136:  ldloc.3
    IL_0137:  callvirt   instance int32 SpaceCraft.WorldObject::GetGeneticTraitValue()
    IL_013c:  stloc.s    V_4
    IL_013e:  ldloc.3
    IL_013f:  callvirt   instance valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::GetGeneticTraitType()
    IL_0144:  stloc.s    V_5
    IL_0146:  ldloca.s   V_5
    IL_0148:  constrained. SpaceCraft.DataConfig/GeneticTraitType
    IL_014e:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0153:  ldstr      "Color"
    IL_0158:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_015d:  brfalse.s  IL_01a6

    IL_015f:  ldloc.3
    IL_0160:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Color SpaceCraft.WorldObject::GetColor()
    IL_0165:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Color32 [UnityEngine.CoreModule]UnityEngine.Color32::op_Implicit(valuetype [UnityEngine.CoreModule]UnityEngine.Color)
    IL_016a:  stloc.s    V_6
    IL_016c:  ldc.i4.4
    IL_016d:  newarr     [mscorlib]System.Byte
    IL_0172:  dup
    IL_0173:  ldc.i4.0
    IL_0174:  ldloc.s    V_6
    IL_0176:  ldfld      uint8 [UnityEngine.CoreModule]UnityEngine.Color32::r
    IL_017b:  stelem.i1
    IL_017c:  dup
    IL_017d:  ldc.i4.1
    IL_017e:  ldloc.s    V_6
    IL_0180:  ldfld      uint8 [UnityEngine.CoreModule]UnityEngine.Color32::g
    IL_0185:  stelem.i1
    IL_0186:  dup
    IL_0187:  ldc.i4.2
    IL_0188:  ldloc.s    V_6
    IL_018a:  ldfld      uint8 [UnityEngine.CoreModule]UnityEngine.Color32::b
    IL_018f:  stelem.i1
    IL_0190:  dup
    IL_0191:  ldc.i4.3
    IL_0192:  ldloc.s    V_6
    IL_0194:  ldfld      uint8 [UnityEngine.CoreModule]UnityEngine.Color32::a
    IL_0199:  stelem.i1
    IL_019a:  call       valuetype [mscorlib]System.ReadOnlySpan`1<!0> valuetype [mscorlib]System.ReadOnlySpan`1<uint8>::op_Implicit(!0[])
    IL_019f:  call       int32 [mscorlib]System.BitConverter::ToInt32(valuetype [mscorlib]System.ReadOnlySpan`1<uint8>)
    IL_01a4:  stloc.s    V_4
    IL_01a6:  ldloc.0
    IL_01a7:  ldloc.2
    IL_01a8:  ldloc.3
    IL_01a9:  callvirt   instance valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::GetGeneticTraitType()
    IL_01ae:  conv.i2
    IL_01af:  stelem.i2
    IL_01b0:  ldloc.1
    IL_01b1:  ldloc.2
    IL_01b2:  ldloc.s    V_4
    IL_01b4:  stelem.i4
    IL_01b5:  br.s       IL_01c7

    IL_01b7:  ldarg.0
    IL_01b8:  ldc.i4.0
    IL_01b9:  ldloc.0
    IL_01ba:  ldloc.1
    IL_01bb:  ldarg.2
    IL_01bc:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01c1:  call       instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetailsClientRpc(bool,
                                                                                                   int16[],
                                                                                                   int32[],
                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01c6:  ret

    IL_01c7:  ldloc.2
    IL_01c8:  ldc.i4.1
    IL_01c9:  add
    IL_01ca:  stloc.2
    IL_01cb:  ldloc.2
    IL_01cc:  ldarg.1
    IL_01cd:  ldlen
    IL_01ce:  conv.i4
    IL_01cf:  blt        IL_0121

    IL_01d4:  ldarg.0
    IL_01d5:  ldc.i4.1
    IL_01d6:  ldloc.0
    IL_01d7:  ldloc.1
    IL_01d8:  ldarg.2
    IL_01d9:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01de:  call       instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetailsClientRpc(bool,
                                                                                                   int16[],
                                                                                                   int32[],
                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01e3:  ret
  } // end of method WorldObjectsHandler::GetGeneticsDetailsServerRpc

  .method private hidebysig instance void 
          GetGeneticsDetailsClientRpc(bool success,
                                      int16[] types,
                                      int32[] values,
                                      [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [4] = nullref
    // Code size       405 (0x195)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_2,
             bool V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             bool V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8)
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
    IL_003c:  brfalse    IL_0140

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_0140

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x10adbd0b
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  ldloca     V_1
    IL_007a:  ldarga     success
    IL_007e:  ldloca     V_2
    IL_0082:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0088:  ldloc      V_2
    IL_008c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0091:  ldarg      types
    IL_0095:  ldnull
    IL_0096:  cgt.un
    IL_0098:  stloc      V_3
    IL_009c:  ldloca     V_1
    IL_00a0:  ldloca     V_3
    IL_00a4:  ldloca     V_4
    IL_00a8:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00ae:  ldloc      V_4
    IL_00b2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b7:  ldloc      V_3
    IL_00bb:  brfalse    IL_00db

    IL_00c0:  ldloca     V_1
    IL_00c4:  ldarg      types
    IL_00c8:  ldloca     V_5
    IL_00cc:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00d2:  ldloc      V_5
    IL_00d6:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int16>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00db:  nop
    IL_00dc:  ldarg      values
    IL_00e0:  ldnull
    IL_00e1:  cgt.un
    IL_00e3:  stloc      V_6
    IL_00e7:  ldloca     V_1
    IL_00eb:  ldloca     V_6
    IL_00ef:  ldloca     V_7
    IL_00f3:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00f9:  ldloc      V_7
    IL_00fd:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0102:  ldloc      V_6
    IL_0106:  brfalse    IL_0126

    IL_010b:  ldloca     V_1
    IL_010f:  ldarg      values
    IL_0113:  ldloca     V_8
    IL_0117:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_011d:  ldloc      V_8
    IL_0121:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0126:  nop
    IL_0127:  nop
    IL_0128:  ldarg.0
    IL_0129:  ldloca     V_1
    IL_012d:  ldc.i4     0x10adbd0b
    IL_0132:  ldarg      clientRpcParams
    IL_0136:  ldc.i4     0x0
    IL_013b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0140:  nop
    IL_0141:  ldarg.0
    IL_0142:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0147:  ldc.i4     0x1
    IL_014c:  ceq
    IL_014e:  brfalse    IL_016f

    IL_0153:  ldloc      V_0
    IL_0157:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_015c:  brtrue     IL_0170

    IL_0161:  ldloc      V_0
    IL_0165:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_016a:  brtrue     IL_0170

    IL_016f:  ret

    IL_0170:  nop
    IL_0171:  ldarg.0
    IL_0172:  ldc.i4     0x0
    IL_0177:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_017c:  ldarg.0
    IL_017d:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`3<bool,int16[],int32[]>> SpaceCraft.WorldObjectsHandler::_callbackUpdateTraits
    IL_0182:  callvirt   instance !0 class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`3<bool,int16[],int32[]>>::Dequeue()
    IL_0187:  dup
    IL_0188:  brtrue.s   IL_018c

    IL_018a:  pop
    IL_018b:  ret

    IL_018c:  ldarg.1
    IL_018d:  ldarg.2
    IL_018e:  ldarg.3
    IL_018f:  callvirt   instance void class [mscorlib]System.Action`3<bool,int16[],int32[]>::Invoke(!0,
                                                                                                     !1,
                                                                                                     !2)
    IL_0194:  ret
  } // end of method WorldObjectsHandler::GetGeneticsDetailsClientRpc

  .method public hidebysig instance void 
          SetSceneWorldObjectGrowthAndCount(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_000d:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int SpaceCraft.WorldObject::GetCount()
    IL_0018:  call       instance void SpaceCraft.WorldObjectsHandler::SetSceneWorldObjectGrowthServerRpc(int32,
                                                                                                          int32,
                                                                                                          valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int)
    IL_001d:  ret
  } // end of method WorldObjectsHandler::SetSceneWorldObjectGrowthAndCount

  .method private hidebysig instance void 
          SetSceneWorldObjectGrowthServerRpc(int32 worldObjectId,
                                             int32 groupHash,
                                             valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int 'value') cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    // Code size       256 (0x100)
    .maxstack  7
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_1
    IL_000a:  ldloc      V_1
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_1
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
    IL_003c:  brfalse    IL_00c4

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x3dc24278
    IL_0048:  ldloc      V_3
    IL_004c:  ldloca     V_4
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_4
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_4
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_2
    IL_007b:  ldloc      V_2
    IL_007f:  ldarg      worldObjectId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_2
    IL_008c:  ldarg      groupHash
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloca     V_2
    IL_0099:  ldarga     'value'
    IL_009d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int&)
    IL_00a2:  nop
    IL_00a3:  ldarg.0
    IL_00a4:  ldloca     V_2
    IL_00a8:  ldc.i4     0x3dc24278
    IL_00ad:  ldloc      V_3
    IL_00b1:  ldloc      V_4
    IL_00b5:  ldc.i4     0x2
    IL_00ba:  ldc.i4     0x0
    IL_00bf:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00c4:  nop
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00cb:  ldc.i4     0x1
    IL_00d0:  ceq
    IL_00d2:  brtrue     IL_00d8

    IL_00d7:  ret

    IL_00d8:  nop
    IL_00d9:  ldarg.0
    IL_00da:  ldc.i4     0x0
    IL_00df:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e4:  ldarg.0
    IL_00e5:  ldarg.1
    IL_00e6:  ldarg.2
    IL_00e7:  ldarg.3
    IL_00e8:  call       instance void SpaceCraft.WorldObjectsHandler::SetSceneWorldObjectGrowth(int32,
                                                                                                 int32,
                                                                                                 valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int)
    IL_00ed:  ldarg.0
    IL_00ee:  ldarg.1
    IL_00ef:  ldarg.2
    IL_00f0:  ldarg.3
    IL_00f1:  ldloca.s   V_0
    IL_00f3:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams
    IL_00f9:  ldloc.0
    IL_00fa:  call       instance void SpaceCraft.WorldObjectsHandler::SetSceneWorldObjectGrowthClientRpc(int32,
                                                                                                          int32,
                                                                                                          valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int,
                                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_00ff:  ret
  } // end of method WorldObjectsHandler::SetSceneWorldObjectGrowthServerRpc

  .method private hidebysig instance void 
          SetSceneWorldObjectGrowthClientRpc(int32 worldObjectId,
                                             int32 groupHash,
                                             valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int 'value',
                                             [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [4] = nullref
    // Code size       260 (0x104)
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
    IL_003c:  brfalse    IL_00b6

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_00b6

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x119006a3
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  ldloc      V_1
    IL_007a:  ldarg      worldObjectId
    IL_007e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0083:  ldloc      V_1
    IL_0087:  ldarg      groupHash
    IL_008b:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0090:  ldloca     V_1
    IL_0094:  ldarga     'value'
    IL_0098:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int&)
    IL_009d:  nop
    IL_009e:  ldarg.0
    IL_009f:  ldloca     V_1
    IL_00a3:  ldc.i4     0x119006a3
    IL_00a8:  ldarg      clientRpcParams
    IL_00ac:  ldc.i4     0x0
    IL_00b1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00b6:  nop
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00bd:  ldc.i4     0x1
    IL_00c2:  ceq
    IL_00c4:  brfalse    IL_00e5

    IL_00c9:  ldloc      V_0
    IL_00cd:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00d2:  brtrue     IL_00e6

    IL_00d7:  ldloc      V_0
    IL_00db:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00e0:  brtrue     IL_00e6

    IL_00e5:  ret

    IL_00e6:  nop
    IL_00e7:  ldarg.0
    IL_00e8:  ldc.i4     0x0
    IL_00ed:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00f2:  ldarg.0
    IL_00f3:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_00f8:  brtrue.s   IL_0103

    IL_00fa:  ldarg.0
    IL_00fb:  ldarg.1
    IL_00fc:  ldarg.2
    IL_00fd:  ldarg.3
    IL_00fe:  call       instance void SpaceCraft.WorldObjectsHandler::SetSceneWorldObjectGrowth(int32,
                                                                                                 int32,
                                                                                                 valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int)
    IL_0103:  ret
  } // end of method WorldObjectsHandler::SetSceneWorldObjectGrowthClientRpc

  .method private hidebysig instance void 
          SetSceneWorldObjectGrowth(int32 worldObjectId,
                                    int32 groupHash,
                                    valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int 'value') cil managed
  {
    // Code size       69 (0x45)
    .maxstack  5
    .locals init (class SpaceCraft.WorldObject V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_000e:  brtrue.s   IL_0020

    IL_0010:  ldarg.0
    IL_0011:  ldarg.2
    IL_0012:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_0017:  ldarg.1
    IL_0018:  ldnull
    IL_0019:  ldc.i4.1
    IL_001a:  call       instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_001f:  stloc.0
    IL_0020:  ldloc.0
    IL_0021:  ldarg.3
    IL_0022:  callvirt   instance void SpaceCraft.WorldObject::SetCount(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int)
    IL_0027:  ldloc.0
    IL_0028:  ldarga.s   'value'
    IL_002a:  call       instance int32 [UnityEngine.CoreModule]UnityEngine.Vector2Int::get_x()
    IL_002f:  conv.r4
    IL_0030:  ldarga.s   'value'
    IL_0032:  call       instance int32 [UnityEngine.CoreModule]UnityEngine.Vector2Int::get_y()
    IL_0037:  conv.r4
    IL_0038:  div
    IL_0039:  ldc.r4     100.
    IL_003e:  mul
    IL_003f:  callvirt   instance void SpaceCraft.WorldObject::SetGrowth(float32)
    IL_0044:  ret
  } // end of method WorldObjectsHandler::SetSceneWorldObjectGrowth

  .method public hidebysig instance void 
          RefreshSceneWorldObjectGrowth(int32 worldObjectId) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  3
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldloca.s   V_0
    IL_0004:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_000a:  ldloc.0
    IL_000b:  call       instance void SpaceCraft.WorldObjectsHandler::RefreshSceneWorldObjectGrowthServerRpc(int32,
                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0010:  ret
  } // end of method WorldObjectsHandler::RefreshSceneWorldObjectGrowth

  .method private hidebysig instance void 
          RefreshSceneWorldObjectGrowthServerRpc(int32 worldObjectId,
                                                 [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute::.ctor(valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo) = ( 01 00 02 00 00 00 01 00 53 55 6F 55 6E 69 74 79   // ........SUoUnity
                                                                                                                                              2E 4E 65 74 63 6F 64 65 2E 52 70 63 49 6E 76 6F   // .Netcode.RpcInvo
                                                                                                                                              6B 65 50 65 72 6D 69 73 73 69 6F 6E 2C 20 55 6E   // kePermission, Un
                                                                                                                                              69 74 79 2E 4E 65 74 63 6F 64 65 2E 52 75 6E 74   // ity.Netcode.Runt
                                                                                                                                              69 6D 65 2C 20 56 65 72 73 69 6F 6E 3D 30 2E 30   // ime, Version=0.0
                                                                                                                                              2E 30 2E 30 2C 20 43 75 6C 74 75 72 65 3D 6E 65   // .0.0, Culture=ne
                                                                                                                                              75 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79   // utral, PublicKey
                                                                                                                                              54 6F 6B 65 6E 3D 6E 75 6C 6C 10 49 6E 76 6F 6B   // Token=null.Invok
                                                                                                                                              65 50 65 72 6D 69 73 73 69 6F 6E 00 00 00 00 )    // ePermission....
    .param [2] = nullref
    // Code size       249 (0xf9)
    .maxstack  7
    .locals init (class SpaceCraft.WorldObject V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_1
    IL_000a:  ldloc      V_1
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_1
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x2ae0c450
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_3
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_3
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_3
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_2
    IL_007b:  ldloc      V_2
    IL_007f:  ldarg      worldObjectId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_2
    IL_008e:  ldc.i4     0x2ae0c450
    IL_0093:  ldarg      rpcParams
    IL_0097:  ldloc      V_3
    IL_009b:  ldc.i4     0x2
    IL_00a0:  ldc.i4     0x0
    IL_00a5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00aa:  nop
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00b1:  ldc.i4     0x1
    IL_00b6:  ceq
    IL_00b8:  brtrue     IL_00be

    IL_00bd:  ret

    IL_00be:  nop
    IL_00bf:  ldarg.0
    IL_00c0:  ldc.i4     0x0
    IL_00c5:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_00d0:  ldarg.1
    IL_00d1:  ldloca.s   V_0
    IL_00d3:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_00d8:  brfalse.s  IL_00f8

    IL_00da:  ldarg.0
    IL_00db:  ldarg.1
    IL_00dc:  ldloc.0
    IL_00dd:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_00e2:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_00e7:  ldloc.0
    IL_00e8:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int SpaceCraft.WorldObject::GetCount()
    IL_00ed:  ldarg.2
    IL_00ee:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00f3:  call       instance void SpaceCraft.WorldObjectsHandler::SetSceneWorldObjectGrowthClientRpc(int32,
                                                                                                          int32,
                                                                                                          valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int,
                                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_00f8:  ret
  } // end of method WorldObjectsHandler::RefreshSceneWorldObjectGrowthServerRpc

  .method private hidebysig instance void 
          SetPanelsForNewlyInstantiatedWorldObject(class SpaceCraft.WorldObject worldObject,
                                                   class [UnityEngine.CoreModule]UnityEngine.GameObject newPlacedWorldObject) cil managed
  {
    // Code size       83 (0x53)
    .maxstack  4
    .locals init (int32 V_0,
             class SpaceCraft.Panel[] V_1,
             int32 V_2,
             class SpaceCraft.Panel V_3,
             valuetype SpaceCraft.DataConfig/BuildPanelSubType V_4)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::GetPanelsId()
    IL_0006:  brfalse.s  IL_0052

    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::GetPanelsId()
    IL_000e:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0013:  ldc.i4.0
    IL_0014:  ble.s      IL_0052

    IL_0016:  ldarg.2
    IL_0017:  callvirt   instance !!0[] [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentsInChildren<class SpaceCraft.Panel>()
    IL_001c:  ldc.i4.0
    IL_001d:  stloc.0
    IL_001e:  stloc.1
    IL_001f:  ldc.i4.0
    IL_0020:  stloc.2
    IL_0021:  br.s       IL_004c

    IL_0023:  ldloc.1
    IL_0024:  ldloc.2
    IL_0025:  ldelem.ref
    IL_0026:  stloc.3
    .try
    {
      IL_0027:  ldarg.1
      IL_0028:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::GetPanelsId()
      IL_002d:  ldloc.0
      IL_002e:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<int32>::get_Item(int32)
      IL_0033:  stloc.s    V_4
      IL_0035:  ldloc.3
      IL_0036:  ldloc.s    V_4
      IL_0038:  ldc.i4.0
      IL_0039:  ldc.i4.0
      IL_003a:  callvirt   instance void SpaceCraft.Panel::ChangePanel(valuetype SpaceCraft.DataConfig/BuildPanelSubType,
                                                                       bool,
                                                                       bool)
      IL_003f:  ldloc.0
      IL_0040:  ldc.i4.1
      IL_0041:  add
      IL_0042:  stloc.0
      IL_0043:  leave.s    IL_0048

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0045:  pop
      IL_0046:  leave.s    IL_0048

    }  // end handler
    IL_0048:  ldloc.2
    IL_0049:  ldc.i4.1
    IL_004a:  add
    IL_004b:  stloc.2
    IL_004c:  ldloc.2
    IL_004d:  ldloc.1
    IL_004e:  ldlen
    IL_004f:  conv.i4
    IL_0050:  blt.s      IL_0023

    IL_0052:  ret
  } // end of method WorldObjectsHandler::SetPanelsForNewlyInstantiatedWorldObject

  .method private hidebysig instance void 
          ChangeContingousPanels(class [UnityEngine.CoreModule]UnityEngine.GameObject newPlacedWorldObject) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  2
    .locals init (class SpaceCraft.Panel[] V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance !!0[] [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentsInChildren<class SpaceCraft.Panel>()
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br.s       IL_0017

    IL_000b:  ldloc.0
    IL_000c:  ldloc.1
    IL_000d:  ldelem.ref
    IL_000e:  callvirt   instance void SpaceCraft.Panel::ChangePanelAndContigousPanel()
    IL_0013:  ldloc.1
    IL_0014:  ldc.i4.1
    IL_0015:  add
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  ldloc.0
    IL_0019:  ldlen
    IL_001a:  conv.i4
    IL_001b:  blt.s      IL_000b

    IL_001d:  ret
  } // end of method WorldObjectsHandler::ChangeContingousPanels

  .method public hidebysig instance void 
          PanelConstructed(int32 'type') cil managed
  {
    // Code size       75 (0x4b)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype SpaceCraft.Group/GroupCountData V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_0007:  ldarg.1
    IL_0008:  call       instance int32 SpaceCraft.WorldObjectsHandler::IndexOfInNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                             int32)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.0
    IL_0010:  bge.s      IL_0024

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_0018:  ldarg.1
    IL_0019:  call       valuetype SpaceCraft.Group/GroupCountData SpaceCraft.Group/GroupCountData::op_Implicit(int32)
    IL_001e:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::Add(!0)
    IL_0023:  ret

    IL_0024:  ldarg.0
    IL_0025:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_002a:  ldloc.0
    IL_002b:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::get_Item(int32)
    IL_0030:  stloc.1
    IL_0031:  ldloca.s   V_1
    IL_0033:  ldflda     int32 SpaceCraft.Group/GroupCountData::count
    IL_0038:  dup
    IL_0039:  ldind.i4
    IL_003a:  ldc.i4.1
    IL_003b:  add
    IL_003c:  stind.i4
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_0043:  ldloc.0
    IL_0044:  ldloc.1
    IL_0045:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>::set_Item(int32,
                                                                                                                                                     !0)
    IL_004a:  ret
  } // end of method WorldObjectsHandler::PanelConstructed

  .method public hidebysig instance bool 
          HasConstructedPanel(int32 'type') cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_0007:  ldarg.1
    IL_0008:  call       instance int32 SpaceCraft.WorldObjectsHandler::IndexOfInNetworkList(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData>,
                                                                                             int32)
    IL_000d:  ldc.i4.m1
    IL_000e:  ceq
    IL_0010:  ldc.i4.0
    IL_0011:  ceq
    IL_0013:  ret
  } // end of method WorldObjectsHandler::HasConstructedPanel

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       84 (0x54)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::.ctor()
    IL_0006:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_allWorldObjects
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0011:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_constructedWorldObjects
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::.ctor()
    IL_001c:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::_itemsPickablesWorldObjects
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`3<bool,int16[],int32[]>>::.ctor()
    IL_0027:  stfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`3<bool,int16[],int32[]>> SpaceCraft.WorldObjectsHandler::_callbackUpdateTraits
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>>::.ctor()
    IL_0032:  stfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.GameObject>> SpaceCraft.WorldObjectsHandler::_getGameObjectCallbackQueue
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32>::.ctor()
    IL_003d:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,int32> SpaceCraft.WorldObjectsHandler::_totalCraftPerClient
    IL_0042:  ldarg.0
    IL_0043:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData>::.ctor()
    IL_0048:  stfld      class [mscorlib]System.Collections.Generic.List`1<valuetype SpaceCraft.Group/EnergyGroupData> SpaceCraft.WorldObjectsHandler::_energyGroupData
    IL_004d:  ldarg.0
    IL_004e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::.ctor()
    IL_0053:  ret
  } // end of method WorldObjectsHandler::.ctor

  .method family hidebysig virtual instance void 
          __initializeVariables() cil managed
  {
    // Code size       241 (0xf1)
    .maxstack  3
    .locals (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse    IL_001d

    IL_0011:  nop
    IL_0012:  ldstr      "WorldObjectsHandler._allWorldObjectsGroups cannot "
    + "be null. All NetworkVariableBase instances must be initialized."
    IL_0017:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
    IL_001c:  throw

    IL_001d:  nop
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0024:  ldarg.0
    IL_0025:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase::Initialize(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour)
    IL_002a:  nop
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0032:  ldstr      "_allWorldObjectsGroups"
    IL_0037:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__nameNetworkVariable(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase,
                                                                                                                    string)
    IL_003c:  nop
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase> [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::NetworkVariableFields
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_allWorldObjectsGroups
    IL_0049:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase>::Add(!0)
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_0054:  ldnull
    IL_0055:  ceq
    IL_0057:  stloc.0
    IL_0058:  ldloc.0
    IL_0059:  brfalse    IL_006a

    IL_005e:  nop
    IL_005f:  ldstr      "WorldObjectsHandler._constructedWorldObjectsGroups"
    + " cannot be null. All NetworkVariableBase instances must be initialized."
    IL_0064:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
    IL_0069:  throw

    IL_006a:  nop
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_0071:  ldarg.0
    IL_0072:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase::Initialize(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour)
    IL_0077:  nop
    IL_0078:  ldarg.0
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_007f:  ldstr      "_constructedWorldObjectsGroups"
    IL_0084:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__nameNetworkVariable(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase,
                                                                                                                    string)
    IL_0089:  nop
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase> [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::NetworkVariableFields
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedWorldObjectsGroups
    IL_0096:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase>::Add(!0)
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_00a1:  ldnull
    IL_00a2:  ceq
    IL_00a4:  stloc.0
    IL_00a5:  ldloc.0
    IL_00a6:  brfalse    IL_00b7

    IL_00ab:  nop
    IL_00ac:  ldstr      "WorldObjectsHandler._constructedPanelTypes cannot "
    + "be null. All NetworkVariableBase instances must be initialized."
    IL_00b1:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
    IL_00b6:  throw

    IL_00b7:  nop
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_00be:  ldarg.0
    IL_00bf:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase::Initialize(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour)
    IL_00c4:  nop
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_00cc:  ldstr      "_constructedPanelTypes"
    IL_00d1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__nameNetworkVariable(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase,
                                                                                                                    string)
    IL_00d6:  nop
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase> [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::NetworkVariableFields
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkList`1<valuetype SpaceCraft.Group/GroupCountData> SpaceCraft.WorldObjectsHandler::_constructedPanelTypes
    IL_00e3:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase>::Add(!0)
    IL_00e8:  nop
    IL_00e9:  ldarg.0
    IL_00ea:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__initializeVariables()
    IL_00ef:  nop
    IL_00f0:  ret
  } // end of method WorldObjectsHandler::__initializeVariables

  .method family hidebysig virtual instance void 
          __initializeRpcs() cil managed
  {
    // Code size       933 (0x3a5)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xeac57ef1
    IL_0006:  ldnull
    IL_0007:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_3938811633(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_000d:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0012:  ldstr      "HasWorldObjectAtPositionServerRpc"
    IL_0017:  ldc.i4     0x0
    IL_001c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0x503b6e41
    IL_0027:  ldnull
    IL_0028:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_1346072129(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_002e:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0033:  ldstr      "HasWorldObjectAtPositionClientRpc"
    IL_0038:  ldc.i4     0x1
    IL_003d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x162359a4
    IL_0048:  ldnull
    IL_0049:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_371415460(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_004f:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0054:  ldstr      "GetGameObjectFromWorldObjectServerRpc"
    IL_0059:  ldc.i4     0x0
    IL_005e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0063:  ldarg.0
    IL_0064:  ldc.i4     0xd16e9648
    IL_0069:  ldnull
    IL_006a:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_3513685576(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0070:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0075:  ldstr      "GetGameObjectFromWorldObjectClientRpc"
    IL_007a:  ldc.i4     0x1
    IL_007f:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0084:  ldarg.0
    IL_0085:  ldc.i4     0x4fe1fe80
    IL_008a:  ldnull
    IL_008b:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_1340210816(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0091:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0096:  ldstr      "SetTotalCraftedObjectsClientRpc"
    IL_009b:  ldc.i4     0x1
    IL_00a0:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_00a5:  ldarg.0
    IL_00a6:  ldc.i4     0x49f1fdf5
    IL_00ab:  ldnull
    IL_00ac:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_1240595957(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_00b2:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_00b7:  ldstr      "AddOneToTotalCraftServerRpc"
    IL_00bc:  ldc.i4     0x0
    IL_00c1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_00c6:  ldarg.0
    IL_00c7:  ldc.i4     0x364c058
    IL_00cc:  ldnull
    IL_00cd:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_56934488(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_00d3:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_00d8:  ldstr      "AddOneToTotalCraftClientRpc"
    IL_00dd:  ldc.i4     0x1
    IL_00e2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_00e7:  ldarg.0
    IL_00e8:  ldc.i4     0xec46da77
    IL_00ed:  ldnull
    IL_00ee:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_3964066423(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_00f4:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_00f9:  ldstr      "DestroyWorldObjectServerRpc"
    IL_00fe:  ldc.i4     0x0
    IL_0103:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0108:  ldarg.0
    IL_0109:  ldc.i4     0xd4fcef1b
    IL_010e:  ldnull
    IL_010f:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_3573346075(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0115:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_011a:  ldstr      "DestroyWorldObjectGOClientRpc"
    IL_011f:  ldc.i4     0x1
    IL_0124:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0129:  ldarg.0
    IL_012a:  ldc.i4     0x29b1b272
    IL_012f:  ldnull
    IL_0130:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_699511410(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0136:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_013b:  ldstr      "DestroyWorldObjectFromSceneResultClientRpc"
    IL_0140:  ldc.i4     0x1
    IL_0145:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_014a:  ldarg.0
    IL_014b:  ldc.i4     0x10112ea3
    IL_0150:  ldnull
    IL_0151:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_269561507(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0157:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_015c:  ldstr      "DestroyWorldObjectFromSceneServerRpc"
    IL_0161:  ldc.i4     0x0
    IL_0166:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_016b:  ldarg.0
    IL_016c:  ldc.i4     0x7279a150
    IL_0171:  ldnull
    IL_0172:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_1920573776(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0178:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_017d:  ldstr      "DisableWorldObjectFromSceneServerRpc"
    IL_0182:  ldc.i4     0x0
    IL_0187:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_018c:  ldarg.0
    IL_018d:  ldc.i4     0x7e091f6d
    IL_0192:  ldnull
    IL_0193:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_2114527085(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0199:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_019e:  ldstr      "IsWorldObjectFromSceneActiveServerRpc"
    IL_01a3:  ldc.i4     0x0
    IL_01a8:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_01ad:  ldarg.0
    IL_01ae:  ldc.i4     0x4ff9fc05
    IL_01b3:  ldnull
    IL_01b4:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_1341783045(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_01ba:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_01bf:  ldstr      "RetrieveResourcesFromDeconstructionServerRpc"
    IL_01c4:  ldc.i4     0x0
    IL_01c9:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_01ce:  ldarg.0
    IL_01cf:  ldc.i4     0xa2af2c9b
    IL_01d4:  ldnull
    IL_01d5:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_2729389211(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_01db:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_01e0:  ldstr      "DisplayDeconstructResultClientRpc"
    IL_01e5:  ldc.i4     0x1
    IL_01ea:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_01ef:  ldarg.0
    IL_01f0:  ldc.i4     0xc8b34296
    IL_01f5:  ldnull
    IL_01f6:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_3367191190(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_01fc:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0201:  ldstr      "CreateAndInstantiateWorldObjectServerRpc"
    IL_0206:  ldc.i4     0x0
    IL_020b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0210:  ldarg.0
    IL_0211:  ldc.i4     0xa020b35b
    IL_0216:  ldnull
    IL_0217:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_2686497627(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_021d:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0222:  ldstr      "CreateAndInstantiateWorldObjectClientRpc"
    IL_0227:  ldc.i4     0x1
    IL_022c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0231:  ldarg.0
    IL_0232:  ldc.i4     0x8aa6a5cf
    IL_0237:  ldnull
    IL_0238:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_2326177231(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_023e:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0243:  ldstr      "CreateAndDropOnFloorServerRpc"
    IL_0248:  ldc.i4     0x0
    IL_024d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0252:  ldarg.0
    IL_0253:  ldc.i4     0x1d21d6c
    IL_0258:  ldnull
    IL_0259:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_30547308(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_025f:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0264:  ldstr      "DropOnFloorServerRpc"
    IL_0269:  ldc.i4     0x0
    IL_026e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0273:  ldarg.0
    IL_0274:  ldc.i4     0x1fdd3f21
    IL_0279:  ldnull
    IL_027a:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_534593313(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0280:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0285:  ldstr      "DropOnFloorWithRotationServerRpc"
    IL_028a:  ldc.i4     0x0
    IL_028f:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0294:  ldarg.0
    IL_0295:  ldc.i4     0x189d93d8
    IL_029a:  ldnull
    IL_029b:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_412980184(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_02a1:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_02a6:  ldstr      "GetEnergyGroupDataServerRpc"
    IL_02ab:  ldc.i4     0x0
    IL_02b0:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_02b5:  ldarg.0
    IL_02b6:  ldc.i4     0x3d22ec91
    IL_02bb:  ldnull
    IL_02bc:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_1025698961(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_02c2:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_02c7:  ldstr      "GetEnergyGroupDataClientRpc"
    IL_02cc:  ldc.i4     0x1
    IL_02d1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_02d6:  ldarg.0
    IL_02d7:  ldc.i4     0xb06ae8b1
    IL_02dc:  ldnull
    IL_02dd:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_2959796401(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_02e3:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_02e8:  ldstr      "GenerateRandomAppearanceObjectServerRpc"
    IL_02ed:  ldc.i4     0x0
    IL_02f2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_02f7:  ldarg.0
    IL_02f8:  ldc.i4     0xf290d064
    IL_02fd:  ldnull
    IL_02fe:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_4069576804(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0304:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0309:  ldstr      "GetGeneticsDetailsServerRpc"
    IL_030e:  ldc.i4     0x0
    IL_0313:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0318:  ldarg.0
    IL_0319:  ldc.i4     0x10adbd0b
    IL_031e:  ldnull
    IL_031f:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_279821579(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0325:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_032a:  ldstr      "GetGeneticsDetailsClientRpc"
    IL_032f:  ldc.i4     0x1
    IL_0334:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0339:  ldarg.0
    IL_033a:  ldc.i4     0x3dc24278
    IL_033f:  ldnull
    IL_0340:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_1036141176(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0346:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_034b:  ldstr      "SetSceneWorldObjectGrowthServerRpc"
    IL_0350:  ldc.i4     0x0
    IL_0355:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_035a:  ldarg.0
    IL_035b:  ldc.i4     0x119006a3
    IL_0360:  ldnull
    IL_0361:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_294651555(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0367:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_036c:  ldstr      "SetSceneWorldObjectGrowthClientRpc"
    IL_0371:  ldc.i4     0x1
    IL_0376:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_037b:  ldarg.0
    IL_037c:  ldc.i4     0x2ae0c450
    IL_0381:  ldnull
    IL_0382:  ldftn      void SpaceCraft.WorldObjectsHandler::__rpc_handler_719373392(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0388:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_038d:  ldstr      "RefreshSceneWorldObjectGrowthServerRpc"
    IL_0392:  ldc.i4     0x0
    IL_0397:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_039c:  nop
    IL_039d:  ldarg.0
    IL_039e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__initializeRpcs()
    IL_03a3:  nop
    IL_03a4:  ret
  } // end of method WorldObjectsHandler::__initializeRpcs

  .method private hidebysig static void  __rpc_handler_3938811633(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       100 (0x64)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_2)
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
    IL_0023:  ldarga     reader
    IL_0027:  ldloca     V_1
    IL_002b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_0030:  ldarg.2
    IL_0031:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0036:  stloc      V_2
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4     0x1
    IL_0040:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0045:  ldarg.0
    IL_0046:  castclass  SpaceCraft.WorldObjectsHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.WorldObjectsHandler::HasWorldObjectAtPositionServerRpc(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_3938811633

  .method private hidebysig static void  __rpc_handler_1346072129(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       114 (0x72)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             bool V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_3)
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
    IL_0023:  ldarga     reader
    IL_0027:  ldloca     V_1
    IL_002b:  ldloca     V_2
    IL_002f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0035:  ldloc      V_2
    IL_0039:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_003e:  ldarg.2
    IL_003f:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_0044:  stloc      V_3
    IL_0048:  ldarg.0
    IL_0049:  ldc.i4     0x1
    IL_004e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0053:  ldarg.0
    IL_0054:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0059:  ldloc      V_1
    IL_005d:  ldloc      V_3
    IL_0061:  callvirt   instance void SpaceCraft.WorldObjectsHandler::HasWorldObjectAtPositionClientRpc(bool,
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0066:  ldarg.0
    IL_0067:  ldc.i4     0x0
    IL_006c:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0071:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_1346072129

  .method private hidebysig static void  __rpc_handler_371415460(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       100 (0x64)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_2)
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
    IL_0030:  ldarg.2
    IL_0031:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0036:  stloc      V_2
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4     0x1
    IL_0040:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0045:  ldarg.0
    IL_0046:  castclass  SpaceCraft.WorldObjectsHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GetGameObjectFromWorldObjectServerRpc(int32,
                                                                                                             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_371415460

  .method private hidebysig static void  __rpc_handler_3513685576(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       100 (0x64)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             uint64 V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_2)
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
    IL_0030:  ldarg.2
    IL_0031:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_0036:  stloc      V_2
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4     0x1
    IL_0040:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0045:  ldarg.0
    IL_0046:  castclass  SpaceCraft.WorldObjectsHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GetGameObjectFromWorldObjectClientRpc(uint64,
                                                                                                             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_3513685576

  .method private hidebysig static void  __rpc_handler_1340210816(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       100 (0x64)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_2)
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
    IL_0030:  ldarg.2
    IL_0031:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_0036:  stloc      V_2
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4     0x1
    IL_0040:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0045:  ldarg.0
    IL_0046:  castclass  SpaceCraft.WorldObjectsHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.WorldObjectsHandler::SetTotalCraftedObjectsClientRpc(int32,
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_1340210816

  .method private hidebysig static void  __rpc_handler_1240595957(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       69 (0x45)
    .maxstack  2
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0)
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
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4     0x1
    IL_0029:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_002e:  ldarg.0
    IL_002f:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0034:  callvirt   instance void SpaceCraft.WorldObjectsHandler::AddOneToTotalCraftServerRpc()
    IL_0039:  ldarg.0
    IL_003a:  ldc.i4     0x0
    IL_003f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0044:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_1240595957

  .method private hidebysig static void  __rpc_handler_56934488(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       69 (0x45)
    .maxstack  2
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0)
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
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4     0x1
    IL_0029:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_002e:  ldarg.0
    IL_002f:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0034:  callvirt   instance void SpaceCraft.WorldObjectsHandler::AddOneToTotalCraftClientRpc()
    IL_0039:  ldarg.0
    IL_003a:  ldc.i4     0x0
    IL_003f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0044:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_56934488

  .method private hidebysig static void  __rpc_handler_3964066423(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       117 (0x75)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             bool V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3)
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
    IL_0030:  ldarga     reader
    IL_0034:  ldloca     V_2
    IL_0038:  ldloca     V_3
    IL_003c:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0042:  ldloc      V_3
    IL_0046:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_004b:  ldarg.0
    IL_004c:  ldc.i4     0x1
    IL_0051:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0056:  ldarg.0
    IL_0057:  castclass  SpaceCraft.WorldObjectsHandler
    IL_005c:  ldloc      V_1
    IL_0060:  ldloc      V_2
    IL_0064:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectServerRpc(int32,
                                                                                                   bool)
    IL_0069:  ldarg.0
    IL_006a:  ldc.i4     0x0
    IL_006f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0074:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_3964066423

  .method private hidebysig static void  __rpc_handler_3573346075(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       148 (0x94)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_5)
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
    IL_0045:  ldloca     V_4
    IL_0049:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_004f:  ldloc      V_4
    IL_0053:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0058:  ldarg.2
    IL_0059:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_005e:  stloc      V_5
    IL_0062:  ldarg.0
    IL_0063:  ldc.i4     0x1
    IL_0068:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_006d:  ldarg.0
    IL_006e:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0073:  ldloc      V_1
    IL_0077:  ldloc      V_2
    IL_007b:  ldloc      V_3
    IL_007f:  ldloc      V_5
    IL_0083:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectGOClientRpc(int32,
                                                                                                     int32,
                                                                                                     float32,
                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0088:  ldarg.0
    IL_0089:  ldc.i4     0x0
    IL_008e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0093:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_3573346075

  .method private hidebysig static void  __rpc_handler_699511410(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       114 (0x72)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             bool V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_3)
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
    IL_0023:  ldarga     reader
    IL_0027:  ldloca     V_1
    IL_002b:  ldloca     V_2
    IL_002f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0035:  ldloc      V_2
    IL_0039:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_003e:  ldarg.2
    IL_003f:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_0044:  stloc      V_3
    IL_0048:  ldarg.0
    IL_0049:  ldc.i4     0x1
    IL_004e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0053:  ldarg.0
    IL_0054:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0059:  ldloc      V_1
    IL_005d:  ldloc      V_3
    IL_0061:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectFromSceneResultClientRpc(bool,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0066:  ldarg.0
    IL_0067:  ldc.i4     0x0
    IL_006c:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0071:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_699511410

  .method private hidebysig static void  __rpc_handler_269561507(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       148 (0x94)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
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
                                                                                                    int32&)
    IL_0030:  ldarg      reader
    IL_0034:  ldloca     V_2
    IL_0038:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_003d:  ldarga     reader
    IL_0041:  ldloca     V_3
    IL_0045:  ldloca     V_4
    IL_0049:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_004f:  ldloc      V_4
    IL_0053:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0058:  ldarg.2
    IL_0059:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_005e:  stloc      V_5
    IL_0062:  ldarg.0
    IL_0063:  ldc.i4     0x1
    IL_0068:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_006d:  ldarg.0
    IL_006e:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0073:  ldloc      V_1
    IL_0077:  ldloc      V_2
    IL_007b:  ldloc      V_3
    IL_007f:  ldloc      V_5
    IL_0083:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectFromSceneServerRpc(int32,
                                                                                                            int32,
                                                                                                            float32,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0088:  ldarg.0
    IL_0089:  ldc.i4     0x0
    IL_008e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0093:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_269561507

  .method private hidebysig static void  __rpc_handler_1920573776(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       151 (0x97)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             bool V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_5)
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
    IL_0045:  ldloca     V_4
    IL_0049:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_004f:  ldloc      V_4
    IL_0053:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0058:  ldarga     reader
    IL_005c:  ldloca     V_5
    IL_0060:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_0065:  ldarg.0
    IL_0066:  ldc.i4     0x1
    IL_006b:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0070:  ldarg.0
    IL_0071:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0076:  ldloc      V_1
    IL_007a:  ldloc      V_2
    IL_007e:  ldloc      V_3
    IL_0082:  ldloc      V_5
    IL_0086:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DisableWorldObjectFromSceneServerRpc(int32,
                                                                                                            int32,
                                                                                                            bool,
                                                                                                            valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_008b:  ldarg.0
    IL_008c:  ldc.i4     0x0
    IL_0091:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0096:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_1920573776

  .method private hidebysig static void  __rpc_handler_2114527085(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       100 (0x64)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_2)
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
    IL_0030:  ldarg.2
    IL_0031:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0036:  stloc      V_2
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4     0x1
    IL_0040:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0045:  ldarg.0
    IL_0046:  castclass  SpaceCraft.WorldObjectsHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.WorldObjectsHandler::IsWorldObjectFromSceneActiveServerRpc(int32,
                                                                                                             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_2114527085

  .method private hidebysig static void  __rpc_handler_1341783045(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       154 (0x9a)
    .maxstack  6
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_4,
             uint64 V_5)
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
    IL_003d:  ldarg      reader
    IL_0041:  ldloca     V_3
    IL_0045:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_004a:  ldarga     reader
    IL_004e:  ldloca     V_4
    IL_0052:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_0057:  ldarg      reader
    IL_005b:  ldloca     V_5
    IL_005f:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    uint64&)
    IL_0064:  ldarg.0
    IL_0065:  ldc.i4     0x1
    IL_006a:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_006f:  ldarg.0
    IL_0070:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0075:  ldloc      V_1
    IL_0079:  ldloc      V_2
    IL_007d:  ldloc      V_3
    IL_0081:  ldloc      V_4
    IL_0085:  ldloc      V_5
    IL_0089:  callvirt   instance void SpaceCraft.WorldObjectsHandler::RetrieveResourcesFromDeconstructionServerRpc(int32,
                                                                                                                    int32,
                                                                                                                    int32,
                                                                                                                    valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                    uint64)
    IL_008e:  ldarg.0
    IL_008f:  ldc.i4     0x0
    IL_0094:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0099:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_1341783045

  .method private hidebysig static void  __rpc_handler_2729389211(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       229 (0xe5)
    .maxstack  4
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32[] V_1,
             bool V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             int32[] V_5,
             bool V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_9)
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
    IL_0023:  ldarga     reader
    IL_0027:  ldloca     V_2
    IL_002b:  ldloca     V_3
    IL_002f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0035:  ldloc      V_3
    IL_0039:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_003e:  ldnull
    IL_003f:  stloc      V_1
    IL_0043:  ldloc      V_2
    IL_0047:  brfalse    IL_0067

    IL_004c:  ldarga     reader
    IL_0050:  ldloca     V_1
    IL_0054:  ldloca     V_4
    IL_0058:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_005e:  ldloc      V_4
    IL_0062:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0067:  nop
    IL_0068:  ldarga     reader
    IL_006c:  ldloca     V_6
    IL_0070:  ldloca     V_7
    IL_0074:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_007a:  ldloc      V_7
    IL_007e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0083:  ldnull
    IL_0084:  stloc      V_5
    IL_0088:  ldloc      V_6
    IL_008c:  brfalse    IL_00ac

    IL_0091:  ldarga     reader
    IL_0095:  ldloca     V_5
    IL_0099:  ldloca     V_8
    IL_009d:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a3:  ldloc      V_8
    IL_00a7:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00ac:  nop
    IL_00ad:  ldarg.2
    IL_00ae:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_00b3:  stloc      V_9
    IL_00b7:  ldarg.0
    IL_00b8:  ldc.i4     0x1
    IL_00bd:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00c2:  ldarg.0
    IL_00c3:  castclass  SpaceCraft.WorldObjectsHandler
    IL_00c8:  ldloc      V_1
    IL_00cc:  ldloc      V_5
    IL_00d0:  ldloc      V_9
    IL_00d4:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DisplayDeconstructResultClientRpc(int32[],
                                                                                                         int32[],
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_00d9:  ldarg.0
    IL_00da:  ldc.i4     0x0
    IL_00df:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e4:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_2729389211

  .method private hidebysig static void  __rpc_handler_3367191190(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       258 (0x102)
    .maxstack  9
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_2,
             valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion V_3,
             bool V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             bool V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7,
             bool V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             bool V_10,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_12)
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
    IL_0030:  ldarga     reader
    IL_0034:  ldloca     V_2
    IL_0038:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_003d:  ldarga     reader
    IL_0041:  ldloca     V_3
    IL_0045:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion&)
    IL_004a:  ldarga     reader
    IL_004e:  ldloca     V_4
    IL_0052:  ldloca     V_5
    IL_0056:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_005c:  ldloc      V_5
    IL_0060:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0065:  ldarga     reader
    IL_0069:  ldloca     V_6
    IL_006d:  ldloca     V_7
    IL_0071:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0077:  ldloc      V_7
    IL_007b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0080:  ldarga     reader
    IL_0084:  ldloca     V_8
    IL_0088:  ldloca     V_9
    IL_008c:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0092:  ldloc      V_9
    IL_0096:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_009b:  ldarga     reader
    IL_009f:  ldloca     V_10
    IL_00a3:  ldloca     V_11
    IL_00a7:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00ad:  ldloc      V_11
    IL_00b1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b6:  ldarg.2
    IL_00b7:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_00bc:  stloc      V_12
    IL_00c0:  ldarg.0
    IL_00c1:  ldc.i4     0x1
    IL_00c6:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00cb:  ldarg.0
    IL_00cc:  castclass  SpaceCraft.WorldObjectsHandler
    IL_00d1:  ldloc      V_1
    IL_00d5:  ldloc      V_2
    IL_00d9:  ldloc      V_3
    IL_00dd:  ldloc      V_4
    IL_00e1:  ldloc      V_6
    IL_00e5:  ldloc      V_8
    IL_00e9:  ldloc      V_10
    IL_00ed:  ldloc      V_12
    IL_00f1:  callvirt   instance void SpaceCraft.WorldObjectsHandler::CreateAndInstantiateWorldObjectServerRpc(int32,
                                                                                                                valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                                bool,
                                                                                                                bool,
                                                                                                                bool,
                                                                                                                bool,
                                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00f6:  ldarg.0
    IL_00f7:  ldc.i4     0x0
    IL_00fc:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0101:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_3367191190

  .method private hidebysig static void  __rpc_handler_2686497627(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       100 (0x64)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             uint64 V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_2)
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
    IL_0030:  ldarg.2
    IL_0031:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_0036:  stloc      V_2
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4     0x1
    IL_0040:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0045:  ldarg.0
    IL_0046:  castclass  SpaceCraft.WorldObjectsHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.WorldObjectsHandler::CreateAndInstantiateWorldObjectClientRpc(uint64,
                                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_2686497627

  .method private hidebysig static void  __rpc_handler_2326177231(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       241 (0xf1)
    .maxstack  8
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_2,
             float32 V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             bool V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             bool V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             float32 V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_10,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_11)
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
    IL_0030:  ldarga     reader
    IL_0034:  ldloca     V_2
    IL_0038:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_003d:  ldarga     reader
    IL_0041:  ldloca     V_3
    IL_0045:  ldloca     V_4
    IL_0049:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_004f:  ldloc      V_4
    IL_0053:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0058:  ldarga     reader
    IL_005c:  ldloca     V_5
    IL_0060:  ldloca     V_6
    IL_0064:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_006a:  ldloc      V_6
    IL_006e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0073:  ldarga     reader
    IL_0077:  ldloca     V_7
    IL_007b:  ldloca     V_8
    IL_007f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0085:  ldloc      V_8
    IL_0089:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_008e:  ldarga     reader
    IL_0092:  ldloca     V_9
    IL_0096:  ldloca     V_10
    IL_009a:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a0:  ldloc      V_10
    IL_00a4:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00a9:  ldarg.2
    IL_00aa:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_00af:  stloc      V_11
    IL_00b3:  ldarg.0
    IL_00b4:  ldc.i4     0x1
    IL_00b9:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00be:  ldarg.0
    IL_00bf:  castclass  SpaceCraft.WorldObjectsHandler
    IL_00c4:  ldloc      V_1
    IL_00c8:  ldloc      V_2
    IL_00cc:  ldloc      V_3
    IL_00d0:  ldloc      V_5
    IL_00d4:  ldloc      V_7
    IL_00d8:  ldloc      V_9
    IL_00dc:  ldloc      V_11
    IL_00e0:  callvirt   instance void SpaceCraft.WorldObjectsHandler::CreateAndDropOnFloorServerRpc(int32,
                                                                                                     valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                     float32,
                                                                                                     bool,
                                                                                                     bool,
                                                                                                     float32,
                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00e5:  ldarg.0
    IL_00e6:  ldc.i4     0x0
    IL_00eb:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00f0:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_2326177231

  .method private hidebysig static void  __rpc_handler_30547308(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       258 (0x102)
    .maxstack  9
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_2,
             float32 V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             bool V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             bool V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             int32 V_9,
             float32 V_10,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_12)
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
    IL_0030:  ldarga     reader
    IL_0034:  ldloca     V_2
    IL_0038:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_003d:  ldarga     reader
    IL_0041:  ldloca     V_3
    IL_0045:  ldloca     V_4
    IL_0049:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_004f:  ldloc      V_4
    IL_0053:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0058:  ldarga     reader
    IL_005c:  ldloca     V_5
    IL_0060:  ldloca     V_6
    IL_0064:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_006a:  ldloc      V_6
    IL_006e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0073:  ldarga     reader
    IL_0077:  ldloca     V_7
    IL_007b:  ldloca     V_8
    IL_007f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0085:  ldloc      V_8
    IL_0089:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_008e:  ldarg      reader
    IL_0092:  ldloca     V_9
    IL_0096:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_009b:  ldarga     reader
    IL_009f:  ldloca     V_10
    IL_00a3:  ldloca     V_11
    IL_00a7:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00ad:  ldloc      V_11
    IL_00b1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b6:  ldarg.2
    IL_00b7:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_00bc:  stloc      V_12
    IL_00c0:  ldarg.0
    IL_00c1:  ldc.i4     0x1
    IL_00c6:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00cb:  ldarg.0
    IL_00cc:  castclass  SpaceCraft.WorldObjectsHandler
    IL_00d1:  ldloc      V_1
    IL_00d5:  ldloc      V_2
    IL_00d9:  ldloc      V_3
    IL_00dd:  ldloc      V_5
    IL_00e1:  ldloc      V_7
    IL_00e5:  ldloc      V_9
    IL_00e9:  ldloc      V_10
    IL_00ed:  ldloc      V_12
    IL_00f1:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DropOnFloorServerRpc(int32,
                                                                                            valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                            float32,
                                                                                            bool,
                                                                                            bool,
                                                                                            int32,
                                                                                            float32,
                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00f6:  ldarg.0
    IL_00f7:  ldc.i4     0x0
    IL_00fc:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0101:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_30547308

  .method private hidebysig static void  __rpc_handler_534593313(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       275 (0x113)
    .maxstack  10
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_2,
             valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion V_3,
             float32 V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             bool V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7,
             bool V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             int32 V_10,
             float32 V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_12,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_13)
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
    IL_0030:  ldarga     reader
    IL_0034:  ldloca     V_2
    IL_0038:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_003d:  ldarga     reader
    IL_0041:  ldloca     V_3
    IL_0045:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion&)
    IL_004a:  ldarga     reader
    IL_004e:  ldloca     V_4
    IL_0052:  ldloca     V_5
    IL_0056:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_005c:  ldloc      V_5
    IL_0060:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0065:  ldarga     reader
    IL_0069:  ldloca     V_6
    IL_006d:  ldloca     V_7
    IL_0071:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0077:  ldloc      V_7
    IL_007b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0080:  ldarga     reader
    IL_0084:  ldloca     V_8
    IL_0088:  ldloca     V_9
    IL_008c:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0092:  ldloc      V_9
    IL_0096:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_009b:  ldarg      reader
    IL_009f:  ldloca     V_10
    IL_00a3:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_00a8:  ldarga     reader
    IL_00ac:  ldloca     V_11
    IL_00b0:  ldloca     V_12
    IL_00b4:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00ba:  ldloc      V_12
    IL_00be:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00c3:  ldarg.2
    IL_00c4:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_00c9:  stloc      V_13
    IL_00cd:  ldarg.0
    IL_00ce:  ldc.i4     0x1
    IL_00d3:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00d8:  ldarg.0
    IL_00d9:  castclass  SpaceCraft.WorldObjectsHandler
    IL_00de:  ldloc      V_1
    IL_00e2:  ldloc      V_2
    IL_00e6:  ldloc      V_3
    IL_00ea:  ldloc      V_4
    IL_00ee:  ldloc      V_6
    IL_00f2:  ldloc      V_8
    IL_00f6:  ldloc      V_10
    IL_00fa:  ldloc      V_11
    IL_00fe:  ldloc      V_13
    IL_0102:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DropOnFloorWithRotationServerRpc(int32,
                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                        valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                        float32,
                                                                                                        bool,
                                                                                                        bool,
                                                                                                        int32,
                                                                                                        float32,
                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0107:  ldarg.0
    IL_0108:  ldc.i4     0x0
    IL_010d:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0112:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_534593313

  .method private hidebysig static void  __rpc_handler_412980184(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       83 (0x53)
    .maxstack  2
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
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
    IL_0023:  ldarg.2
    IL_0024:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0029:  stloc      V_1
    IL_002d:  ldarg.0
    IL_002e:  ldc.i4     0x1
    IL_0033:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0038:  ldarg.0
    IL_0039:  castclass  SpaceCraft.WorldObjectsHandler
    IL_003e:  ldloc      V_1
    IL_0042:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GetEnergyGroupDataServerRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0047:  ldarg.0
    IL_0048:  ldc.i4     0x0
    IL_004d:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0052:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_412980184

  .method private hidebysig static void  __rpc_handler_1025698961(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       156 (0x9c)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype SpaceCraft.Group/EnergyGroupData[] V_1,
             bool V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForStructs V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_5)
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
    IL_0023:  ldarga     reader
    IL_0027:  ldloca     V_2
    IL_002b:  ldloca     V_3
    IL_002f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0035:  ldloc      V_3
    IL_0039:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_003e:  ldnull
    IL_003f:  stloc      V_1
    IL_0043:  ldloc      V_2
    IL_0047:  brfalse    IL_0067

    IL_004c:  ldarga     reader
    IL_0050:  ldloca     V_1
    IL_0054:  ldloca     V_4
    IL_0058:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForStructs
    IL_005e:  ldloc      V_4
    IL_0062:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<valuetype SpaceCraft.Group/EnergyGroupData>(!!0[]&,
                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForStructs)
    IL_0067:  nop
    IL_0068:  ldarg.2
    IL_0069:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_006e:  stloc      V_5
    IL_0072:  ldarg.0
    IL_0073:  ldc.i4     0x1
    IL_0078:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_007d:  ldarg.0
    IL_007e:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0083:  ldloc      V_1
    IL_0087:  ldloc      V_5
    IL_008b:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GetEnergyGroupDataClientRpc(valuetype SpaceCraft.Group/EnergyGroupData[],
                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0090:  ldarg.0
    IL_0091:  ldc.i4     0x0
    IL_0096:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_009b:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_1025698961

  .method private hidebysig static void  __rpc_handler_2959796401(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       199 (0xc7)
    .maxstack  8
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             float32 V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_6,
             valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_8)
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
    IL_0023:  ldarga     reader
    IL_0027:  ldloca     V_1
    IL_002b:  ldloca     V_2
    IL_002f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0035:  ldloc      V_2
    IL_0039:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_003e:  ldarg      reader
    IL_0042:  ldloca     V_3
    IL_0046:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_004b:  ldarg      reader
    IL_004f:  ldloca     V_4
    IL_0053:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_0058:  ldarg      reader
    IL_005c:  ldloca     V_5
    IL_0060:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_0065:  ldarga     reader
    IL_0069:  ldloca     V_6
    IL_006d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_0072:  ldarga     reader
    IL_0076:  ldloca     V_7
    IL_007a:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion&)
    IL_007f:  ldarg.2
    IL_0080:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0085:  stloc      V_8
    IL_0089:  ldarg.0
    IL_008a:  ldc.i4     0x1
    IL_008f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0094:  ldarg.0
    IL_0095:  castclass  SpaceCraft.WorldObjectsHandler
    IL_009a:  ldloc      V_1
    IL_009e:  ldloc      V_3
    IL_00a2:  ldloc      V_4
    IL_00a6:  ldloc      V_5
    IL_00aa:  ldloc      V_6
    IL_00ae:  ldloc      V_7
    IL_00b2:  ldloc      V_8
    IL_00b6:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GenerateRandomAppearanceObjectServerRpc(float32,
                                                                                                               int32,
                                                                                                               int32,
                                                                                                               int32,
                                                                                                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                               valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion,
                                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00bb:  ldarg.0
    IL_00bc:  ldc.i4     0x0
    IL_00c1:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00c6:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_2959796401

  .method private hidebysig static void  __rpc_handler_4069576804(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       156 (0x9c)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32[] V_1,
             bool V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
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
    IL_0023:  ldarga     reader
    IL_0027:  ldloca     V_2
    IL_002b:  ldloca     V_3
    IL_002f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0035:  ldloc      V_3
    IL_0039:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_003e:  ldnull
    IL_003f:  stloc      V_1
    IL_0043:  ldloc      V_2
    IL_0047:  brfalse    IL_0067

    IL_004c:  ldarga     reader
    IL_0050:  ldloca     V_1
    IL_0054:  ldloca     V_4
    IL_0058:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_005e:  ldloc      V_4
    IL_0062:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0067:  nop
    IL_0068:  ldarg.2
    IL_0069:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_006e:  stloc      V_5
    IL_0072:  ldarg.0
    IL_0073:  ldc.i4     0x1
    IL_0078:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_007d:  ldarg.0
    IL_007e:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0083:  ldloc      V_1
    IL_0087:  ldloc      V_5
    IL_008b:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetailsServerRpc(int32[],
                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0090:  ldarg.0
    IL_0091:  ldc.i4     0x0
    IL_0096:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_009b:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_4069576804

  .method private hidebysig static void  __rpc_handler_279821579(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       260 (0x104)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             bool V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_2,
             int16[] V_3,
             bool V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             int32[] V_7,
             bool V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_10,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_11)
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
    IL_0023:  ldarga     reader
    IL_0027:  ldloca     V_1
    IL_002b:  ldloca     V_2
    IL_002f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0035:  ldloc      V_2
    IL_0039:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_003e:  ldarga     reader
    IL_0042:  ldloca     V_4
    IL_0046:  ldloca     V_5
    IL_004a:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0050:  ldloc      V_5
    IL_0054:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0059:  ldnull
    IL_005a:  stloc      V_3
    IL_005e:  ldloc      V_4
    IL_0062:  brfalse    IL_0082

    IL_0067:  ldarga     reader
    IL_006b:  ldloca     V_3
    IL_006f:  ldloca     V_6
    IL_0073:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0079:  ldloc      V_6
    IL_007d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int16>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0082:  nop
    IL_0083:  ldarga     reader
    IL_0087:  ldloca     V_8
    IL_008b:  ldloca     V_9
    IL_008f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0095:  ldloc      V_9
    IL_0099:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_009e:  ldnull
    IL_009f:  stloc      V_7
    IL_00a3:  ldloc      V_8
    IL_00a7:  brfalse    IL_00c7

    IL_00ac:  ldarga     reader
    IL_00b0:  ldloca     V_7
    IL_00b4:  ldloca     V_10
    IL_00b8:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00be:  ldloc      V_10
    IL_00c2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00c7:  nop
    IL_00c8:  ldarg.2
    IL_00c9:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_00ce:  stloc      V_11
    IL_00d2:  ldarg.0
    IL_00d3:  ldc.i4     0x1
    IL_00d8:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00dd:  ldarg.0
    IL_00de:  castclass  SpaceCraft.WorldObjectsHandler
    IL_00e3:  ldloc      V_1
    IL_00e7:  ldloc      V_3
    IL_00eb:  ldloc      V_7
    IL_00ef:  ldloc      V_11
    IL_00f3:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetailsClientRpc(bool,
                                                                                                   int16[],
                                                                                                   int32[],
                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_00f8:  ldarg.0
    IL_00f9:  ldc.i4     0x0
    IL_00fe:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0103:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_279821579

  .method private hidebysig static void  __rpc_handler_1036141176(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       120 (0x78)
    .maxstack  4
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int V_3)
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
    IL_0045:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int&)
    IL_004a:  ldarg.0
    IL_004b:  ldc.i4     0x1
    IL_0050:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0055:  ldarg.0
    IL_0056:  castclass  SpaceCraft.WorldObjectsHandler
    IL_005b:  ldloc      V_1
    IL_005f:  ldloc      V_2
    IL_0063:  ldloc      V_3
    IL_0067:  callvirt   instance void SpaceCraft.WorldObjectsHandler::SetSceneWorldObjectGrowthServerRpc(int32,
                                                                                                          int32,
                                                                                                          valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int)
    IL_006c:  ldarg.0
    IL_006d:  ldc.i4     0x0
    IL_0072:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0077:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_1036141176

  .method private hidebysig static void  __rpc_handler_294651555(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       134 (0x86)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_4)
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
    IL_0045:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int&)
    IL_004a:  ldarg.2
    IL_004b:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_0050:  stloc      V_4
    IL_0054:  ldarg.0
    IL_0055:  ldc.i4     0x1
    IL_005a:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_005f:  ldarg.0
    IL_0060:  castclass  SpaceCraft.WorldObjectsHandler
    IL_0065:  ldloc      V_1
    IL_0069:  ldloc      V_2
    IL_006d:  ldloc      V_3
    IL_0071:  ldloc      V_4
    IL_0075:  callvirt   instance void SpaceCraft.WorldObjectsHandler::SetSceneWorldObjectGrowthClientRpc(int32,
                                                                                                          int32,
                                                                                                          valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int,
                                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_007a:  ldarg.0
    IL_007b:  ldc.i4     0x0
    IL_0080:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0085:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_294651555

  .method private hidebysig static void  __rpc_handler_719373392(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       100 (0x64)
    .maxstack  3
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_2)
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
    IL_0030:  ldarg.2
    IL_0031:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0036:  stloc      V_2
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4     0x1
    IL_0040:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0045:  ldarg.0
    IL_0046:  castclass  SpaceCraft.WorldObjectsHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.WorldObjectsHandler::RefreshSceneWorldObjectGrowthServerRpc(int32,
                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method WorldObjectsHandler::__rpc_handler_719373392

  .method famorassem hidebysig strict virtual 
          instance string  __getTypeName() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "WorldObjectsHandler"
    IL_0005:  ret
  } // end of method WorldObjectsHandler::__getTypeName

  .event class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> OnWorldObjectFromSceneDestroyed
  {
    .addon instance void SpaceCraft.WorldObjectsHandler::add_OnWorldObjectFromSceneDestroyed(class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>)
    .removeon instance void SpaceCraft.WorldObjectsHandler::remove_OnWorldObjectFromSceneDestroyed(class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>)
  } // end of event WorldObjectsHandler::OnWorldObjectFromSceneDestroyed
} // end of class SpaceCraft.WorldObjectsHandler
