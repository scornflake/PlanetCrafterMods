.class public auto ansi beforefieldinit SpaceCraft.Inventory
       extends [mscorlib]System.Object
{
  .field private int32 _inventoryId
  .field private int32 _inventorySize
  .field private class SpaceCraft.InventoryDisplayer _inventoryDisplayer
  .field private class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> _worldObjectsInInventory
  .field private class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> _authorizedGroups
  .field private class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> _unauthorizedGroups
  .field private class SpaceCraft.InventoryDisplayOptions _inventoryDisplayOptions
  .field private class SpaceCraft.LogisticEntity _logisticEntity
  .field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> _readOnlyInventory
  .field private bool _watchingInventory
  .field private bool _isDnaInventory
  .field private bool _isEquipment
  .field public class [mscorlib]System.Action`2<class SpaceCraft.WorldObject,bool> inventoryContentModified
  .field public class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> inventoryContentGrowthFinished
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 inventoryId,
                               int32 inventorySize,
                               [opt] class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> worldObjectsInInventory,
                               [opt] class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> supplyGroups,
                               [opt] class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> demandGroups,
                               [opt] int32 priority) cil managed
  {
    .param [3] = nullref
    .param [4] = nullref
    .param [5] = nullref
    .param [6] = int32(0x00000000)
    // Code size       126 (0x7e)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 SpaceCraft.Inventory::_inventoryId
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 SpaceCraft.Inventory::_inventorySize
    IL_0014:  ldarg.0
    IL_0015:  ldarg.3
    IL_0016:  dup
    IL_0017:  brtrue.s   IL_001f

    IL_0019:  pop
    IL_001a:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_001f:  stfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0024:  ldarg.0
    IL_0025:  newobj     instance void class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::.ctor()
    IL_002a:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_authorizedGroups
    IL_002f:  ldarg.0
    IL_0030:  newobj     instance void class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::.ctor()
    IL_0035:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_unauthorizedGroups
    IL_003a:  ldarg.0
    IL_003b:  newobj     instance void SpaceCraft.LogisticEntity::.ctor()
    IL_0040:  stfld      class SpaceCraft.LogisticEntity SpaceCraft.Inventory::_logisticEntity
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class SpaceCraft.LogisticEntity SpaceCraft.Inventory::_logisticEntity
    IL_004b:  ldarg.s    supplyGroups
    IL_004d:  callvirt   instance void SpaceCraft.LogisticEntity::SetSupplyGroups(class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>)
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class SpaceCraft.LogisticEntity SpaceCraft.Inventory::_logisticEntity
    IL_0058:  ldarg.s    demandGroups
    IL_005a:  callvirt   instance void SpaceCraft.LogisticEntity::SetDemandGroups(class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>)
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class SpaceCraft.LogisticEntity SpaceCraft.Inventory::_logisticEntity
    IL_0065:  ldarg.s    priority
    IL_0067:  callvirt   instance void SpaceCraft.LogisticEntity::SetPriority(int32)
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0073:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::AsReadOnly()
    IL_0078:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_readOnlyInventory
    IL_007d:  ret
  } // end of method Inventory::.ctor

  .method public hidebysig instance void 
          ClearContent(int32 size) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SpaceCraft.Inventory::_inventorySize
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_000d:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Clear()
    IL_0012:  ret
  } // end of method Inventory::ClearContent

  .method public hidebysig instance bool 
          GetIsAuthorized(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       98 (0x62)
    .maxstack  2
    .locals init (class SpaceCraft.GroupItem V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.Inventory::_isEquipment
    IL_0006:  brfalse.s  IL_0022

    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_000e:  isinst     SpaceCraft.GroupItem
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  brfalse.s  IL_0020

    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  call       bool SpaceCraft.Inventory::HasSameEquipableTypeItemInEquipment(class SpaceCraft.Inventory,
                                                                                        class SpaceCraft.GroupItem)
    IL_001e:  brfalse.s  IL_0022

    IL_0020:  ldc.i4.0
    IL_0021:  ret

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_authorizedGroups
    IL_0028:  callvirt   instance int32 class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::get_Count()
    IL_002d:  ldc.i4.0
    IL_002e:  ble.s      IL_0043

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_authorizedGroups
    IL_0036:  ldarg.1
    IL_0037:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_003c:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::Contains(!0)
    IL_0041:  brfalse.s  IL_005e

    IL_0043:  ldarg.0
    IL_0044:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_unauthorizedGroups
    IL_0049:  brfalse.s  IL_0060

    IL_004b:  ldarg.0
    IL_004c:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_unauthorizedGroups
    IL_0051:  ldarg.1
    IL_0052:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0057:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::Contains(!0)
    IL_005c:  brfalse.s  IL_0060

    IL_005e:  ldc.i4.0
    IL_005f:  ret

    IL_0060:  ldc.i4.1
    IL_0061:  ret
  } // end of method Inventory::GetIsAuthorized

  .method public hidebysig instance bool 
          AddItem(class SpaceCraft.WorldObject worldObject,
                  [opt] bool resetPositionAndRotation) cil managed
  {
    .param [2] = bool(true)
    // Code size       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance bool SpaceCraft.Inventory::GetIsAuthorized(class SpaceCraft.WorldObject)
    IL_0007:  brtrue.s   IL_000b

    IL_0009:  ldc.i4.0
    IL_000a:  ret

    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  call       instance bool SpaceCraft.Inventory::AddItemInInventory(class SpaceCraft.WorldObject,
                                                                                bool)
    IL_0013:  brtrue.s   IL_0017

    IL_0015:  ldc.i4.0
    IL_0016:  ret

    IL_0017:  ldc.i4.1
    IL_0018:  ret
  } // end of method Inventory::AddItem

  .method private hidebysig instance bool 
          AddItemInInventory(class SpaceCraft.WorldObject worldObject,
                             bool resetPositionAndRotation) cil managed
  {
    // Code size       67 (0x43)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool SpaceCraft.Inventory::IsFull()
    IL_0006:  brtrue.s   IL_0041

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance bool SpaceCraft.Inventory::CanAddItInsideIfDnaInventory(class SpaceCraft.WorldObject)
    IL_000f:  brfalse.s  IL_0041

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Contains(!0)
    IL_001d:  brtrue.s   IL_002b

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
    IL_002b:  ldarg.2
    IL_002c:  brfalse.s  IL_0034

    IL_002e:  ldarg.1
    IL_002f:  callvirt   instance void SpaceCraft.WorldObject::ResetPositionAndRotation()
    IL_0034:  ldarg.1
    IL_0035:  ldc.r4     0.0
    IL_003a:  callvirt   instance void SpaceCraft.WorldObject::SetLockInInventoryTime(float32)
    IL_003f:  ldc.i4.1
    IL_0040:  ret

    IL_0041:  ldc.i4.0
    IL_0042:  ret
  } // end of method Inventory::AddItemInInventory

  .method public hidebysig instance bool 
          RemoveItem(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Remove(!0)
    IL_000c:  ret
  } // end of method Inventory::RemoveItem

  .method public hidebysig instance bool 
          RemoveItems(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> worldObjects) cil managed
  {
    // Code size       107 (0x6b)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_0,
             class SpaceCraft.WorldObject V_1,
             bool V_2,
             class SpaceCraft.WorldObject V_3)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  br.s       IL_0022

      IL_0009:  ldloc.0
      IL_000a:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_000f:  stloc.1
      IL_0010:  ldarg.0
      IL_0011:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
      IL_0016:  ldloc.1
      IL_0017:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Contains(!0)
      IL_001c:  brtrue.s   IL_0022

      IL_001e:  ldc.i4.0
      IL_001f:  stloc.2
      IL_0020:  leave.s    IL_0069

      IL_0022:  ldloc.0
      IL_0023:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_0028:  brtrue.s   IL_0009

      IL_002a:  leave.s    IL_0036

    }  // end .try
    finally
    {
      IL_002c:  ldloc.0
      IL_002d:  brfalse.s  IL_0035

      IL_002f:  ldloc.0
      IL_0030:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0035:  endfinally
    }  // end handler
    IL_0036:  ldarg.1
    IL_0037:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_003c:  stloc.0
    .try
    {
      IL_003d:  br.s       IL_0053

      IL_003f:  ldloc.0
      IL_0040:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_0045:  stloc.3
      IL_0046:  ldarg.0
      IL_0047:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
      IL_004c:  ldloc.3
      IL_004d:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Remove(!0)
      IL_0052:  pop
      IL_0053:  ldloc.0
      IL_0054:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_0059:  brtrue.s   IL_003f

      IL_005b:  leave.s    IL_0067

    }  // end .try
    finally
    {
      IL_005d:  ldloc.0
      IL_005e:  brfalse.s  IL_0066

      IL_0060:  ldloc.0
      IL_0061:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0066:  endfinally
    }  // end handler
    IL_0067:  ldc.i4.1
    IL_0068:  ret

    IL_0069:  ldloc.2
    IL_006a:  ret
  } // end of method Inventory::RemoveItems

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> 
          RemoveItems(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> groups) cil managed
  {
    // Code size       133 (0x85)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_0,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group> V_1,
             class SpaceCraft.Group V_2,
             int32 V_3)
    IL_0000:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::GetEnumerator()
    IL_000c:  stloc.1
    .try
    {
      IL_000d:  br.s       IL_006a

      IL_000f:  ldloca.s   V_1
      IL_0011:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::get_Current()
      IL_0016:  stloc.2
      IL_0017:  ldarg.0
      IL_0018:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
      IL_001d:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Count()
      IL_0022:  ldc.i4.1
      IL_0023:  sub
      IL_0024:  stloc.3
      IL_0025:  br.s       IL_0066

      IL_0027:  ldarg.0
      IL_0028:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
      IL_002d:  ldloc.3
      IL_002e:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Item(int32)
      IL_0033:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_0038:  ldloc.2
      IL_0039:  bne.un.s   IL_0062

      IL_003b:  ldloc.0
      IL_003c:  ldarg.0
      IL_003d:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
      IL_0042:  ldloc.3
      IL_0043:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Item(int32)
      IL_0048:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
      IL_004d:  ldarg.0
      IL_004e:  ldarg.0
      IL_004f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
      IL_0054:  ldloc.3
      IL_0055:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Item(int32)
      IL_005a:  call       instance bool SpaceCraft.Inventory::RemoveItem(class SpaceCraft.WorldObject)
      IL_005f:  pop
      IL_0060:  br.s       IL_006a

      IL_0062:  ldloc.3
      IL_0063:  ldc.i4.1
      IL_0064:  sub
      IL_0065:  stloc.3
      IL_0066:  ldloc.3
      IL_0067:  ldc.i4.m1
      IL_0068:  bgt.s      IL_0027

      IL_006a:  ldloca.s   V_1
      IL_006c:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::MoveNext()
      IL_0071:  brtrue.s   IL_000f

      IL_0073:  leave.s    IL_0083

    }  // end .try
    finally
    {
      IL_0075:  ldloca.s   V_1
      IL_0077:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>
      IL_007d:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0082:  endfinally
    }  // end handler
    IL_0083:  ldloc.0
    IL_0084:  ret
  } // end of method Inventory::RemoveItems

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> 
          DestroyAllItemsInside([opt] bool destroyWo) cil managed
  {
    .param [1] = bool(true)
    // Code size       98 (0x62)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_0,
             int32 V_1,
             class SpaceCraft.WorldObject V_2,
             class SpaceCraft.GroupItem V_3)
    IL_0000:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_000c:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Count()
    IL_0011:  ldc.i4.1
    IL_0012:  sub
    IL_0013:  stloc.1
    IL_0014:  br.s       IL_005c

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Item(int32)
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0029:  isinst     SpaceCraft.GroupItem
    IL_002e:  stloc.3
    IL_002f:  ldloc.3
    IL_0030:  brfalse.s  IL_003a

    IL_0032:  ldloc.3
    IL_0033:  callvirt   instance bool SpaceCraft.GroupItem::GetCantBeDestroyed()
    IL_0038:  brtrue.s   IL_0058

    IL_003a:  ldarg.0
    IL_003b:  ldloc.2
    IL_003c:  call       instance bool SpaceCraft.Inventory::RemoveItem(class SpaceCraft.WorldObject)
    IL_0041:  pop
    IL_0042:  ldarg.1
    IL_0043:  brfalse.s  IL_0051

    IL_0045:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_004a:  ldloc.2
    IL_004b:  ldc.i4.0
    IL_004c:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObject(class SpaceCraft.WorldObject,
                                                                                          bool)
    IL_0051:  ldloc.0
    IL_0052:  ldloc.2
    IL_0053:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
    IL_0058:  ldloc.1
    IL_0059:  ldc.i4.1
    IL_005a:  sub
    IL_005b:  stloc.1
    IL_005c:  ldloc.1
    IL_005d:  ldc.i4.m1
    IL_005e:  bgt.s      IL_0016

    IL_0060:  ldloc.0
    IL_0061:  ret
  } // end of method Inventory::DestroyAllItemsInside

  .method public hidebysig instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> 
          GetInsideWorldObjects() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_readOnlyInventory
    IL_0006:  ret
  } // end of method Inventory::GetInsideWorldObjects

  .method public hidebysig instance void 
          SetId(int32 id) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SpaceCraft.Inventory::_inventoryId
    IL_0007:  ret
  } // end of method Inventory::SetId

  .method public hidebysig instance int32 
          GetId() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.Inventory::_inventoryId
    IL_0006:  ret
  } // end of method Inventory::GetId

  .method public hidebysig instance int32 
          GetSize() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.Inventory::_inventorySize
    IL_0006:  ret
  } // end of method Inventory::GetSize

  .method public hidebysig instance class SpaceCraft.LogisticEntity 
          GetLogisticEntity() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.LogisticEntity SpaceCraft.Inventory::_logisticEntity
    IL_0006:  ret
  } // end of method Inventory::GetLogisticEntity

  .method public hidebysig instance void 
          SetSize(int32 inventorySize) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 SpaceCraft.Inventory::_inventorySize
    IL_0007:  bne.un.s   IL_000a

    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldarg.1
    IL_000c:  stfld      int32 SpaceCraft.Inventory::_inventorySize
    IL_0011:  ret
  } // end of method Inventory::SetSize

  .method public hidebysig instance bool 
          IsFull() cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Count()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      int32 SpaceCraft.Inventory::_inventorySize
    IL_0011:  clt
    IL_0013:  ldc.i4.0
    IL_0014:  ceq
    IL_0016:  ret
  } // end of method Inventory::IsFull

  .method public hidebysig instance bool 
          IsEmpty() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  cgt
    IL_000e:  ldc.i4.0
    IL_000f:  ceq
    IL_0011:  ret
  } // end of method Inventory::IsEmpty

  .method public hidebysig instance bool 
          ContainsItems(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> groups) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class [mscorlib]System.Collections.Generic.List`1<bool> SpaceCraft.Inventory::ItemsContainsStatus(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>)
    IL_0007:  ldc.i4.0
    IL_0008:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<bool>::Contains(!0)
    IL_000d:  ldc.i4.0
    IL_000e:  ceq
    IL_0010:  ret
  } // end of method Inventory::ContainsItems

  .method public hidebysig instance bool 
          ContainWorldObject(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Contains(!0)
    IL_000c:  ret
  } // end of method Inventory::ContainWorldObject

  .method public hidebysig instance bool 
          ContainGroup(class SpaceCraft.Group group) cil managed
  {
    // Code size       67 (0x43)
    .maxstack  2
    .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_0,
             class SpaceCraft.WorldObject V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0026

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldloc.1
      IL_0017:  brfalse.s  IL_0026

      IL_0019:  ldloc.1
      IL_001a:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_001f:  ldarg.1
      IL_0020:  bne.un.s   IL_0026

      IL_0022:  ldc.i4.1
      IL_0023:  stloc.2
      IL_0024:  leave.s    IL_0041

      IL_0026:  ldloca.s   V_0
      IL_0028:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_002d:  brtrue.s   IL_000e

      IL_002f:  leave.s    IL_003f

    }  // end .try
    finally
    {
      IL_0031:  ldloca.s   V_0
      IL_0033:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_0039:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_003e:  endfinally
    }  // end handler
    IL_003f:  ldc.i4.0
    IL_0040:  ret

    IL_0041:  ldloc.2
    IL_0042:  ret
  } // end of method Inventory::ContainGroup

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<bool> 
          ItemsContainsStatus(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> groups) cil managed
  {
    // Code size       153 (0x99)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_0,
             class [mscorlib]System.Collections.Generic.List`1<bool> V_1,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group> V_2,
             class SpaceCraft.Group V_3,
             class SpaceCraft.WorldObject V_4,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_5,
             class SpaceCraft.WorldObject V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0006:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_000b:  stloc.0
    IL_000c:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<bool>::.ctor()
    IL_0011:  stloc.1
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::GetEnumerator()
    IL_0018:  stloc.2
    .try
    {
      IL_0019:  br.s       IL_007e

      IL_001b:  ldloca.s   V_2
      IL_001d:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::get_Current()
      IL_0022:  stloc.3
      IL_0023:  ldnull
      IL_0024:  stloc.s    V_4
      IL_0026:  ldloc.0
      IL_0027:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
      IL_002c:  stloc.s    V_5
      .try
      {
        IL_002e:  br.s       IL_004d

        IL_0030:  ldloca.s   V_5
        IL_0032:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
        IL_0037:  stloc.s    V_6
        IL_0039:  ldloc.s    V_6
        IL_003b:  brfalse.s  IL_004d

        IL_003d:  ldloc.s    V_6
        IL_003f:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
        IL_0044:  ldloc.3
        IL_0045:  bne.un.s   IL_004d

        IL_0047:  ldloc.s    V_6
        IL_0049:  stloc.s    V_4
        IL_004b:  leave.s    IL_0066

        IL_004d:  ldloca.s   V_5
        IL_004f:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
        IL_0054:  brtrue.s   IL_0030

        IL_0056:  leave.s    IL_0066

      }  // end .try
      finally
      {
        IL_0058:  ldloca.s   V_5
        IL_005a:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
        IL_0060:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0065:  endfinally
      }  // end handler
      IL_0066:  ldloc.s    V_4
      IL_0068:  brfalse.s  IL_0073

      IL_006a:  ldloc.0
      IL_006b:  ldloc.s    V_4
      IL_006d:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Remove(!0)
      IL_0072:  pop
      IL_0073:  ldloc.1
      IL_0074:  ldloc.s    V_4
      IL_0076:  ldnull
      IL_0077:  cgt.un
      IL_0079:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<bool>::Add(!0)
      IL_007e:  ldloca.s   V_2
      IL_0080:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::MoveNext()
      IL_0085:  brtrue.s   IL_001b

      IL_0087:  leave.s    IL_0097

    }  // end .try
    finally
    {
      IL_0089:  ldloca.s   V_2
      IL_008b:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>
      IL_0091:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0096:  endfinally
    }  // end handler
    IL_0097:  ldloc.1
    IL_0098:  ret
  } // end of method Inventory::ItemsContainsStatus

  .method public hidebysig instance void 
          AddAuthorizedGroup(class SpaceCraft.Group group) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_authorizedGroups
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::Add(!0)
    IL_000c:  pop
    IL_000d:  ret
  } // end of method Inventory::AddAuthorizedGroup

  .method public hidebysig instance class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> 
          GetAuthorizedGroups() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_authorizedGroups
    IL_0006:  ret
  } // end of method Inventory::GetAuthorizedGroups

  .method public hidebysig instance void 
          SetAuthorizedGroups(class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> authorizedGroups) cil managed
  {
    // Code size       85 (0x55)
    .maxstack  2
    .locals init (valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group> V_0,
             class SpaceCraft.GroupItem V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_authorizedGroups
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance int32 class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::get_Count()
    IL_000d:  ldc.i4.0
    IL_000e:  ble.s      IL_0054

    IL_0010:  ldarg.1
    IL_0011:  callvirt   instance valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<!0> class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::GetEnumerator()
    IL_0016:  stloc.0
    .try
    {
      IL_0017:  br.s       IL_003b

      IL_0019:  ldloca.s   V_0
      IL_001b:  call       instance !0 valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group>::get_Current()
      IL_0020:  isinst     SpaceCraft.GroupItem
      IL_0025:  stloc.1
      IL_0026:  ldloc.1
      IL_0027:  brfalse.s  IL_0044

      IL_0029:  ldloc.1
      IL_002a:  callvirt   instance valuetype SpaceCraft.DataConfig/ItemCategory SpaceCraft.GroupItem::GetItemCategory()
      IL_002f:  ldc.i4.1
      IL_0030:  bne.un.s   IL_0044

      IL_0032:  ldarg.0
      IL_0033:  ldc.i4.1
      IL_0034:  stfld      bool SpaceCraft.Inventory::_isEquipment
      IL_0039:  leave.s    IL_0054

      IL_003b:  ldloca.s   V_0
      IL_003d:  call       instance bool valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group>::MoveNext()
      IL_0042:  brtrue.s   IL_0019

      IL_0044:  leave.s    IL_0054

    }  // end .try
    finally
    {
      IL_0046:  ldloca.s   V_0
      IL_0048:  constrained. valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group>
      IL_004e:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0053:  endfinally
    }  // end handler
    IL_0054:  ret
  } // end of method Inventory::SetAuthorizedGroups

  .method public hidebysig instance void 
          SetUnauthorizedGroups(class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> unauthorizedGroups) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::_unauthorizedGroups
    IL_0007:  ret
  } // end of method Inventory::SetUnauthorizedGroups

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> 
          GetWorldObjectsOfGroup(class SpaceCraft.Group group) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0007:  call       instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetWorldObjectsOfGroup(class SpaceCraft.Group,
                                                                                                                                                               class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>)
    IL_000c:  ret
  } // end of method Inventory::GetWorldObjectsOfGroup

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> 
          GetWorldObjectsOfGroup(class SpaceCraft.Group group,
                                 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> result) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  2
    .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_0,
             class SpaceCraft.WorldObject V_1)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Clear()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_000c:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0011:  stloc.0
    .try
    {
      IL_0012:  br.s       IL_002c

      IL_0014:  ldloca.s   V_0
      IL_0016:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_001b:  stloc.1
      IL_001c:  ldloc.1
      IL_001d:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_0022:  ldarg.1
      IL_0023:  bne.un.s   IL_002c

      IL_0025:  ldarg.2
      IL_0026:  ldloc.1
      IL_0027:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
      IL_002c:  ldloca.s   V_0
      IL_002e:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_0033:  brtrue.s   IL_0014

      IL_0035:  leave.s    IL_0045

    }  // end .try
    finally
    {
      IL_0037:  ldloca.s   V_0
      IL_0039:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_003f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0044:  endfinally
    }  // end handler
    IL_0045:  ldarg.2
    IL_0046:  ret
  } // end of method Inventory::GetWorldObjectsOfGroup

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> 
          DropObjectsIfNotEnoughSpace(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 dropPosition,
                                      [opt] bool removeOnly) cil managed
  {
    .param [2] = bool(false)
    // Code size       105 (0x69)
    .maxstack  7
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_0,
             int32 V_1,
             class SpaceCraft.WorldObject V_2)
    IL_0000:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  call       instance bool SpaceCraft.Inventory::IsFull()
    IL_000c:  brfalse.s  IL_0067

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0014:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Count()
    IL_0019:  ldc.i4.1
    IL_001a:  sub
    IL_001b:  stloc.1
    IL_001c:  br.s       IL_0063

    IL_001e:  ldloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      int32 SpaceCraft.Inventory::_inventorySize
    IL_0025:  blt.s      IL_005f

    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_002d:  ldloc.1
    IL_002e:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::get_Item(int32)
    IL_0033:  stloc.2
    IL_0034:  ldarg.2
    IL_0035:  brtrue.s   IL_004b

    IL_0037:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_003c:  ldloc.2
    IL_003d:  ldarg.1
    IL_003e:  ldc.r4     0.0
    IL_0043:  ldc.i4.1
    IL_0044:  ldc.i4.0
    IL_0045:  ldc.i4.0
    IL_0046:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DropOnFloor(class SpaceCraft.WorldObject,
                                                                                   valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                   float32,
                                                                                   bool,
                                                                                   bool,
                                                                                   int32)
    IL_004b:  ldloc.0
    IL_004c:  ldloc.2
    IL_004d:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0058:  ldloc.2
    IL_0059:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Remove(!0)
    IL_005e:  pop
    IL_005f:  ldloc.1
    IL_0060:  ldc.i4.1
    IL_0061:  sub
    IL_0062:  stloc.1
    IL_0063:  ldloc.1
    IL_0064:  ldc.i4.m1
    IL_0065:  bgt.s      IL_001e

    IL_0067:  ldloc.0
    IL_0068:  ret
  } // end of method Inventory::DropObjectsIfNotEnoughSpace

  .method public hidebysig instance void 
          RefreshDisplayerContent() cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0006:  ldnull
    IL_0007:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_000c:  brfalse.s  IL_000f

    IL_000e:  ret

    IL_000f:  ldarg.0
    IL_0010:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0015:  ldnull
    IL_0016:  callvirt   instance void SpaceCraft.InventoryDisplayer::RefreshContent(class [mscorlib]System.Action)
    IL_001b:  ret
  } // end of method Inventory::RefreshDisplayerContent

  .method public hidebysig instance void 
          ReEnableRefreshDisplayBlocks() cil managed
  {
    // Code size       72 (0x48)
    .maxstack  2
    .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.InventoryBlock> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0006:  ldnull
    IL_0007:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_000c:  brfalse.s  IL_000f

    IL_000e:  ret

    IL_000f:  ldarg.0
    IL_0010:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0015:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.InventoryBlock> SpaceCraft.InventoryDisplayer::GetInventoryBlocks()
    IL_001a:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.InventoryBlock>::GetEnumerator()
    IL_001f:  stloc.0
    .try
    {
      IL_0020:  br.s       IL_002e

      IL_0022:  ldloca.s   V_0
      IL_0024:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.InventoryBlock>::get_Current()
      IL_0029:  callvirt   instance void SpaceCraft.InventoryBlock::EnableRefreshDisplay()
      IL_002e:  ldloca.s   V_0
      IL_0030:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.InventoryBlock>::MoveNext()
      IL_0035:  brtrue.s   IL_0022

      IL_0037:  leave.s    IL_0047

    }  // end .try
    finally
    {
      IL_0039:  ldloca.s   V_0
      IL_003b:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.InventoryBlock>
      IL_0041:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0046:  endfinally
    }  // end handler
    IL_0047:  ret
  } // end of method Inventory::ReEnableRefreshDisplayBlocks

  .method public hidebysig instance void 
          PropagateModification(class SpaceCraft.WorldObject worldObjectModified,
                                bool added) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Action`2<class SpaceCraft.WorldObject,bool> SpaceCraft.Inventory::inventoryContentModified
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_000b

    IL_0009:  pop
    IL_000a:  ret

    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  callvirt   instance void class [mscorlib]System.Action`2<class SpaceCraft.WorldObject,bool>::Invoke(!0,
                                                                                                                  !1)
    IL_0012:  ret
  } // end of method Inventory::PropagateModification

  .method private hidebysig static int32 
          SortInventory(class SpaceCraft.WorldObject x,
                        class SpaceCraft.WorldObject y) cil managed
  {
    // Code size       153 (0x99)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             valuetype SpaceCraft.DataConfig/GeneticTraitType V_2,
             int32 V_3,
             int32 V_4,
             valuetype [UnityEngine.CoreModule]UnityEngine.Color V_5)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0006:  callvirt   instance string SpaceCraft.Group::get_id()
    IL_000b:  ldarg.1
    IL_000c:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0011:  callvirt   instance string SpaceCraft.Group::get_id()
    IL_0016:  callvirt   instance int32 [mscorlib]System.String::CompareTo(string)
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  brtrue.s   IL_0097

    IL_001f:  ldarg.0
    IL_0020:  callvirt   instance valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::GetGeneticTraitType()
    IL_0025:  brfalse.s  IL_0097

    IL_0027:  ldarg.0
    IL_0028:  callvirt   instance valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::GetGeneticTraitType()
    IL_002d:  stloc.2
    IL_002e:  ldloca.s   V_2
    IL_0030:  ldarg.1
    IL_0031:  callvirt   instance valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::GetGeneticTraitType()
    IL_0036:  box        SpaceCraft.DataConfig/GeneticTraitType
    IL_003b:  constrained. SpaceCraft.DataConfig/GeneticTraitType
    IL_0041:  callvirt   instance int32 [mscorlib]System.Enum::CompareTo(object)
    IL_0046:  stloc.1
    IL_0047:  ldloc.1
    IL_0048:  brtrue.s   IL_0095

    IL_004a:  ldarg.0
    IL_004b:  callvirt   instance int32 SpaceCraft.WorldObject::GetGeneticTraitValue()
    IL_0050:  stloc.s    V_4
    IL_0052:  ldloca.s   V_4
    IL_0054:  ldarg.1
    IL_0055:  callvirt   instance int32 SpaceCraft.WorldObject::GetGeneticTraitValue()
    IL_005a:  call       instance int32 [mscorlib]System.Int32::CompareTo(int32)
    IL_005f:  stloc.3
    IL_0060:  ldloc.3
    IL_0061:  brtrue.s   IL_0093

    IL_0063:  ldarg.0
    IL_0064:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Color SpaceCraft.WorldObject::GetColor()
    IL_0069:  stloc.s    V_5
    IL_006b:  ldloca.s   V_5
    IL_006d:  constrained. [UnityEngine.CoreModule]UnityEngine.Color
    IL_0073:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0078:  ldarg.1
    IL_0079:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Color SpaceCraft.WorldObject::GetColor()
    IL_007e:  stloc.s    V_5
    IL_0080:  ldloca.s   V_5
    IL_0082:  constrained. [UnityEngine.CoreModule]UnityEngine.Color
    IL_0088:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_008d:  callvirt   instance int32 [mscorlib]System.String::CompareTo(string)
    IL_0092:  ret

    IL_0093:  ldloc.3
    IL_0094:  ret

    IL_0095:  ldloc.1
    IL_0096:  ret

    IL_0097:  ldloc.0
    IL_0098:  ret
  } // end of method Inventory::SortInventory

  .method public hidebysig instance void 
          AutoSort() cil managed
  {
    // Code size       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0006:  ldnull
    IL_0007:  ldftn      int32 SpaceCraft.Inventory::SortInventory(class SpaceCraft.WorldObject,
                                                                   class SpaceCraft.WorldObject)
    IL_000d:  newobj     instance void class [mscorlib]System.Comparison`1<class SpaceCraft.WorldObject>::.ctor(object,
                                                                                                                native int)
    IL_0012:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Sort(class [mscorlib]System.Comparison`1<!0>)
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_001d:  ldnull
    IL_001e:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0023:  brfalse.s  IL_0031

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_002b:  ldnull
    IL_002c:  callvirt   instance void SpaceCraft.InventoryDisplayer::RefreshContent(class [mscorlib]System.Action)
    IL_0031:  ret
  } // end of method Inventory::AutoSort

  .method public hidebysig instance void 
          SetDisplayOptions(class SpaceCraft.InventoryDisplayOptions inventoryDisplayOptions) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class SpaceCraft.InventoryDisplayOptions SpaceCraft.Inventory::_inventoryDisplayOptions
    IL_0007:  ret
  } // end of method Inventory::SetDisplayOptions

  .method public hidebysig instance void 
          DisplayIn(class [UnityEngine.CoreModule]UnityEngine.GameObject parent,
                    [opt] bool showMoveAllIcon,
                    [opt] bool isRightInventory,
                    [opt] bool showLogistics,
                    [opt] bool externalEdits,
                    [opt] class SpaceCraft.InventoryDisplayer specialInventoryDisplayer,
                    [opt] class [mscorlib]System.Action onContentRefreshed) cil managed
  {
    .param [2] = bool(false)
    .param [3] = bool(false)
    .param [4] = bool(false)
    .param [5] = bool(false)
    .param [6] = nullref
    .param [7] = nullref
    // Code size       283 (0x11b)
    .maxstack  5
    .locals init (class [UnityEngine.CoreModule]UnityEngine.GameObject V_0,
             class [UnityEngine.CoreModule]UnityEngine.GameObject V_1,
             class [UnityEngine.CoreModule]UnityEngine.RectTransform V_2)
    IL_0000:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.VisualsResourcesHandler>()
    IL_0005:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.VisualsResourcesHandler::GetInventoryDisplayer()
    IL_000a:  stloc.0
    IL_000b:  ldarg.s    specialInventoryDisplayer
    IL_000d:  ldnull
    IL_000e:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0013:  brfalse.s  IL_001d

    IL_0015:  ldarg.s    specialInventoryDisplayer
    IL_0017:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  call       !!0 [UnityEngine.CoreModule]UnityEngine.Object::Instantiate<class [UnityEngine.CoreModule]UnityEngine.GameObject>(!!0)
    IL_0023:  stloc.1
    IL_0024:  ldarg.0
    IL_0025:  ldloc.1
    IL_0026:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class SpaceCraft.InventoryDisplayer>()
    IL_002b:  stfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0036:  ldarg.0
    IL_0037:  ldarg.3
    IL_0038:  ldc.i4.0
    IL_0039:  ceq
    IL_003b:  callvirt   instance void SpaceCraft.InventoryDisplayer::SetInventory(class SpaceCraft.Inventory,
                                                                                   bool)
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class SpaceCraft.InventoryDisplayOptions SpaceCraft.Inventory::_inventoryDisplayOptions
    IL_0046:  brtrue.s   IL_0057

    IL_0048:  ldarg.0
    IL_0049:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_004e:  ldarg.2
    IL_004f:  ldarg.3
    IL_0050:  callvirt   instance void SpaceCraft.InventoryDisplayer::SetMoveAllDisplay(bool,
                                                                                        bool)
    IL_0055:  br.s       IL_006e

    IL_0057:  ldarg.0
    IL_0058:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class SpaceCraft.InventoryDisplayOptions SpaceCraft.Inventory::_inventoryDisplayOptions
    IL_0063:  callvirt   instance bool SpaceCraft.InventoryDisplayOptions::get_showMoveAll()
    IL_0068:  ldarg.3
    IL_0069:  callvirt   instance void SpaceCraft.InventoryDisplayer::SetMoveAllDisplay(bool,
                                                                                        bool)
    IL_006e:  ldarg.0
    IL_006f:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0074:  ldarg.s    showLogistics
    IL_0076:  callvirt   instance void SpaceCraft.InventoryDisplayer::SetLogisticsDisplay(bool)
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0081:  ldarg.s    onContentRefreshed
    IL_0083:  callvirt   instance void SpaceCraft.InventoryDisplayer::RefreshContent(class [mscorlib]System.Action)
    IL_0088:  ldarg.1
    IL_0089:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class [UnityEngine.CoreModule]UnityEngine.RectTransform>()
    IL_008e:  stloc.2
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0095:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class [UnityEngine.CoreModule]UnityEngine.RectTransform>()
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_00a0:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_00a5:  ldarg.1
    IL_00a6:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.GameObject::get_transform()
    IL_00ab:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.Transform::SetParent(class [UnityEngine.CoreModule]UnityEngine.Transform)
    IL_00b0:  dup
    IL_00b1:  ldc.r4     0.0
    IL_00b6:  ldc.r4     0.0
    IL_00bb:  ldc.r4     0.0
    IL_00c0:  newobj     instance void [UnityEngine.CoreModule]UnityEngine.Vector3::.ctor(float32,
                                                                                          float32,
                                                                                          float32)
    IL_00c5:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.Transform::set_localPosition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_00ca:  dup
    IL_00cb:  ldloc.2
    IL_00cc:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 [UnityEngine.CoreModule]UnityEngine.RectTransform::get_sizeDelta()
    IL_00d1:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
    IL_00d6:  ldloc.2
    IL_00d7:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 [UnityEngine.CoreModule]UnityEngine.RectTransform::get_sizeDelta()
    IL_00dc:  ldfld      float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
    IL_00e1:  newobj     instance void [UnityEngine.CoreModule]UnityEngine.Vector2::.ctor(float32,
                                                                                          float32)
    IL_00e6:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.RectTransform::set_sizeDelta(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2)
    IL_00eb:  ldc.r4     1.
    IL_00f0:  ldc.r4     1.
    IL_00f5:  ldc.r4     1.
    IL_00fa:  newobj     instance void [UnityEngine.CoreModule]UnityEngine.Vector3::.ctor(float32,
                                                                                          float32,
                                                                                          float32)
    IL_00ff:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.Transform::set_localScale(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0104:  ldarg.s    externalEdits
    IL_0106:  brfalse.s  IL_011a

    IL_0108:  ldarg.0
    IL_0109:  ldc.i4.1
    IL_010a:  stfld      bool SpaceCraft.Inventory::_watchingInventory
    IL_010f:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0114:  ldarg.0
    IL_0115:  callvirt   instance void SpaceCraft.InventoriesHandler::BeginInventoryWatch(class SpaceCraft.Inventory)
    IL_011a:  ret
  } // end of method Inventory::DisplayIn

  .method public hidebysig instance void 
          StopDisplay() cil managed
  {
    // Code size       61 (0x3d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.Inventory::_watchingInventory
    IL_0006:  brfalse.s  IL_001a

    IL_0008:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_000d:  ldarg.0
    IL_000e:  callvirt   instance void SpaceCraft.InventoriesHandler::StopInventoryWatch(class SpaceCraft.Inventory)
    IL_0013:  ldarg.0
    IL_0014:  ldc.i4.0
    IL_0015:  stfld      bool SpaceCraft.Inventory::_watchingInventory
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class SpaceCraft.LogisticEntity SpaceCraft.Inventory::_logisticEntity
    IL_0020:  callvirt   instance void SpaceCraft.LogisticEntity::ResetChangeCallback()
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_002b:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_0030:  call       void [UnityEngine.CoreModule]UnityEngine.Object::Destroy(class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0035:  ldarg.0
    IL_0036:  ldnull
    IL_0037:  stfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_003c:  ret
  } // end of method Inventory::StopDisplay

  .method public hidebysig instance class SpaceCraft.InventoryDisplayer 
          GetInventoryDisplayer() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.InventoryDisplayer SpaceCraft.Inventory::_inventoryDisplayer
    IL_0006:  ret
  } // end of method Inventory::GetInventoryDisplayer

  .method public hidebysig instance void 
          SetIsDNAInventory(bool isDnaInventory) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.Inventory::_isDnaInventory
    IL_0007:  ret
  } // end of method Inventory::SetIsDNAInventory

  .method private hidebysig instance bool 
          CanAddItInsideIfDnaInventory(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       77 (0x4d)
    .maxstack  2
    .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_0,
             bool V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.Inventory::_isDnaInventory
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldc.i4.1
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::_worldObjectsInInventory
    IL_0010:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0015:  stloc.0
    .try
    {
      IL_0016:  br.s       IL_0030

      IL_0018:  ldloca.s   V_0
      IL_001a:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_001f:  callvirt   instance valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::GetGeneticTraitType()
      IL_0024:  ldarg.1
      IL_0025:  callvirt   instance valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::GetGeneticTraitType()
      IL_002a:  bne.un.s   IL_0030

      IL_002c:  ldc.i4.0
      IL_002d:  stloc.1
      IL_002e:  leave.s    IL_004b

      IL_0030:  ldloca.s   V_0
      IL_0032:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_0037:  brtrue.s   IL_0018

      IL_0039:  leave.s    IL_0049

    }  // end .try
    finally
    {
      IL_003b:  ldloca.s   V_0
      IL_003d:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_0043:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0048:  endfinally
    }  // end handler
    IL_0049:  ldc.i4.1
    IL_004a:  ret

    IL_004b:  ldloc.1
    IL_004c:  ret
  } // end of method Inventory::CanAddItInsideIfDnaInventory

  .method public hidebysig static bool  HasSameEquipableTypeItemInEquipment(class SpaceCraft.Inventory inventory,
                                                                            class SpaceCraft.GroupItem groupItemClicked) cil managed
  {
    // Code size       81 (0x51)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_0,
             bool V_1)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype SpaceCraft.DataConfig/EquipableType SpaceCraft.GroupItem::GetEquipableType()
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0015:  stloc.0
    .try
    {
      IL_0016:  br.s       IL_0039

      IL_0018:  ldloc.0
      IL_0019:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_001e:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_0023:  castclass  SpaceCraft.GroupItem
      IL_0028:  callvirt   instance valuetype SpaceCraft.DataConfig/EquipableType SpaceCraft.GroupItem::GetEquipableType()
      IL_002d:  ldarg.1
      IL_002e:  callvirt   instance valuetype SpaceCraft.DataConfig/EquipableType SpaceCraft.GroupItem::GetEquipableType()
      IL_0033:  bne.un.s   IL_0039

      IL_0035:  ldc.i4.1
      IL_0036:  stloc.1
      IL_0037:  leave.s    IL_004f

      IL_0039:  ldloc.0
      IL_003a:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_003f:  brtrue.s   IL_0018

      IL_0041:  leave.s    IL_004d

    }  // end .try
    finally
    {
      IL_0043:  ldloc.0
      IL_0044:  brfalse.s  IL_004c

      IL_0046:  ldloc.0
      IL_0047:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_004c:  endfinally
    }  // end handler
    IL_004d:  ldc.i4.0
    IL_004e:  ret

    IL_004f:  ldloc.1
    IL_0050:  ret
  } // end of method Inventory::HasSameEquipableTypeItemInEquipment

} // end of class SpaceCraft.Inventory
