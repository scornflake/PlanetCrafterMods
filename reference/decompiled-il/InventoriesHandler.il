.class public auto ansi beforefieldinit SpaceCraft.InventoriesHandler
       extends [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass13_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [mscorlib]System.Action`1<class SpaceCraft.Inventory> result
    .field public class SpaceCraft.Inventory inventory
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass13_0'::.ctor

    .method assembly hidebysig instance void 
            '<RetrieveInventoryClientRpc>b__0'(bool success) cil managed
    {
      // Code size       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::result
      IL_0006:  dup
      IL_0007:  brtrue.s   IL_000b

      IL_0009:  pop
      IL_000a:  ret

      IL_000b:  ldarg.0
      IL_000c:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::inventory
      IL_0011:  callvirt   instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::Invoke(!0)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass13_0'::'<RetrieveInventoryClientRpc>b__0'

  } // end of class '<>c__DisplayClass13_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass18_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.WorldObject wo
    .field public class [mscorlib]System.Action`1<class SpaceCraft.Inventory> callback
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass18_0'::.ctor

    .method assembly hidebysig instance void 
            '<GetWorldObjectInventory>b__0'(class SpaceCraft.Inventory inventory) cil managed
    {
      // Code size       38 (0x26)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0014

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::wo
      IL_0009:  ldarg.1
      IL_000a:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
      IL_000f:  callvirt   instance void SpaceCraft.WorldObject::SetLinkedInventoryId(int32)
      IL_0014:  ldarg.0
      IL_0015:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::callback
      IL_001a:  dup
      IL_001b:  brtrue.s   IL_001f

      IL_001d:  pop
      IL_001e:  ret

      IL_001f:  ldarg.1
      IL_0020:  callvirt   instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::Invoke(!0)
      IL_0025:  ret
    } // end of method '<>c__DisplayClass18_0'::'<GetWorldObjectInventory>b__0'

  } // end of class '<>c__DisplayClass18_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass23_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.InventoriesHandler '<>4__this'
    .field public class SpaceCraft.Inventory fromInventory
    .field public class SpaceCraft.WorldObject item
    .field public class SpaceCraft.Inventory toInventory
    .field public class [mscorlib]System.Action`1<bool> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass23_0'::.ctor

    .method assembly hidebysig instance void 
            '<TransferItem>b__0'(bool succes) cil managed
    {
      // Code size       129 (0x81)
      .maxstack  3
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_006f

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::'<>4__this'
      IL_0009:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
      IL_000e:  brtrue.s   IL_0059

      IL_0010:  ldarg.0
      IL_0011:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::fromInventory
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::item
      IL_001c:  callvirt   instance bool SpaceCraft.Inventory::RemoveItem(class SpaceCraft.WorldObject)
      IL_0021:  pop
      IL_0022:  ldarg.0
      IL_0023:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::toInventory
      IL_0028:  ldarg.0
      IL_0029:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::item
      IL_002e:  ldc.i4.1
      IL_002f:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                       bool)
      IL_0034:  pop
      IL_0035:  ldarg.0
      IL_0036:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::fromInventory
      IL_003b:  ldarg.0
      IL_003c:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::item
      IL_0041:  ldc.i4.0
      IL_0042:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0047:  ldarg.0
      IL_0048:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::toInventory
      IL_004d:  ldarg.0
      IL_004e:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::item
      IL_0053:  ldc.i4.1
      IL_0054:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0059:  ldarg.0
      IL_005a:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::fromInventory
      IL_005f:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_0064:  ldarg.0
      IL_0065:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::toInventory
      IL_006a:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_006f:  ldarg.0
      IL_0070:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::result
      IL_0075:  dup
      IL_0076:  brtrue.s   IL_007a

      IL_0078:  pop
      IL_0079:  ret

      IL_007a:  ldarg.1
      IL_007b:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_0080:  ret
    } // end of method '<>c__DisplayClass23_0'::'<TransferItem>b__0'

  } // end of class '<>c__DisplayClass23_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass31_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.Group group
    .field public class SpaceCraft.Inventory inventory
    .field public class [mscorlib]System.Action`2<bool,int32> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass31_0'::.ctor

    .method assembly hidebysig instance void 
            '<AddItemToInventoryFromClient>b__0'(bool succes,
                                                 int32 id) cil managed
    {
      // Code size       80 (0x50)
      .maxstack  5
      .locals init (class SpaceCraft.WorldObject V_0)
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_003d

      IL_0003:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
      IL_0008:  ldarg.0
      IL_0009:  ldfld      class SpaceCraft.Group SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::group
      IL_000e:  ldarg.2
      IL_000f:  ldnull
      IL_0010:  ldc.i4.1
      IL_0011:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                      int32,
                                                                                                                      class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                      bool)
      IL_0016:  stloc.0
      IL_0017:  ldarg.0
      IL_0018:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::inventory
      IL_001d:  ldloc.0
      IL_001e:  ldc.i4.1
      IL_001f:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                       bool)
      IL_0024:  pop
      IL_0025:  ldarg.0
      IL_0026:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::inventory
      IL_002b:  ldloc.0
      IL_002c:  ldc.i4.1
      IL_002d:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::inventory
      IL_0038:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_003d:  ldarg.0
      IL_003e:  ldfld      class [mscorlib]System.Action`2<bool,int32> SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::result
      IL_0043:  dup
      IL_0044:  brtrue.s   IL_0048

      IL_0046:  pop
      IL_0047:  ret

      IL_0048:  ldarg.1
      IL_0049:  ldarg.2
      IL_004a:  callvirt   instance void class [mscorlib]System.Action`2<bool,int32>::Invoke(!0,
                                                                                             !1)
      IL_004f:  ret
    } // end of method '<>c__DisplayClass31_0'::'<AddItemToInventoryFromClient>b__0'

  } // end of class '<>c__DisplayClass31_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass33_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.Inventory inventory
    .field public class SpaceCraft.WorldObject worldObject
    .field public class [mscorlib]System.Action`1<bool> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass33_0'::.ctor

    .method assembly hidebysig instance void 
            '<AddItemToInventoryFromClient>b__0'(bool succes) cil managed
    {
      // Code size       69 (0x45)
      .maxstack  3
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0033

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::inventory
      IL_0009:  ldarg.0
      IL_000a:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::worldObject
      IL_000f:  ldc.i4.1
      IL_0010:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                       bool)
      IL_0015:  pop
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::inventory
      IL_001c:  ldarg.0
      IL_001d:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::worldObject
      IL_0022:  ldc.i4.1
      IL_0023:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0028:  ldarg.0
      IL_0029:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::inventory
      IL_002e:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_0033:  ldarg.0
      IL_0034:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::result
      IL_0039:  dup
      IL_003a:  brtrue.s   IL_003e

      IL_003c:  pop
      IL_003d:  ret

      IL_003e:  ldarg.1
      IL_003f:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_0044:  ret
    } // end of method '<>c__DisplayClass33_0'::'<AddItemToInventoryFromClient>b__0'

  } // end of class '<>c__DisplayClass33_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass38_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.Inventory inventory
    .field public class SpaceCraft.WorldObject worldObject
    .field public class [mscorlib]System.Action`1<bool> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass38_0'::.ctor

    .method assembly hidebysig instance void 
            '<RemoveItemFromInventoryFromClient>b__0'(bool succes) cil managed
    {
      // Code size       68 (0x44)
      .maxstack  3
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0032

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::inventory
      IL_0009:  ldarg.0
      IL_000a:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::worldObject
      IL_000f:  callvirt   instance bool SpaceCraft.Inventory::RemoveItem(class SpaceCraft.WorldObject)
      IL_0014:  pop
      IL_0015:  ldarg.0
      IL_0016:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::inventory
      IL_001b:  ldarg.0
      IL_001c:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::worldObject
      IL_0021:  ldc.i4.0
      IL_0022:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0027:  ldarg.0
      IL_0028:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::inventory
      IL_002d:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::result
      IL_0038:  dup
      IL_0039:  brtrue.s   IL_003d

      IL_003b:  pop
      IL_003c:  ret

      IL_003d:  ldarg.1
      IL_003e:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_0043:  ret
    } // end of method '<>c__DisplayClass38_0'::'<RemoveItemFromInventoryFromClient>b__0'

  } // end of class '<>c__DisplayClass38_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass39_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.InventoriesHandler '<>4__this'
    .field public class SpaceCraft.Inventory inventory
    .field public class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> groups
    .field public bool displayInformation
    .field public class [mscorlib]System.Action`1<bool> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass39_0'::.ctor

    .method assembly hidebysig instance void 
            '<RemoveItemsFromInventory>b__0'(bool succes) cil managed
    {
      // Code size       211 (0xd3)
      .maxstack  5
      .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_0,
               class SpaceCraft.WorldObject V_1,
               class SpaceCraft.InformationsDisplayer V_2,
               valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group> V_3,
               class SpaceCraft.Group V_4)
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0062

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::'<>4__this'
      IL_0009:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
      IL_000e:  brtrue.s   IL_0057

      IL_0010:  ldarg.0
      IL_0011:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::inventory
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::groups
      IL_001c:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::RemoveItems(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>)
      IL_0021:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
      IL_0026:  stloc.0
      .try
      {
        IL_0027:  br.s       IL_003e

        IL_0029:  ldloca.s   V_0
        IL_002b:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
        IL_0030:  stloc.1
        IL_0031:  ldarg.0
        IL_0032:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::inventory
        IL_0037:  ldloc.1
        IL_0038:  ldc.i4.0
        IL_0039:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                       bool)
        IL_003e:  ldloca.s   V_0
        IL_0040:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
        IL_0045:  brtrue.s   IL_0029

        IL_0047:  leave.s    IL_0057

      }  // end .try
      finally
      {
        IL_0049:  ldloca.s   V_0
        IL_004b:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
        IL_0051:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0056:  endfinally
      }  // end handler
      IL_0057:  ldarg.0
      IL_0058:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::inventory
      IL_005d:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_0062:  ldarg.1
      IL_0063:  ldarg.0
      IL_0064:  ldfld      bool SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::displayInformation
      IL_0069:  and
      IL_006a:  brfalse.s  IL_00c1

      IL_006c:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.DisplayersHandler>()
      IL_0071:  callvirt   instance class SpaceCraft.InformationsDisplayer SpaceCraft.DisplayersHandler::GetInformationsDisplayer()
      IL_0076:  stloc.2
      IL_0077:  ldarg.0
      IL_0078:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::groups
      IL_007d:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::GetEnumerator()
      IL_0082:  stloc.3
      .try
      {
        IL_0083:  br.s       IL_00a8

        IL_0085:  ldloca.s   V_3
        IL_0087:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::get_Current()
        IL_008c:  stloc.s    V_4
        IL_008e:  ldloc.2
        IL_008f:  ldc.r4     2.
        IL_0094:  ldloc.s    V_4
        IL_0096:  call       string SpaceCraft.Readable::GetGroupName(class SpaceCraft.Group)
        IL_009b:  ldc.i4.3
        IL_009c:  ldloc.s    V_4
        IL_009e:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Sprite SpaceCraft.Group::GetImage()
        IL_00a3:  callvirt   instance void SpaceCraft.InformationsDisplayer::AddInformation(float32,
                                                                                            string,
                                                                                            valuetype SpaceCraft.DataConfig/UiInformationsType,
                                                                                            class [UnityEngine.CoreModule]UnityEngine.Sprite)
        IL_00a8:  ldloca.s   V_3
        IL_00aa:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::MoveNext()
        IL_00af:  brtrue.s   IL_0085

        IL_00b1:  leave.s    IL_00c1

      }  // end .try
      finally
      {
        IL_00b3:  ldloca.s   V_3
        IL_00b5:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>
        IL_00bb:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_00c0:  endfinally
      }  // end handler
      IL_00c1:  ldarg.0
      IL_00c2:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::result
      IL_00c7:  dup
      IL_00c8:  brtrue.s   IL_00cc

      IL_00ca:  pop
      IL_00cb:  ret

      IL_00cc:  ldarg.1
      IL_00cd:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_00d2:  ret
    } // end of method '<>c__DisplayClass39_0'::'<RemoveItemsFromInventory>b__0'

  } // end of class '<>c__DisplayClass39_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass40_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.InventoriesHandler '<>4__this'
    .field public class SpaceCraft.Inventory inventory
    .field public class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> worldObjects
    .field public bool displayInformation
    .field public class [mscorlib]System.Action`1<bool> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass40_0'::.ctor

    .method assembly hidebysig instance void 
            '<RemoveItemsFromInventory>b__0'(bool succes) cil managed
    {
      // Code size       214 (0xd6)
      .maxstack  5
      .locals init (class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_0,
               class SpaceCraft.WorldObject V_1,
               class SpaceCraft.InformationsDisplayer V_2,
               class SpaceCraft.WorldObject V_3)
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0064

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::'<>4__this'
      IL_0009:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
      IL_000e:  brtrue.s   IL_0059

      IL_0010:  ldarg.0
      IL_0011:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::inventory
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::worldObjects
      IL_001c:  callvirt   instance bool SpaceCraft.Inventory::RemoveItems(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>)
      IL_0021:  brfalse.s  IL_0059

      IL_0023:  ldarg.0
      IL_0024:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::worldObjects
      IL_0029:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
      IL_002e:  stloc.0
      .try
      {
        IL_002f:  br.s       IL_0045

        IL_0031:  ldloc.0
        IL_0032:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
        IL_0037:  stloc.1
        IL_0038:  ldarg.0
        IL_0039:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::inventory
        IL_003e:  ldloc.1
        IL_003f:  ldc.i4.0
        IL_0040:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                       bool)
        IL_0045:  ldloc.0
        IL_0046:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
        IL_004b:  brtrue.s   IL_0031

        IL_004d:  leave.s    IL_0059

      }  // end .try
      finally
      {
        IL_004f:  ldloc.0
        IL_0050:  brfalse.s  IL_0058

        IL_0052:  ldloc.0
        IL_0053:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0058:  endfinally
      }  // end handler
      IL_0059:  ldarg.0
      IL_005a:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::inventory
      IL_005f:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_0064:  ldarg.1
      IL_0065:  ldarg.0
      IL_0066:  ldfld      bool SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::displayInformation
      IL_006b:  and
      IL_006c:  brfalse.s  IL_00c4

      IL_006e:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.DisplayersHandler>()
      IL_0073:  callvirt   instance class SpaceCraft.InformationsDisplayer SpaceCraft.DisplayersHandler::GetInformationsDisplayer()
      IL_0078:  stloc.2
      IL_0079:  ldarg.0
      IL_007a:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::worldObjects
      IL_007f:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
      IL_0084:  stloc.0
      .try
      {
        IL_0085:  br.s       IL_00b0

        IL_0087:  ldloc.0
        IL_0088:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
        IL_008d:  stloc.3
        IL_008e:  ldloc.2
        IL_008f:  ldc.r4     2.
        IL_0094:  ldloc.3
        IL_0095:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
        IL_009a:  call       string SpaceCraft.Readable::GetGroupName(class SpaceCraft.Group)
        IL_009f:  ldc.i4.3
        IL_00a0:  ldloc.3
        IL_00a1:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
        IL_00a6:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Sprite SpaceCraft.Group::GetImage()
        IL_00ab:  callvirt   instance void SpaceCraft.InformationsDisplayer::AddInformation(float32,
                                                                                            string,
                                                                                            valuetype SpaceCraft.DataConfig/UiInformationsType,
                                                                                            class [UnityEngine.CoreModule]UnityEngine.Sprite)
        IL_00b0:  ldloc.0
        IL_00b1:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
        IL_00b6:  brtrue.s   IL_0087

        IL_00b8:  leave.s    IL_00c4

      }  // end .try
      finally
      {
        IL_00ba:  ldloc.0
        IL_00bb:  brfalse.s  IL_00c3

        IL_00bd:  ldloc.0
        IL_00be:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_00c3:  endfinally
      }  // end handler
      IL_00c4:  ldarg.0
      IL_00c5:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::result
      IL_00ca:  dup
      IL_00cb:  brtrue.s   IL_00cf

      IL_00cd:  pop
      IL_00ce:  ret

      IL_00cf:  ldarg.1
      IL_00d0:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_00d5:  ret
    } // end of method '<>c__DisplayClass40_0'::'<RemoveItemsFromInventory>b__0'

  } // end of class '<>c__DisplayClass40_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass41_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.InventoriesHandler '<>4__this'
    .field public class SpaceCraft.Inventory inventory
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass41_0'::.ctor

    .method assembly hidebysig instance void 
            '<RemoveAndDestroyAllItemsFromInventory>b__0'(bool succes) cil managed
    {
      // Code size       94 (0x5e)
      .maxstack  3
      .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_0,
               class SpaceCraft.WorldObject V_1)
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_005d

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0'::'<>4__this'
      IL_0009:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
      IL_000e:  brtrue.s   IL_0052

      IL_0010:  ldarg.0
      IL_0011:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0'::inventory
      IL_0016:  ldc.i4.0
      IL_0017:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::DestroyAllItemsInside(bool)
      IL_001c:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
      IL_0021:  stloc.0
      .try
      {
        IL_0022:  br.s       IL_0039

        IL_0024:  ldloca.s   V_0
        IL_0026:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
        IL_002b:  stloc.1
        IL_002c:  ldarg.0
        IL_002d:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0'::inventory
        IL_0032:  ldloc.1
        IL_0033:  ldc.i4.0
        IL_0034:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                       bool)
        IL_0039:  ldloca.s   V_0
        IL_003b:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
        IL_0040:  brtrue.s   IL_0024

        IL_0042:  leave.s    IL_0052

      }  // end .try
      finally
      {
        IL_0044:  ldloca.s   V_0
        IL_0046:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
        IL_004c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0051:  endfinally
      }  // end handler
      IL_0052:  ldarg.0
      IL_0053:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0'::inventory
      IL_0058:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_005d:  ret
    } // end of method '<>c__DisplayClass41_0'::'<RemoveAndDestroyAllItemsFromInventory>b__0'

  } // end of class '<>c__DisplayClass41_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass53_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.InventoriesHandler '<>4__this'
    .field public class SpaceCraft.Inventory inventoryClicked
    .field public class SpaceCraft.UiWindowContainer windowContainer
    .field public class SpaceCraft.Inventory otherInventory
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass53_0'::.ctor

    .method assembly hidebysig instance void 
            '<AnInventoryHasBeenClicked>b__0'(bool success) cil managed
    {
      // Code size       51 (0x33)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0032

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.UiWindowContainer SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::windowContainer
      IL_0009:  callvirt   instance bool SpaceCraft.UiWindow::get_IsOpen()
      IL_000e:  brfalse.s  IL_0032

      IL_0010:  ldarg.0
      IL_0011:  ldfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::'<>4__this'
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::inventoryClicked
      IL_001c:  call       instance void SpaceCraft.InventoriesHandler::CheckInventoryWatchAndDirty(class SpaceCraft.Inventory)
      IL_0021:  ldarg.0
      IL_0022:  ldfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::'<>4__this'
      IL_0027:  ldarg.0
      IL_0028:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::otherInventory
      IL_002d:  call       instance void SpaceCraft.InventoriesHandler::CheckInventoryWatchAndDirty(class SpaceCraft.Inventory)
      IL_0032:  ret
    } // end of method '<>c__DisplayClass53_0'::'<AnInventoryHasBeenClicked>b__0'

  } // end of class '<>c__DisplayClass53_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass55_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.InventoriesHandler '<>4__this'
    .field public class SpaceCraft.Inventory inventory
    .field public int32 sizeOffset
    .field public valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 dropPosition
    .field public class [mscorlib]System.Action`1<bool> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass55_0'::.ctor

    .method assembly hidebysig instance void 
            '<SetInventorySize>b__0'(bool succes) cil managed
    {
      // Code size       146 (0x92)
      .maxstack  3
      .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_0,
               class SpaceCraft.WorldObject V_1)
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0080

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::'<>4__this'
      IL_0009:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
      IL_000e:  brtrue.s   IL_0075

      IL_0010:  ldarg.0
      IL_0011:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::inventory
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::inventory
      IL_001c:  callvirt   instance int32 SpaceCraft.Inventory::GetSize()
      IL_0021:  ldarg.0
      IL_0022:  ldfld      int32 SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::sizeOffset
      IL_0027:  add
      IL_0028:  callvirt   instance void SpaceCraft.Inventory::SetSize(int32)
      IL_002d:  ldarg.0
      IL_002e:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::inventory
      IL_0033:  ldarg.0
      IL_0034:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::dropPosition
      IL_0039:  ldc.i4.1
      IL_003a:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::DropObjectsIfNotEnoughSpace(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                                                      bool)
      IL_003f:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
      IL_0044:  stloc.0
      .try
      {
        IL_0045:  br.s       IL_005c

        IL_0047:  ldloca.s   V_0
        IL_0049:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
        IL_004e:  stloc.1
        IL_004f:  ldarg.0
        IL_0050:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::inventory
        IL_0055:  ldloc.1
        IL_0056:  ldc.i4.0
        IL_0057:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                       bool)
        IL_005c:  ldloca.s   V_0
        IL_005e:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
        IL_0063:  brtrue.s   IL_0047

        IL_0065:  leave.s    IL_0075

      }  // end .try
      finally
      {
        IL_0067:  ldloca.s   V_0
        IL_0069:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
        IL_006f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0074:  endfinally
      }  // end handler
      IL_0075:  ldarg.0
      IL_0076:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::inventory
      IL_007b:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_0080:  ldarg.0
      IL_0081:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::result
      IL_0086:  dup
      IL_0087:  brtrue.s   IL_008b

      IL_0089:  pop
      IL_008a:  ret

      IL_008b:  ldarg.1
      IL_008c:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_0091:  ret
    } // end of method '<>c__DisplayClass55_0'::'<SetInventorySize>b__0'

  } // end of class '<>c__DisplayClass55_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass57_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.Inventory inventory
    .field public class [mscorlib]System.Action`1<bool> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass57_0'::.ctor

    .method assembly hidebysig instance void 
            '<LockInventoryContent>b__0'(bool succes) cil managed
    {
      // Code size       32 (0x20)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_000e

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass57_0'::inventory
      IL_0009:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_000e:  ldarg.0
      IL_000f:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass57_0'::result
      IL_0014:  dup
      IL_0015:  brtrue.s   IL_0019

      IL_0017:  pop
      IL_0018:  ret

      IL_0019:  ldarg.1
      IL_001a:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_001f:  ret
    } // end of method '<>c__DisplayClass57_0'::'<LockInventoryContent>b__0'

  } // end of class '<>c__DisplayClass57_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass71_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.InventoriesHandler '<>4__this'
    .field public class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> previousContent
    .field public class SpaceCraft.Inventory inventory
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass71_0'::.ctor

    .method assembly hidebysig instance void 
            '<DirtyInventoryClientRpc>b__0'(bool success) cil managed
    {
      // Code size       24 (0x18)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::'<>4__this'
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::previousContent
      IL_000c:  ldarg.0
      IL_000d:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::inventory
      IL_0012:  call       instance void SpaceCraft.InventoriesHandler::DiffInventories(class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>,
                                                                                        class SpaceCraft.Inventory)
      IL_0017:  ret
    } // end of method '<>c__DisplayClass71_0'::'<DirtyInventoryClientRpc>b__0'

  } // end of class '<>c__DisplayClass71_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass82_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class SpaceCraft.Inventory inventory
    .field public class SpaceCraft.WorldObject worldObject
    .field public class [mscorlib]System.Action`1<bool> result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass82_0'::.ctor

    .method assembly hidebysig instance void 
            '<AddWorldObjectToInventoryFromClient>b__0'(bool succes) cil managed
    {
      // Code size       87 (0x57)
      .maxstack  4
      .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1' V_0)
      IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0' SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'CS$<>8__locals1'
      IL_000d:  ldloc.0
      IL_000e:  ldarg.1
      IL_000f:  stfld      bool SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::succes
      IL_0014:  ldloc.0
      IL_0015:  ldfld      bool SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::succes
      IL_001a:  brfalse.s  IL_0050

      IL_001c:  ldsfld     class SpaceCraft.GeneticTraitHandler SpaceCraft.GeneticTraitHandler::Instance
      IL_0021:  callvirt   instance class SpaceCraft.Group SpaceCraft.GeneticTraitHandler::GetGroupOfGeneticTrait()
      IL_0026:  ldarg.0
      IL_0027:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::worldObject
      IL_002c:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_0031:  bne.un.s   IL_0050

      IL_0033:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
      IL_0038:  ldarg.0
      IL_0039:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::worldObject
      IL_003e:  ldloc.0
      IL_003f:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'<AddWorldObjectToInventoryFromClient>b__2'(bool)
      IL_0045:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                      native int)
      IL_004a:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetails(class SpaceCraft.WorldObject,
                                                                                            class [mscorlib]System.Action`1<bool>)
      IL_004f:  ret

      IL_0050:  ldloc.0
      IL_0051:  callvirt   instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'<AddWorldObjectToInventoryFromClient>g__Finish|1'()
      IL_0056:  ret
    } // end of method '<>c__DisplayClass82_0'::'<AddWorldObjectToInventoryFromClient>b__0'

  } // end of class '<>c__DisplayClass82_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass82_1'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public bool succes
    .field public class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass82_1'::.ctor

    .method assembly hidebysig instance void 
            '<AddWorldObjectToInventoryFromClient>g__Finish|1'() cil managed
    {
      // Code size       109 (0x6d)
      .maxstack  3
      IL_0000:  ldarg.0
      IL_0001:  ldfld      bool SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::succes
      IL_0006:  brfalse.s  IL_0051

      IL_0008:  ldarg.0
      IL_0009:  ldfld      class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0' SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'CS$<>8__locals1'
      IL_000e:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::inventory
      IL_0013:  ldarg.0
      IL_0014:  ldfld      class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0' SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'CS$<>8__locals1'
      IL_0019:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::worldObject
      IL_001e:  ldc.i4.1
      IL_001f:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                       bool)
      IL_0024:  pop
      IL_0025:  ldarg.0
      IL_0026:  ldfld      class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0' SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'CS$<>8__locals1'
      IL_002b:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::inventory
      IL_0030:  ldarg.0
      IL_0031:  ldfld      class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0' SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'CS$<>8__locals1'
      IL_0036:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::worldObject
      IL_003b:  ldc.i4.1
      IL_003c:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0041:  ldarg.0
      IL_0042:  ldfld      class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0' SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'CS$<>8__locals1'
      IL_0047:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::inventory
      IL_004c:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
      IL_0051:  ldarg.0
      IL_0052:  ldfld      class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0' SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'CS$<>8__locals1'
      IL_0057:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::result
      IL_005c:  dup
      IL_005d:  brtrue.s   IL_0061

      IL_005f:  pop
      IL_0060:  ret

      IL_0061:  ldarg.0
      IL_0062:  ldfld      bool SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::succes
      IL_0067:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
      IL_006c:  ret
    } // end of method '<>c__DisplayClass82_1'::'<AddWorldObjectToInventoryFromClient>g__Finish|1'

    .method assembly hidebysig instance void 
            '<AddWorldObjectToInventoryFromClient>b__2'(bool success) cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_1'::'<AddWorldObjectToInventoryFromClient>g__Finish|1'()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass82_1'::'<AddWorldObjectToInventoryFromClient>b__2'

  } // end of class '<>c__DisplayClass82_1'

  .field public static class SpaceCraft.InventoriesHandler Instance
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> _allWorldInventories
  .field private class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>> _callbackQueue
  .field private class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> _callbackAddOrRemoveQueue
  .field private class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`2<bool,int32>> _callbackAddNewQueue
  .field private int32 _tmpInventoriesId
  .field private class [mscorlib]System.Action _logisticsCallback
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> _clientInventoryWatchers
  .field private class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> OnWorldObjectFromSceneRetrieved
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig virtual instance void 
          OnNetworkSpawn() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0006:  ldarg.0
    IL_0007:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_000c:  brfalse.s  IL_0025

    IL_000e:  ldarg.0
    IL_000f:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0014:  ldarg.0
    IL_0015:  ldftn      instance void SpaceCraft.InventoriesHandler::OnClientDisconnectCallback(uint64)
    IL_001b:  newobj     instance void class [mscorlib]System.Action`1<uint64>::.ctor(object,
                                                                                      native int)
    IL_0020:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::add_OnClientDisconnectCallback(class [mscorlib]System.Action`1<uint64>)
    IL_0025:  ret
  } // end of method InventoriesHandler::OnNetworkSpawn

  .method public hidebysig virtual instance void 
          OnDestroy() cil managed
  {
    // Code size       71 (0x47)
    .maxstack  3
    IL_0000:  ldsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0005:  ldarg.0
    IL_0006:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_000b:  brfalse.s  IL_0040

    IL_000d:  ldarg.0
    IL_000e:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0013:  brfalse.s  IL_003a

    IL_0015:  ldarg.0
    IL_0016:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_001b:  ldnull
    IL_001c:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0021:  brfalse.s  IL_003a

    IL_0023:  ldarg.0
    IL_0024:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0029:  ldarg.0
    IL_002a:  ldftn      instance void SpaceCraft.InventoriesHandler::OnClientDisconnectCallback(uint64)
    IL_0030:  newobj     instance void class [mscorlib]System.Action`1<uint64>::.ctor(object,
                                                                                      native int)
    IL_0035:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::remove_OnClientDisconnectCallback(class [mscorlib]System.Action`1<uint64>)
    IL_003a:  ldnull
    IL_003b:  stsfld     class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler::Instance
    IL_0040:  ldarg.0
    IL_0041:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::OnDestroy()
    IL_0046:  ret
  } // end of method InventoriesHandler::OnDestroy

  .method public hidebysig instance void 
          SetAllWorldInventories(class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> worldInventories) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_0007:  ret
  } // end of method InventoriesHandler::SetAllWorldInventories

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> 
          GetAllInventories() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_0006:  ret
  } // end of method InventoriesHandler::GetAllInventories

  .method private hidebysig instance void 
          GetOrCreateNewInventoryFromWoIDServerRpc(int32 woId,
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
    // Code size       269 (0x10d)
    .maxstack  8
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
    IL_0043:  ldc.i4     0xb03e0f68
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
    IL_008e:  ldc.i4     0xb03e0f68
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
    IL_00ca:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_00cf:  callvirt   instance class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::GetAllWorldObjects()
    IL_00d4:  ldarg.1
    IL_00d5:  ldloca.s   V_0
    IL_00d7:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_00dc:  brfalse.s  IL_00f1

    IL_00de:  ldarg.0
    IL_00df:  ldc.i4.0
    IL_00e0:  ldc.i4.0
    IL_00e1:  ldloc.0
    IL_00e2:  callvirt   instance int32 SpaceCraft.WorldObject::GetLinkedInventoryId()
    IL_00e7:  ldc.i4.0
    IL_00e8:  ldnull
    IL_00e9:  ldnull
    IL_00ea:  ldarg.2
    IL_00eb:  call       instance void SpaceCraft.InventoriesHandler::GetOrCreateNewInventory(bool,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32[],
                                                                                              int32[],
                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00f0:  ret

    IL_00f1:  ldarg.0
    IL_00f2:  ldc.i4.0
    IL_00f3:  ldc.i4.m1
    IL_00f4:  ldc.i4.0
    IL_00f5:  newarr     [mscorlib]System.Int32
    IL_00fa:  ldc.i4.0
    IL_00fb:  newarr     [mscorlib]System.Int32
    IL_0100:  ldc.i4.0
    IL_0101:  ldarg.2
    IL_0102:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0107:  call       instance void SpaceCraft.InventoriesHandler::RetrieveInventoryClientRpc(int32,
                                                                                                 int32,
                                                                                                 int32[],
                                                                                                 int32[],
                                                                                                 bool,
                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_010c:  ret
  } // end of method InventoriesHandler::GetOrCreateNewInventoryFromWoIDServerRpc

  .method private hidebysig instance void 
          GetOrCreateNewInventoryServerRpc(bool create,
                                           int32 size,
                                           int32 inventoryId,
                                           int32 ownerId,
                                           int32[] content,
                                           int32[] authorized,
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
    // Code size       423 (0x1a7)
    .maxstack  8
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
             bool V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             bool V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9)
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
    IL_003c:  brfalse    IL_0175

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xf0cd024a
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
    IL_007f:  ldarga     create
    IL_0083:  ldloca     V_3
    IL_0087:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_008d:  ldloc      V_3
    IL_0091:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0096:  ldloc      V_1
    IL_009a:  ldarg      size
    IL_009e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00a3:  ldloc      V_1
    IL_00a7:  ldarg      inventoryId
    IL_00ab:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00b0:  ldloc      V_1
    IL_00b4:  ldarg      ownerId
    IL_00b8:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00bd:  ldarg      content
    IL_00c1:  ldnull
    IL_00c2:  cgt.un
    IL_00c4:  stloc      V_4
    IL_00c8:  ldloca     V_1
    IL_00cc:  ldloca     V_4
    IL_00d0:  ldloca     V_5
    IL_00d4:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00da:  ldloc      V_5
    IL_00de:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00e3:  ldloc      V_4
    IL_00e7:  brfalse    IL_0107

    IL_00ec:  ldloca     V_1
    IL_00f0:  ldarg      content
    IL_00f4:  ldloca     V_6
    IL_00f8:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00fe:  ldloc      V_6
    IL_0102:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0107:  nop
    IL_0108:  ldarg      authorized
    IL_010c:  ldnull
    IL_010d:  cgt.un
    IL_010f:  stloc      V_7
    IL_0113:  ldloca     V_1
    IL_0117:  ldloca     V_7
    IL_011b:  ldloca     V_8
    IL_011f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0125:  ldloc      V_8
    IL_0129:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_012e:  ldloc      V_7
    IL_0132:  brfalse    IL_0152

    IL_0137:  ldloca     V_1
    IL_013b:  ldarg      authorized
    IL_013f:  ldloca     V_9
    IL_0143:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0149:  ldloc      V_9
    IL_014d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0152:  nop
    IL_0153:  nop
    IL_0154:  ldarg.0
    IL_0155:  ldloca     V_1
    IL_0159:  ldc.i4     0xf0cd024a
    IL_015e:  ldarg      rpcParams
    IL_0162:  ldloc      V_2
    IL_0166:  ldc.i4     0x2
    IL_016b:  ldc.i4     0x0
    IL_0170:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0175:  nop
    IL_0176:  ldarg.0
    IL_0177:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_017c:  ldc.i4     0x1
    IL_0181:  ceq
    IL_0183:  brtrue     IL_0189

    IL_0188:  ret

    IL_0189:  nop
    IL_018a:  ldarg.0
    IL_018b:  ldc.i4     0x0
    IL_0190:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0195:  ldarg.0
    IL_0196:  ldarg.1
    IL_0197:  ldarg.2
    IL_0198:  ldarg.3
    IL_0199:  ldarg.s    ownerId
    IL_019b:  ldarg.s    content
    IL_019d:  ldarg.s    authorized
    IL_019f:  ldarg.s    rpcParams
    IL_01a1:  call       instance void SpaceCraft.InventoriesHandler::GetOrCreateNewInventory(bool,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32[],
                                                                                              int32[],
                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01a6:  ret
  } // end of method InventoriesHandler::GetOrCreateNewInventoryServerRpc

  .method private hidebysig instance void 
          GetOrCreateNewInventory(bool create,
                                  int32 size,
                                  int32 inventoryId,
                                  int32 ownerId,
                                  int32[] content,
                                  int32[] authorized,
                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams rpcParams) cil managed
  {
    // Code size       453 (0x1c5)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             int32 V_1,
             class SpaceCraft.WorldObject V_2,
             int32 V_3,
             int32[] V_4,
             int32 V_5,
             class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> V_6,
             int32 V_7,
             int32[] V_8,
             int32[] V_9,
             int32 V_10,
             bool V_11,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_12,
             class SpaceCraft.WorldObject V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.3
    IL_0002:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.1
    IL_0009:  brfalse    IL_00ad

    IL_000e:  ldloc.0
    IL_000f:  brtrue     IL_00ad

    IL_0014:  ldarg.3
    IL_0015:  ldc.i4.m1
    IL_0016:  beq.s      IL_0028

    IL_0018:  ldarg.3
    IL_0019:  brfalse.s  IL_001e

    IL_001b:  ldarg.3
    IL_001c:  br.s       IL_0039

    IL_001e:  ldarg.0
    IL_001f:  call       instance int32 SpaceCraft.InventoriesHandler::GetBiggestInventoryId()
    IL_0024:  ldc.i4.1
    IL_0025:  add
    IL_0026:  br.s       IL_0039

    IL_0028:  ldarg.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      int32 SpaceCraft.InventoriesHandler::_tmpInventoriesId
    IL_002f:  stloc.3
    IL_0030:  ldloc.3
    IL_0031:  ldc.i4.1
    IL_0032:  sub
    IL_0033:  stfld      int32 SpaceCraft.InventoriesHandler::_tmpInventoriesId
    IL_0038:  ldloc.3
    IL_0039:  stloc.1
    IL_003a:  ldloc.1
    IL_003b:  ldarg.2
    IL_003c:  ldnull
    IL_003d:  ldnull
    IL_003e:  ldnull
    IL_003f:  ldc.i4.0
    IL_0040:  newobj     instance void SpaceCraft.Inventory::.ctor(int32,
                                                                   int32,
                                                                   class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>,
                                                                   class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>,
                                                                   class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>,
                                                                   int32)
    IL_0045:  stloc.0
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_004c:  ldloc.1
    IL_004d:  ldloc.0
    IL_004e:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory>::set_Item(!0,
                                                                                                                                           !1)
    IL_0053:  ldarg.s    content
    IL_0055:  brfalse.s  IL_008c

    IL_0057:  ldarg.s    content
    IL_0059:  stloc.s    V_4
    IL_005b:  ldc.i4.0
    IL_005c:  stloc.3
    IL_005d:  br.s       IL_0085

    IL_005f:  ldloc.s    V_4
    IL_0061:  ldloc.3
    IL_0062:  ldelem.i4
    IL_0063:  stloc.s    V_5
    IL_0065:  ldloc.0
    IL_0066:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_006b:  ldloc.s    V_5
    IL_006d:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_0072:  ldc.i4.0
    IL_0073:  ldnull
    IL_0074:  ldc.i4.1
    IL_0075:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                     bool)
    IL_0080:  pop
    IL_0081:  ldloc.3
    IL_0082:  ldc.i4.1
    IL_0083:  add
    IL_0084:  stloc.3
    IL_0085:  ldloc.3
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldlen
    IL_0089:  conv.i4
    IL_008a:  blt.s      IL_005f

    IL_008c:  ldarg.s    ownerId
    IL_008e:  ldc.i4.0
    IL_008f:  ble.s      IL_00ad

    IL_0091:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0096:  callvirt   instance class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject> SpaceCraft.WorldObjectsHandler::GetAllWorldObjects()
    IL_009b:  ldarg.s    ownerId
    IL_009d:  ldloca.s   V_2
    IL_009f:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.WorldObject>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_00a4:  brfalse.s  IL_00ad

    IL_00a6:  ldloc.2
    IL_00a7:  ldloc.1
    IL_00a8:  callvirt   instance void SpaceCraft.WorldObject::SetLinkedInventoryId(int32)
    IL_00ad:  ldloc.0
    IL_00ae:  brfalse.s  IL_00fe

    IL_00b0:  ldloc.0
    IL_00b1:  callvirt   instance class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::GetAuthorizedGroups()
    IL_00b6:  callvirt   instance int32 class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::get_Count()
    IL_00bb:  brtrue.s   IL_00fe

    IL_00bd:  ldarg.s    authorized
    IL_00bf:  brfalse.s  IL_00fe

    IL_00c1:  ldarg.s    authorized
    IL_00c3:  ldlen
    IL_00c4:  brfalse.s  IL_00fe

    IL_00c6:  ldloc.0
    IL_00c7:  callvirt   instance class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> SpaceCraft.Inventory::GetAuthorizedGroups()
    IL_00cc:  stloc.s    V_6
    IL_00ce:  ldarg.s    authorized
    IL_00d0:  stloc.s    V_4
    IL_00d2:  ldc.i4.0
    IL_00d3:  stloc.3
    IL_00d4:  br.s       IL_00ef

    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldloc.3
    IL_00d9:  ldelem.i4
    IL_00da:  stloc.s    V_7
    IL_00dc:  ldloc.s    V_6
    IL_00de:  ldloc.s    V_7
    IL_00e0:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_00e5:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::Add(!0)
    IL_00ea:  pop
    IL_00eb:  ldloc.3
    IL_00ec:  ldc.i4.1
    IL_00ed:  add
    IL_00ee:  stloc.3
    IL_00ef:  ldloc.3
    IL_00f0:  ldloc.s    V_4
    IL_00f2:  ldlen
    IL_00f3:  conv.i4
    IL_00f4:  blt.s      IL_00d6

    IL_00f6:  ldloc.0
    IL_00f7:  ldloc.s    V_6
    IL_00f9:  callvirt   instance void SpaceCraft.Inventory::SetAuthorizedGroups(class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>)
    IL_00fe:  ldloc.0
    IL_00ff:  brtrue.s   IL_011e

    IL_0101:  ldarg.0
    IL_0102:  ldc.i4.0
    IL_0103:  ldc.i4.m1
    IL_0104:  ldc.i4.0
    IL_0105:  newarr     [mscorlib]System.Int32
    IL_010a:  ldc.i4.0
    IL_010b:  newarr     [mscorlib]System.Int32
    IL_0110:  ldc.i4.0
    IL_0111:  ldarg.s    rpcParams
    IL_0113:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0118:  call       instance void SpaceCraft.InventoriesHandler::RetrieveInventoryClientRpc(int32,
                                                                                                 int32,
                                                                                                 int32[],
                                                                                                 int32[],
                                                                                                 bool,
                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_011d:  ret

    IL_011e:  ldloc.0
    IL_011f:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0124:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Count()
    IL_0129:  newarr     [mscorlib]System.Int32
    IL_012e:  stloc.s    V_8
    IL_0130:  ldloc.0
    IL_0131:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0136:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Count()
    IL_013b:  newarr     [mscorlib]System.Int32
    IL_0140:  stloc.s    V_9
    IL_0142:  ldc.i4.0
    IL_0143:  stloc.s    V_10
    IL_0145:  ldc.i4.0
    IL_0146:  stloc.s    V_11
    IL_0148:  ldloc.0
    IL_0149:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_014e:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0153:  stloc.s    V_12
    .try
    {
      IL_0155:  br.s       IL_018e

      IL_0157:  ldloc.s    V_12
      IL_0159:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_015e:  stloc.s    V_13
      IL_0160:  ldloc.s    V_8
      IL_0162:  ldloc.s    V_10
      IL_0164:  ldloc.s    V_13
      IL_0166:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_016b:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
      IL_0170:  stelem.i4
      IL_0171:  ldloc.s    V_9
      IL_0173:  ldloc.s    V_10
      IL_0175:  dup
      IL_0176:  ldc.i4.1
      IL_0177:  add
      IL_0178:  stloc.s    V_10
      IL_017a:  ldloc.s    V_13
      IL_017c:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
      IL_0181:  stelem.i4
      IL_0182:  ldloc.s    V_13
      IL_0184:  callvirt   instance valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::GetGeneticTraitType()
      IL_0189:  brfalse.s  IL_018e

      IL_018b:  ldc.i4.1
      IL_018c:  stloc.s    V_11
      IL_018e:  ldloc.s    V_12
      IL_0190:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_0195:  brtrue.s   IL_0157

      IL_0197:  leave.s    IL_01a5

    }  // end .try
    finally
    {
      IL_0199:  ldloc.s    V_12
      IL_019b:  brfalse.s  IL_01a4

      IL_019d:  ldloc.s    V_12
      IL_019f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_01a4:  endfinally
    }  // end handler
    IL_01a5:  ldarg.0
    IL_01a6:  ldloc.0
    IL_01a7:  callvirt   instance int32 SpaceCraft.Inventory::GetSize()
    IL_01ac:  ldloc.0
    IL_01ad:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_01b2:  ldloc.s    V_8
    IL_01b4:  ldloc.s    V_9
    IL_01b6:  ldloc.s    V_11
    IL_01b8:  ldarg.s    rpcParams
    IL_01ba:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01bf:  call       instance void SpaceCraft.InventoriesHandler::RetrieveInventoryClientRpc(int32,
                                                                                                 int32,
                                                                                                 int32[],
                                                                                                 int32[],
                                                                                                 bool,
                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01c4:  ret
  } // end of method InventoriesHandler::GetOrCreateNewInventory

  .method private hidebysig instance void 
          RetrieveInventoryClientRpc(int32 size,
                                     int32 inventoryId,
                                     int32[] content,
                                     int32[] contentIds,
                                     bool containsGeneticTraits,
                                     [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [6] = nullref
    // Code size       594 (0x252)
    .maxstack  8
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0' V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             bool V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             bool V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9)
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
    IL_003c:  brfalse    IL_015a

    IL_0041:  ldloc      V_1
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_1
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_015a

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x182cbdae
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_2
    IL_0076:  ldloc      V_2
    IL_007a:  ldarg      size
    IL_007e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0083:  ldloc      V_2
    IL_0087:  ldarg      inventoryId
    IL_008b:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0090:  ldarg      content
    IL_0094:  ldnull
    IL_0095:  cgt.un
    IL_0097:  stloc      V_3
    IL_009b:  ldloca     V_2
    IL_009f:  ldloca     V_3
    IL_00a3:  ldloca     V_4
    IL_00a7:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00ad:  ldloc      V_4
    IL_00b1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b6:  ldloc      V_3
    IL_00ba:  brfalse    IL_00da

    IL_00bf:  ldloca     V_2
    IL_00c3:  ldarg      content
    IL_00c7:  ldloca     V_5
    IL_00cb:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00d1:  ldloc      V_5
    IL_00d5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00da:  nop
    IL_00db:  ldarg      contentIds
    IL_00df:  ldnull
    IL_00e0:  cgt.un
    IL_00e2:  stloc      V_6
    IL_00e6:  ldloca     V_2
    IL_00ea:  ldloca     V_6
    IL_00ee:  ldloca     V_7
    IL_00f2:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00f8:  ldloc      V_7
    IL_00fc:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0101:  ldloc      V_6
    IL_0105:  brfalse    IL_0125

    IL_010a:  ldloca     V_2
    IL_010e:  ldarg      contentIds
    IL_0112:  ldloca     V_8
    IL_0116:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_011c:  ldloc      V_8
    IL_0120:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0125:  nop
    IL_0126:  ldloca     V_2
    IL_012a:  ldarga     containsGeneticTraits
    IL_012e:  ldloca     V_9
    IL_0132:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0138:  ldloc      V_9
    IL_013c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0141:  nop
    IL_0142:  ldarg.0
    IL_0143:  ldloca     V_2
    IL_0147:  ldc.i4     0x182cbdae
    IL_014c:  ldarg      clientRpcParams
    IL_0150:  ldc.i4     0x0
    IL_0155:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_015a:  nop
    IL_015b:  ldarg.0
    IL_015c:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0161:  ldc.i4     0x1
    IL_0166:  ceq
    IL_0168:  brfalse    IL_0189

    IL_016d:  ldloc      V_1
    IL_0171:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_0176:  brtrue     IL_018a

    IL_017b:  ldloc      V_1
    IL_017f:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0184:  brtrue     IL_018a

    IL_0189:  ret

    IL_018a:  nop
    IL_018b:  ldarg.0
    IL_018c:  ldc.i4     0x0
    IL_0191:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0196:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::.ctor()
    IL_019b:  stloc.0
    IL_019c:  ldloc.0
    IL_019d:  ldnull
    IL_019e:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::inventory
    IL_01a3:  ldloc.0
    IL_01a4:  ldarg.0
    IL_01a5:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>> SpaceCraft.InventoriesHandler::_callbackQueue
    IL_01aa:  callvirt   instance int32 class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>>::get_Count()
    IL_01af:  ldc.i4.0
    IL_01b0:  bgt.s      IL_01b5

    IL_01b2:  ldnull
    IL_01b3:  br.s       IL_01c0

    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>> SpaceCraft.InventoriesHandler::_callbackQueue
    IL_01bb:  callvirt   instance !0 class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>>::Dequeue()
    IL_01c0:  stfld      class [mscorlib]System.Action`1<class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::result
    IL_01c5:  ldarg.0
    IL_01c6:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_01cb:  brtrue.s   IL_0200

    IL_01cd:  ldloc.0
    IL_01ce:  ldarg.2
    IL_01cf:  ldc.i4.0
    IL_01d0:  bge.s      IL_01d5

    IL_01d2:  ldnull
    IL_01d3:  br.s       IL_01e7

    IL_01d5:  ldarg.0
    IL_01d6:  ldarg.1
    IL_01d7:  ldarg.2
    IL_01d8:  ldarg.3
    IL_01d9:  ldarg.s    contentIds
    IL_01db:  ldarg.0
    IL_01dc:  ldarg.2
    IL_01dd:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_01e2:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::UpdateOrCreateInventoryFromMessage(int32,
                                                                                                                               int32,
                                                                                                                               int32[],
                                                                                                                               int32[],
                                                                                                                               class SpaceCraft.Inventory)
    IL_01e7:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::inventory
    IL_01ec:  ldarg.0
    IL_01ed:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_01f2:  ldarg.2
    IL_01f3:  ldloc.0
    IL_01f4:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::inventory
    IL_01f9:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory>::set_Item(!0,
                                                                                                                                           !1)
    IL_01fe:  br.s       IL_020d

    IL_0200:  ldloc.0
    IL_0201:  ldarg.0
    IL_0202:  ldarg.2
    IL_0203:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_0208:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::inventory
    IL_020d:  ldarg.s    containsGeneticTraits
    IL_020f:  brfalse.s  IL_023b

    IL_0211:  ldloc.0
    IL_0212:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::inventory
    IL_0217:  brfalse.s  IL_023b

    IL_0219:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_021e:  ldloc.0
    IL_021f:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::inventory
    IL_0224:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0229:  ldloc.0
    IL_022a:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::'<RetrieveInventoryClientRpc>b__0'(bool)
    IL_0230:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_0235:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetails(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>,
                                                                                          class [mscorlib]System.Action`1<bool>)
    IL_023a:  ret

    IL_023b:  ldloc.0
    IL_023c:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::result
    IL_0241:  dup
    IL_0242:  brtrue.s   IL_0246

    IL_0244:  pop
    IL_0245:  ret

    IL_0246:  ldloc.0
    IL_0247:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass13_0'::inventory
    IL_024c:  callvirt   instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::Invoke(!0)
    IL_0251:  ret
  } // end of method InventoriesHandler::RetrieveInventoryClientRpc

  .method private hidebysig instance class SpaceCraft.Inventory 
          UpdateOrCreateInventoryFromMessage(int32 size,
                                             int32 inventoryId,
                                             int32[] content,
                                             int32[] contentIds,
                                             [opt] class SpaceCraft.Inventory newInventory) cil managed
  {
    .param [5] = nullref
    // Code size       98 (0x62)
    .maxstack  6
    .locals init (int32 V_0,
             class SpaceCraft.WorldObject V_1)
    IL_0000:  ldarg.s    newInventory
    IL_0002:  brtrue.s   IL_0013

    IL_0004:  ldarg.2
    IL_0005:  ldarg.1
    IL_0006:  ldnull
    IL_0007:  ldnull
    IL_0008:  ldnull
    IL_0009:  ldc.i4.0
    IL_000a:  newobj     instance void SpaceCraft.Inventory::.ctor(int32,
                                                                   int32,
                                                                   class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>,
                                                                   class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>,
                                                                   class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>,
                                                                   int32)
    IL_000f:  starg.s    newInventory
    IL_0011:  br.s       IL_001b

    IL_0013:  ldarg.s    newInventory
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance void SpaceCraft.Inventory::ClearContent(int32)
    IL_001b:  ldc.i4.0
    IL_001c:  stloc.0
    IL_001d:  br.s       IL_0059

    IL_001f:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0024:  ldarg.s    contentIds
    IL_0026:  ldloc.0
    IL_0027:  ldelem.i4
    IL_0028:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_002d:  stloc.1
    IL_002e:  ldarg.s    newInventory
    IL_0030:  ldloc.1
    IL_0031:  brfalse.s  IL_0036

    IL_0033:  ldloc.1
    IL_0034:  br.s       IL_004e

    IL_0036:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_003b:  ldarg.3
    IL_003c:  ldloc.0
    IL_003d:  ldelem.i4
    IL_003e:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_0043:  ldarg.s    contentIds
    IL_0045:  ldloc.0
    IL_0046:  ldelem.i4
    IL_0047:  ldnull
    IL_0048:  ldc.i4.1
    IL_0049:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_004e:  ldc.i4.1
    IL_004f:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                     bool)
    IL_0054:  pop
    IL_0055:  ldloc.0
    IL_0056:  ldc.i4.1
    IL_0057:  add
    IL_0058:  stloc.0
    IL_0059:  ldloc.0
    IL_005a:  ldarg.3
    IL_005b:  ldlen
    IL_005c:  conv.i4
    IL_005d:  blt.s      IL_001f

    IL_005f:  ldarg.s    newInventory
    IL_0061:  ret
  } // end of method InventoriesHandler::UpdateOrCreateInventoryFromMessage

  .method public hidebysig instance void 
          CreateNewInventory(int32 size,
                             [opt] int32 inventoryId,
                             [opt] int32 ownerId,
                             [opt] class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> content,
                             [opt] class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> authorized,
                             [opt] class [mscorlib]System.Action`1<class SpaceCraft.Inventory> callback) cil managed
  {
    .param [2] = int32(0x00000000)
    .param [3] = int32(0x00000000)
    .param [4] = nullref
    .param [5] = nullref
    .param [6] = nullref
    // Code size       207 (0xcf)
    .maxstack  8
    .locals init (int32[] V_0,
             int32 V_1,
             int32[] V_2,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group> V_3,
             class SpaceCraft.Group V_4,
             valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group> V_5,
             class SpaceCraft.Group V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_7)
    IL_0000:  ldarg.s    content
    IL_0002:  brtrue.s   IL_0007

    IL_0004:  ldc.i4.0
    IL_0005:  br.s       IL_000e

    IL_0007:  ldarg.s    content
    IL_0009:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::get_Count()
    IL_000e:  newarr     [mscorlib]System.Int32
    IL_0013:  stloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  stloc.1
    IL_0016:  ldarg.s    content
    IL_0018:  brfalse.s  IL_0056

    IL_001a:  ldarg.s    content
    IL_001c:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::GetEnumerator()
    IL_0021:  stloc.3
    .try
    {
      IL_0022:  br.s       IL_003b

      IL_0024:  ldloca.s   V_3
      IL_0026:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::get_Current()
      IL_002b:  stloc.s    V_4
      IL_002d:  ldloc.0
      IL_002e:  ldloc.1
      IL_002f:  dup
      IL_0030:  ldc.i4.1
      IL_0031:  add
      IL_0032:  stloc.1
      IL_0033:  ldloc.s    V_4
      IL_0035:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
      IL_003a:  stelem.i4
      IL_003b:  ldloca.s   V_3
      IL_003d:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::MoveNext()
      IL_0042:  brtrue.s   IL_0024

      IL_0044:  leave.s    IL_0054

    }  // end .try
    finally
    {
      IL_0046:  ldloca.s   V_3
      IL_0048:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>
      IL_004e:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0053:  endfinally
    }  // end handler
    IL_0054:  ldc.i4.0
    IL_0055:  stloc.1
    IL_0056:  ldarg.s    authorized
    IL_0058:  brtrue.s   IL_005d

    IL_005a:  ldc.i4.0
    IL_005b:  br.s       IL_0064

    IL_005d:  ldarg.s    authorized
    IL_005f:  callvirt   instance int32 class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::get_Count()
    IL_0064:  newarr     [mscorlib]System.Int32
    IL_0069:  stloc.2
    IL_006a:  ldarg.s    authorized
    IL_006c:  brfalse.s  IL_00ab

    IL_006e:  ldarg.s    authorized
    IL_0070:  callvirt   instance valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<!0> class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::GetEnumerator()
    IL_0075:  stloc.s    V_5
    .try
    {
      IL_0077:  br.s       IL_0090

      IL_0079:  ldloca.s   V_5
      IL_007b:  call       instance !0 valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group>::get_Current()
      IL_0080:  stloc.s    V_6
      IL_0082:  ldloc.2
      IL_0083:  ldloc.1
      IL_0084:  dup
      IL_0085:  ldc.i4.1
      IL_0086:  add
      IL_0087:  stloc.1
      IL_0088:  ldloc.s    V_6
      IL_008a:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
      IL_008f:  stelem.i4
      IL_0090:  ldloca.s   V_5
      IL_0092:  call       instance bool valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group>::MoveNext()
      IL_0097:  brtrue.s   IL_0079

      IL_0099:  leave.s    IL_00a9

    }  // end .try
    finally
    {
      IL_009b:  ldloca.s   V_5
      IL_009d:  constrained. valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group>
      IL_00a3:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00a8:  endfinally
    }  // end handler
    IL_00a9:  ldc.i4.0
    IL_00aa:  stloc.1
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>> SpaceCraft.InventoriesHandler::_callbackQueue
    IL_00b1:  ldarg.s    callback
    IL_00b3:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>>::Enqueue(!0)
    IL_00b8:  ldarg.0
    IL_00b9:  ldc.i4.1
    IL_00ba:  ldarg.1
    IL_00bb:  ldarg.2
    IL_00bc:  ldarg.3
    IL_00bd:  ldloc.0
    IL_00be:  ldloc.2
    IL_00bf:  ldloca.s   V_7
    IL_00c1:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_00c7:  ldloc.s    V_7
    IL_00c9:  call       instance void SpaceCraft.InventoriesHandler::GetOrCreateNewInventoryServerRpc(bool,
                                                                                                       int32,
                                                                                                       int32,
                                                                                                       int32,
                                                                                                       int32[],
                                                                                                       int32[],
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00ce:  ret
  } // end of method InventoriesHandler::CreateNewInventory

  .method public hidebysig instance void 
          GetInventoryById(int32 inventoryId,
                           class [mscorlib]System.Action`1<class SpaceCraft.Inventory> callback,
                           [opt] class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group> authorized) cil managed
  {
    .param [3] = nullref
    // Code size       115 (0x73)
    .maxstack  8
    .locals init (int32[] V_0,
             int32 V_1,
             valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group> V_2,
             class SpaceCraft.Group V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>> SpaceCraft.InventoriesHandler::_callbackQueue
    IL_0006:  ldarg.2
    IL_0007:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>>::Enqueue(!0)
    IL_000c:  ldnull
    IL_000d:  stloc.0
    IL_000e:  ldarg.3
    IL_000f:  brfalse.s  IL_005c

    IL_0011:  ldc.i4.0
    IL_0012:  stloc.1
    IL_0013:  ldarg.3
    IL_0014:  brtrue.s   IL_0019

    IL_0016:  ldc.i4.0
    IL_0017:  br.s       IL_001f

    IL_0019:  ldarg.3
    IL_001a:  callvirt   instance int32 class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::get_Count()
    IL_001f:  newarr     [mscorlib]System.Int32
    IL_0024:  stloc.0
    IL_0025:  ldarg.3
    IL_0026:  callvirt   instance valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<!0> class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.Group>::GetEnumerator()
    IL_002b:  stloc.2
    .try
    {
      IL_002c:  br.s       IL_0043

      IL_002e:  ldloca.s   V_2
      IL_0030:  call       instance !0 valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group>::get_Current()
      IL_0035:  stloc.3
      IL_0036:  ldloc.0
      IL_0037:  ldloc.1
      IL_0038:  dup
      IL_0039:  ldc.i4.1
      IL_003a:  add
      IL_003b:  stloc.1
      IL_003c:  ldloc.3
      IL_003d:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
      IL_0042:  stelem.i4
      IL_0043:  ldloca.s   V_2
      IL_0045:  call       instance bool valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group>::MoveNext()
      IL_004a:  brtrue.s   IL_002e

      IL_004c:  leave.s    IL_005c

    }  // end .try
    finally
    {
      IL_004e:  ldloca.s   V_2
      IL_0050:  constrained. valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.Group>
      IL_0056:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_005b:  endfinally
    }  // end handler
    IL_005c:  ldarg.0
    IL_005d:  ldc.i4.0
    IL_005e:  ldc.i4.0
    IL_005f:  ldarg.1
    IL_0060:  ldc.i4.0
    IL_0061:  ldnull
    IL_0062:  ldloc.0
    IL_0063:  ldloca.s   V_4
    IL_0065:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_006b:  ldloc.s    V_4
    IL_006d:  call       instance void SpaceCraft.InventoriesHandler::GetOrCreateNewInventoryServerRpc(bool,
                                                                                                       int32,
                                                                                                       int32,
                                                                                                       int32,
                                                                                                       int32[],
                                                                                                       int32[],
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0072:  ret
  } // end of method InventoriesHandler::GetInventoryById

  .method public hidebysig instance class SpaceCraft.Inventory 
          GetInventoryById(int32 inventoryId) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  3
    .locals init (class SpaceCraft.Inventory V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory>::TryGetValue(!0,
                                                                                                                                              !1&)
    IL_000e:  brfalse.s  IL_0012

    IL_0010:  ldloc.0
    IL_0011:  ret

    IL_0012:  ldnull
    IL_0013:  ret
  } // end of method InventoriesHandler::GetInventoryById

  .method public hidebysig instance void 
          GetWorldObjectInventory(class SpaceCraft.WorldObject wo,
                                  class [mscorlib]System.Action`1<class SpaceCraft.Inventory> callback) cil managed
  {
    // Code size       141 (0x8d)
    .maxstack  3
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::wo
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      class [mscorlib]System.Action`1<class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::callback
    IL_0014:  ldarg.0
    IL_0015:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_001a:  brfalse.s  IL_005b

    IL_001c:  ldloc.0
    IL_001d:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::callback
    IL_0022:  dup
    IL_0023:  brtrue.s   IL_0027

    IL_0025:  pop
    IL_0026:  ret

    IL_0027:  ldloc.0
    IL_0028:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::wo
    IL_002d:  brfalse.s  IL_0054

    IL_002f:  ldloc.0
    IL_0030:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::wo
    IL_0035:  callvirt   instance int32 SpaceCraft.WorldObject::GetLinkedInventoryId()
    IL_003a:  brfalse.s  IL_0054

    IL_003c:  ldarg.0
    IL_003d:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_0042:  ldloc.0
    IL_0043:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::wo
    IL_0048:  callvirt   instance int32 SpaceCraft.WorldObject::GetLinkedInventoryId()
    IL_004d:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory>::get_Item(!0)
    IL_0052:  br.s       IL_0055

    IL_0054:  ldnull
    IL_0055:  callvirt   instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::Invoke(!0)
    IL_005a:  ret

    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>> SpaceCraft.InventoriesHandler::_callbackQueue
    IL_0061:  ldloc.0
    IL_0062:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::'<GetWorldObjectInventory>b__0'(class SpaceCraft.Inventory)
    IL_0068:  newobj     instance void class [mscorlib]System.Action`1<class SpaceCraft.Inventory>::.ctor(object,
                                                                                                          native int)
    IL_006d:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>>::Enqueue(!0)
    IL_0072:  ldarg.0
    IL_0073:  ldloc.0
    IL_0074:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass18_0'::wo
    IL_0079:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_007e:  ldloca.s   V_1
    IL_0080:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0086:  ldloc.1
    IL_0087:  call       instance void SpaceCraft.InventoriesHandler::GetOrCreateNewInventoryFromWoIDServerRpc(int32,
                                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_008c:  ret
  } // end of method InventoriesHandler::GetWorldObjectInventory

  .method public hidebysig instance void 
          DestroyInventory(int32 inventoryId,
                           bool destroyGameObject) cil managed
  {
    // Code size       65 (0x41)
    .maxstack  3
    .locals init (class SpaceCraft.Inventory V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory>::TryGetValue(!0,
                                                                                                                                              !1&)
    IL_000e:  brfalse.s  IL_0040

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory>::Remove(!0)
    IL_001c:  pop
    IL_001d:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0028:  ldarg.2
    IL_0029:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjects(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>,
                                                                                           bool)
    IL_002e:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.LogisticManager>()
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance void SpaceCraft.LogisticManager::RemoveInventoryFromLogistics(class SpaceCraft.Inventory)
    IL_0039:  ldarg.0
    IL_003a:  ldarg.1
    IL_003b:  call       instance void SpaceCraft.InventoriesHandler::CloseInventoryOnWatchers(int32)
    IL_0040:  ret
  } // end of method InventoriesHandler::DestroyInventory

  .method private hidebysig instance int32 
          GetBiggestInventoryId() cil managed
  {
    // Code size       98 (0x62)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.Inventory> V_1,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.Inventory> V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_0008:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory>::GetEnumerator()
    IL_000d:  stloc.1
    .try
    {
      IL_000e:  br.s       IL_0047

      IL_0010:  ldloca.s   V_1
      IL_0012:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.Inventory>::get_Current()
      IL_0017:  stloc.2
      IL_0018:  ldloca.s   V_2
      IL_001a:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.Inventory>::get_Value()
      IL_001f:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
      IL_0024:  ldc.i4     0x98967f
      IL_0029:  bge.s      IL_0047

      IL_002b:  ldloca.s   V_2
      IL_002d:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.Inventory>::get_Value()
      IL_0032:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
      IL_0037:  ldloc.0
      IL_0038:  ble.s      IL_0047

      IL_003a:  ldloca.s   V_2
      IL_003c:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.Inventory>::get_Value()
      IL_0041:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
      IL_0046:  stloc.0
      IL_0047:  ldloca.s   V_1
      IL_0049:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.Inventory>::MoveNext()
      IL_004e:  brtrue.s   IL_0010

      IL_0050:  leave.s    IL_0060

    }  // end .try
    finally
    {
      IL_0052:  ldloca.s   V_1
      IL_0054:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.Inventory>
      IL_005a:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_005f:  endfinally
    }  // end handler
    IL_0060:  ldloc.0
    IL_0061:  ret
  } // end of method InventoriesHandler::GetBiggestInventoryId

  .method public hidebysig instance void 
          RemoveFromInventoryWhenDeleted(class SpaceCraft.WorldObject worldObject) cil managed
  {
    // Code size       86 (0x56)
    .maxstack  5
    .locals init (valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.Inventory> V_0,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.Inventory> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_003c

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.Inventory>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldloca.s   V_1
      IL_0018:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.Inventory>::get_Value()
      IL_001d:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
      IL_0022:  ldarg.1
      IL_0023:  callvirt   instance bool class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::Contains(!0)
      IL_0028:  brfalse.s  IL_003c

      IL_002a:  ldarg.0
      IL_002b:  ldarg.1
      IL_002c:  ldloca.s   V_1
      IL_002e:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class SpaceCraft.Inventory>::get_Value()
      IL_0033:  ldc.i4.0
      IL_0034:  ldnull
      IL_0035:  call       instance void SpaceCraft.InventoriesHandler::RemoveItemFromInventory(class SpaceCraft.WorldObject,
                                                                                                class SpaceCraft.Inventory,
                                                                                                bool,
                                                                                                class [mscorlib]System.Action`1<bool>)
      IL_003a:  leave.s    IL_0055

      IL_003c:  ldloca.s   V_0
      IL_003e:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.Inventory>::MoveNext()
      IL_0043:  brtrue.s   IL_000e

      IL_0045:  leave.s    IL_0055

    }  // end .try
    finally
    {
      IL_0047:  ldloca.s   V_0
      IL_0049:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<int32,class SpaceCraft.Inventory>
      IL_004f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0054:  endfinally
    }  // end handler
    IL_0055:  ret
  } // end of method InventoriesHandler::RemoveFromInventoryWhenDeleted

  .method private hidebysig instance void 
          TransferItemServerRpc(int32 fromInventoryId,
                                int32 toInventoryId,
                                int32 worldObjectId,
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
    // Code size       383 (0x17f)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             class SpaceCraft.Inventory V_1,
             class SpaceCraft.WorldObject V_2,
             bool V_3,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_6)
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
    IL_003c:  brfalse    IL_00c4

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xd3af1342
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_6
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_6
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_6
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_5
    IL_007b:  ldloc      V_5
    IL_007f:  ldarg      fromInventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_5
    IL_008c:  ldarg      toInventoryId
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloc      V_5
    IL_0099:  ldarg      worldObjectId
    IL_009d:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00a2:  nop
    IL_00a3:  ldarg.0
    IL_00a4:  ldloca     V_5
    IL_00a8:  ldc.i4     0xd3af1342
    IL_00ad:  ldarg      rpcParams
    IL_00b1:  ldloc      V_6
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
    IL_00e6:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00eb:  stloc.0
    IL_00ec:  ldarg.0
    IL_00ed:  ldarg.2
    IL_00ee:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00f3:  stloc.1
    IL_00f4:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_00f9:  ldarg.3
    IL_00fa:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_00ff:  stloc.2
    IL_0100:  ldc.i4.0
    IL_0101:  stloc.3
    IL_0102:  ldloc.0
    IL_0103:  brfalse.s  IL_0135

    IL_0105:  ldloc.1
    IL_0106:  brfalse.s  IL_0135

    IL_0108:  ldloc.2
    IL_0109:  brfalse.s  IL_0135

    IL_010b:  ldloc.2
    IL_010c:  callvirt   instance bool SpaceCraft.WorldObject::GetIsLockedInInventory()
    IL_0111:  brtrue.s   IL_0135

    IL_0113:  ldloc.0
    IL_0114:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0119:  ldloc.2
    IL_011a:  callvirt   instance bool class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::Contains(!0)
    IL_011f:  brfalse.s  IL_0135

    IL_0121:  ldloc.1
    IL_0122:  ldloc.2
    IL_0123:  ldc.i4.1
    IL_0124:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                     bool)
    IL_0129:  stloc.3
    IL_012a:  ldloc.3
    IL_012b:  brfalse.s  IL_0135

    IL_012d:  ldloc.0
    IL_012e:  ldloc.2
    IL_012f:  callvirt   instance bool SpaceCraft.Inventory::RemoveItem(class SpaceCraft.WorldObject)
    IL_0134:  pop
    IL_0135:  ldloc.3
    IL_0136:  brfalse.s  IL_0170

    IL_0138:  ldloc.0
    IL_0139:  ldloc.2
    IL_013a:  ldc.i4.0
    IL_013b:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                   bool)
    IL_0140:  ldloc.1
    IL_0141:  ldloc.2
    IL_0142:  ldc.i4.1
    IL_0143:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                   bool)
    IL_0148:  ldarg.0
    IL_0149:  ldarg.1
    IL_014a:  ldarg.s    rpcParams
    IL_014c:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_0151:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_0156:  ldc.i4.0
    IL_0157:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_015c:  ldarg.0
    IL_015d:  ldarg.2
    IL_015e:  ldarg.s    rpcParams
    IL_0160:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_0165:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_016a:  ldc.i4.0
    IL_016b:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_0170:  ldarg.0
    IL_0171:  ldloc.3
    IL_0172:  ldarg.s    rpcParams
    IL_0174:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0179:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_017e:  ret
  } // end of method InventoriesHandler::TransferItemServerRpc

  .method public hidebysig instance void 
          TransferItem(class SpaceCraft.Inventory fromInventory,
                       class SpaceCraft.Inventory toInventory,
                       class SpaceCraft.WorldObject item,
                       [opt] class [mscorlib]System.Action`1<bool> result) cil managed
  {
    .param [4] = nullref
    // Code size       159 (0x9f)
    .maxstack  5
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::fromInventory
    IL_0014:  ldloc.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::item
    IL_001b:  ldloc.0
    IL_001c:  ldarg.2
    IL_001d:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::toInventory
    IL_0022:  ldloc.0
    IL_0023:  ldarg.s    result
    IL_0025:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::result
    IL_002a:  ldarg.0
    IL_002b:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0030:  brtrue.s   IL_0057

    IL_0032:  ldloc.0
    IL_0033:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::toInventory
    IL_0038:  ldloc.0
    IL_0039:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::item
    IL_003e:  callvirt   instance bool SpaceCraft.Inventory::GetIsAuthorized(class SpaceCraft.WorldObject)
    IL_0043:  brtrue.s   IL_0057

    IL_0045:  ldloc.0
    IL_0046:  ldfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::result
    IL_004b:  dup
    IL_004c:  brtrue.s   IL_0050

    IL_004e:  pop
    IL_004f:  ret

    IL_0050:  ldc.i4.0
    IL_0051:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
    IL_0056:  ret

    IL_0057:  ldarg.0
    IL_0058:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_005d:  ldloc.0
    IL_005e:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::'<TransferItem>b__0'(bool)
    IL_0064:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_0069:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_006e:  ldarg.0
    IL_006f:  ldloc.0
    IL_0070:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::fromInventory
    IL_0075:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_007a:  ldloc.0
    IL_007b:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::toInventory
    IL_0080:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0085:  ldloc.0
    IL_0086:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass23_0'::item
    IL_008b:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0090:  ldloca.s   V_1
    IL_0092:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0098:  ldloc.1
    IL_0099:  call       instance void SpaceCraft.InventoriesHandler::TransferItemServerRpc(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_009e:  ret
  } // end of method InventoriesHandler::TransferItem

  .method private hidebysig instance void 
          TransferAllSameGroupServerRpc(int32 fromInventoryId,
                                        int32 toInventoryId,
                                        int32 groupHash,
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
    // Code size       455 (0x1c7)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             class SpaceCraft.Inventory V_1,
             bool V_2,
             class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_3,
             int32 V_4,
             class SpaceCraft.WorldObject V_5,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_6,
             class SpaceCraft.WorldObject V_7,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_10)
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
    IL_003c:  brfalse    IL_00c4

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xd73e6350
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_10
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_10
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_10
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_9
    IL_007b:  ldloc      V_9
    IL_007f:  ldarg      fromInventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_9
    IL_008c:  ldarg      toInventoryId
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloc      V_9
    IL_0099:  ldarg      groupHash
    IL_009d:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00a2:  nop
    IL_00a3:  ldarg.0
    IL_00a4:  ldloca     V_9
    IL_00a8:  ldc.i4     0xd73e6350
    IL_00ad:  ldarg      rpcParams
    IL_00b1:  ldloc      V_10
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
    IL_00e6:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00eb:  stloc.0
    IL_00ec:  ldarg.0
    IL_00ed:  ldarg.2
    IL_00ee:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00f3:  stloc.1
    IL_00f4:  ldc.i4.0
    IL_00f5:  stloc.2
    IL_00f6:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_00fb:  stloc.3
    IL_00fc:  ldloc.0
    IL_00fd:  brfalse.s  IL_0163

    IL_00ff:  ldloc.1
    IL_0100:  brfalse.s  IL_0163

    IL_0102:  ldloc.0
    IL_0103:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0108:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Count()
    IL_010d:  ldc.i4.1
    IL_010e:  sub
    IL_010f:  stloc.s    V_4
    IL_0111:  br.s       IL_015e

    IL_0113:  ldloc.0
    IL_0114:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0119:  ldloc.s    V_4
    IL_011b:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Item(int32)
    IL_0120:  stloc.s    V_5
    IL_0122:  ldloc.s    V_5
    IL_0124:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0129:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_012e:  ldarg.3
    IL_012f:  bne.un.s   IL_0158

    IL_0131:  ldloc.s    V_5
    IL_0133:  callvirt   instance bool SpaceCraft.WorldObject::GetIsLockedInInventory()
    IL_0138:  brtrue.s   IL_0158

    IL_013a:  ldloc.1
    IL_013b:  ldloc.s    V_5
    IL_013d:  ldc.i4.1
    IL_013e:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                     bool)
    IL_0143:  brfalse.s  IL_0158

    IL_0145:  ldloc.3
    IL_0146:  ldloc.s    V_5
    IL_0148:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
    IL_014d:  ldloc.0
    IL_014e:  ldloc.s    V_5
    IL_0150:  callvirt   instance bool SpaceCraft.Inventory::RemoveItem(class SpaceCraft.WorldObject)
    IL_0155:  pop
    IL_0156:  ldc.i4.1
    IL_0157:  stloc.2
    IL_0158:  ldloc.s    V_4
    IL_015a:  ldc.i4.1
    IL_015b:  sub
    IL_015c:  stloc.s    V_4
    IL_015e:  ldloc.s    V_4
    IL_0160:  ldc.i4.m1
    IL_0161:  bgt.s      IL_0113

    IL_0163:  ldloc.2
    IL_0164:  brfalse.s  IL_01b8

    IL_0166:  ldloc.3
    IL_0167:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_016c:  stloc.s    V_6
    .try
    {
      IL_016e:  br.s       IL_018b

      IL_0170:  ldloca.s   V_6
      IL_0172:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_0177:  stloc.s    V_7
      IL_0179:  ldloc.0
      IL_017a:  ldloc.s    V_7
      IL_017c:  ldc.i4.0
      IL_017d:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0182:  ldloc.1
      IL_0183:  ldloc.s    V_7
      IL_0185:  ldc.i4.1
      IL_0186:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_018b:  ldloca.s   V_6
      IL_018d:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_0192:  brtrue.s   IL_0170

      IL_0194:  leave.s    IL_01a4

    }  // end .try
    finally
    {
      IL_0196:  ldloca.s   V_6
      IL_0198:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_019e:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_01a3:  endfinally
    }  // end handler
    IL_01a4:  ldarg.0
    IL_01a5:  ldarg.1
    IL_01a6:  ldc.i4.0
    IL_01a7:  conv.i8
    IL_01a8:  ldc.i4.1
    IL_01a9:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_01ae:  ldarg.0
    IL_01af:  ldarg.2
    IL_01b0:  ldc.i4.0
    IL_01b1:  conv.i8
    IL_01b2:  ldc.i4.1
    IL_01b3:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_01b8:  ldarg.0
    IL_01b9:  ldloc.2
    IL_01ba:  ldarg.s    rpcParams
    IL_01bc:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01c1:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01c6:  ret
  } // end of method InventoriesHandler::TransferAllSameGroupServerRpc

  .method public hidebysig instance void 
          TransferAllSameGroup(class SpaceCraft.Inventory fromInventory,
                               class SpaceCraft.Inventory toInventory,
                               class SpaceCraft.Group group) cil managed
  {
    // Code size       46 (0x2e)
    .maxstack  5
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0006:  ldnull
    IL_0007:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0013:  ldarg.2
    IL_0014:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0019:  ldarg.3
    IL_001a:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_001f:  ldloca.s   V_0
    IL_0021:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0027:  ldloc.0
    IL_0028:  call       instance void SpaceCraft.InventoriesHandler::TransferAllSameGroupServerRpc(int32,
                                                                                                    int32,
                                                                                                    int32,
                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_002d:  ret
  } // end of method InventoriesHandler::TransferAllSameGroup

  .method private hidebysig instance void 
          TransferAllItemsServerRpc(int32 fromInventoryId,
                                    int32 toInventoryId,
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
    .param [3] = nullref
    // Code size       431 (0x1af)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             class SpaceCraft.Inventory V_1,
             bool V_2,
             class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_3,
             int32 V_4,
             class SpaceCraft.WorldObject V_5,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_6,
             class SpaceCraft.WorldObject V_7,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_10)
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
    IL_003c:  brfalse    IL_00b7

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x831abc8
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_10
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_10
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_10
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_9
    IL_007b:  ldloc      V_9
    IL_007f:  ldarg      fromInventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_9
    IL_008c:  ldarg      toInventoryId
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  nop
    IL_0096:  ldarg.0
    IL_0097:  ldloca     V_9
    IL_009b:  ldc.i4     0x831abc8
    IL_00a0:  ldarg      rpcParams
    IL_00a4:  ldloc      V_10
    IL_00a8:  ldc.i4     0x2
    IL_00ad:  ldc.i4     0x0
    IL_00b2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00b7:  nop
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00be:  ldc.i4     0x1
    IL_00c3:  ceq
    IL_00c5:  brtrue     IL_00cb

    IL_00ca:  ret

    IL_00cb:  nop
    IL_00cc:  ldarg.0
    IL_00cd:  ldc.i4     0x0
    IL_00d2:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00d7:  ldarg.0
    IL_00d8:  ldarg.1
    IL_00d9:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00de:  stloc.0
    IL_00df:  ldarg.0
    IL_00e0:  ldarg.2
    IL_00e1:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00e6:  stloc.1
    IL_00e7:  ldc.i4.0
    IL_00e8:  stloc.2
    IL_00e9:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor()
    IL_00ee:  stloc.3
    IL_00ef:  ldloc.0
    IL_00f0:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_00f5:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Count()
    IL_00fa:  ldc.i4.1
    IL_00fb:  sub
    IL_00fc:  stloc.s    V_4
    IL_00fe:  br.s       IL_0147

    IL_0100:  ldloc.0
    IL_0101:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0106:  ldloc.s    V_4
    IL_0108:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Item(int32)
    IL_010d:  callvirt   instance bool SpaceCraft.WorldObject::GetIsLockedInInventory()
    IL_0112:  brtrue.s   IL_0141

    IL_0114:  ldloc.0
    IL_0115:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_011a:  ldloc.s    V_4
    IL_011c:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Item(int32)
    IL_0121:  stloc.s    V_5
    IL_0123:  ldloc.1
    IL_0124:  ldloc.s    V_5
    IL_0126:  ldc.i4.1
    IL_0127:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                     bool)
    IL_012c:  brfalse.s  IL_0141

    IL_012e:  ldloc.3
    IL_012f:  ldloc.s    V_5
    IL_0131:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
    IL_0136:  ldloc.0
    IL_0137:  ldloc.s    V_5
    IL_0139:  callvirt   instance bool SpaceCraft.Inventory::RemoveItem(class SpaceCraft.WorldObject)
    IL_013e:  pop
    IL_013f:  ldc.i4.1
    IL_0140:  stloc.2
    IL_0141:  ldloc.s    V_4
    IL_0143:  ldc.i4.1
    IL_0144:  sub
    IL_0145:  stloc.s    V_4
    IL_0147:  ldloc.s    V_4
    IL_0149:  ldc.i4.m1
    IL_014a:  bgt.s      IL_0100

    IL_014c:  ldloc.2
    IL_014d:  brfalse.s  IL_01a1

    IL_014f:  ldloc.3
    IL_0150:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0155:  stloc.s    V_6
    .try
    {
      IL_0157:  br.s       IL_0174

      IL_0159:  ldloca.s   V_6
      IL_015b:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_0160:  stloc.s    V_7
      IL_0162:  ldloc.0
      IL_0163:  ldloc.s    V_7
      IL_0165:  ldc.i4.0
      IL_0166:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_016b:  ldloc.1
      IL_016c:  ldloc.s    V_7
      IL_016e:  ldc.i4.1
      IL_016f:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0174:  ldloca.s   V_6
      IL_0176:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_017b:  brtrue.s   IL_0159

      IL_017d:  leave.s    IL_018d

    }  // end .try
    finally
    {
      IL_017f:  ldloca.s   V_6
      IL_0181:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_0187:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_018c:  endfinally
    }  // end handler
    IL_018d:  ldarg.0
    IL_018e:  ldarg.1
    IL_018f:  ldc.i4.0
    IL_0190:  conv.i8
    IL_0191:  ldc.i4.1
    IL_0192:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_0197:  ldarg.0
    IL_0198:  ldarg.2
    IL_0199:  ldc.i4.0
    IL_019a:  conv.i8
    IL_019b:  ldc.i4.1
    IL_019c:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_01a1:  ldarg.0
    IL_01a2:  ldloc.2
    IL_01a3:  ldarg.3
    IL_01a4:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01a9:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01ae:  ret
  } // end of method InventoriesHandler::TransferAllItemsServerRpc

  .method public hidebysig instance void 
          TransferAllItems(class SpaceCraft.Inventory fromInventory,
                           class SpaceCraft.Inventory toInventory) cil managed
  {
    // Code size       40 (0x28)
    .maxstack  4
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0006:  ldnull
    IL_0007:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0013:  ldarg.2
    IL_0014:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0019:  ldloca.s   V_0
    IL_001b:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0021:  ldloc.0
    IL_0022:  call       instance void SpaceCraft.InventoriesHandler::TransferAllItemsServerRpc(int32,
                                                                                                int32,
                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0027:  ret
  } // end of method InventoriesHandler::TransferAllItems

  .method private hidebysig instance void 
          AddOrRemoveItemClientRpc(bool result,
                                   [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [2] = nullref
    // Code size       253 (0xfd)
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
    IL_005f:  ldc.i4     0xd7894ca8
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
    IL_0097:  ldc.i4     0xd7894ca8
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
    IL_00e7:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_00ec:  callvirt   instance !0 class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Dequeue()
    IL_00f1:  dup
    IL_00f2:  brtrue.s   IL_00f6

    IL_00f4:  pop
    IL_00f5:  ret

    IL_00f6:  ldarg.1
    IL_00f7:  callvirt   instance void class [mscorlib]System.Action`1<bool>::Invoke(!0)
    IL_00fc:  ret
  } // end of method InventoriesHandler::AddOrRemoveItemClientRpc

  .method private hidebysig instance void 
          AddNewItemClientRpc(bool result,
                              int32 worldObjectId,
                              [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [3] = nullref
    // Code size       267 (0x10b)
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
    IL_003c:  brfalse    IL_00b7

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_00b7

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x5d5f03b5
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
    IL_0091:  ldloc      V_1
    IL_0095:  ldarg      worldObjectId
    IL_0099:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_009e:  nop
    IL_009f:  ldarg.0
    IL_00a0:  ldloca     V_1
    IL_00a4:  ldc.i4     0x5d5f03b5
    IL_00a9:  ldarg      clientRpcParams
    IL_00ad:  ldc.i4     0x0
    IL_00b2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00b7:  nop
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00be:  ldc.i4     0x1
    IL_00c3:  ceq
    IL_00c5:  brfalse    IL_00e6

    IL_00ca:  ldloc      V_0
    IL_00ce:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_00d3:  brtrue     IL_00e7

    IL_00d8:  ldloc      V_0
    IL_00dc:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_00e1:  brtrue     IL_00e7

    IL_00e6:  ret

    IL_00e7:  nop
    IL_00e8:  ldarg.0
    IL_00e9:  ldc.i4     0x0
    IL_00ee:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`2<bool,int32>> SpaceCraft.InventoriesHandler::_callbackAddNewQueue
    IL_00f9:  callvirt   instance !0 class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`2<bool,int32>>::Dequeue()
    IL_00fe:  dup
    IL_00ff:  brtrue.s   IL_0103

    IL_0101:  pop
    IL_0102:  ret

    IL_0103:  ldarg.1
    IL_0104:  ldarg.2
    IL_0105:  callvirt   instance void class [mscorlib]System.Action`2<bool,int32>::Invoke(!0,
                                                                                           !1)
    IL_010a:  ret
  } // end of method InventoriesHandler::AddNewItemClientRpc

  .method public hidebysig instance void 
          AddItemToInventory(class SpaceCraft.Group group,
                             class SpaceCraft.Inventory inventory,
                             [opt] class [mscorlib]System.Action`2<bool,int32> result) cil managed
  {
    .param [3] = nullref
    // Code size       58 (0x3a)
    .maxstack  4
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brfalse.s  IL_0030

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`2<bool,int32>> SpaceCraft.InventoriesHandler::_callbackAddNewQueue
    IL_000e:  ldarg.3
    IL_000f:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`2<bool,int32>>::Enqueue(!0)
    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_001b:  ldarg.2
    IL_001c:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0021:  ldloca.s   V_0
    IL_0023:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0029:  ldloc.0
    IL_002a:  call       instance void SpaceCraft.InventoriesHandler::AddNewItemToInventoryServerRpc(int32,
                                                                                                     int32,
                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_002f:  ret

    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  ldarg.2
    IL_0033:  ldarg.3
    IL_0034:  call       instance void SpaceCraft.InventoriesHandler::AddItemToInventoryFromClient(class SpaceCraft.Group,
                                                                                                   class SpaceCraft.Inventory,
                                                                                                   class [mscorlib]System.Action`2<bool,int32>)
    IL_0039:  ret
  } // end of method InventoriesHandler::AddItemToInventory

  .method private hidebysig instance void 
          AddItemToInventoryFromClient(class SpaceCraft.Group group,
                                       class SpaceCraft.Inventory inventory,
                                       class [mscorlib]System.Action`2<bool,int32> result) cil managed
  {
    // Code size       88 (0x58)
    .maxstack  4
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class SpaceCraft.Group SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::group
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::inventory
    IL_0014:  ldloc.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      class [mscorlib]System.Action`2<bool,int32> SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::result
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`2<bool,int32>> SpaceCraft.InventoriesHandler::_callbackAddNewQueue
    IL_0021:  ldloc.0
    IL_0022:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::'<AddItemToInventoryFromClient>b__0'(bool,
                                                                                                                                   int32)
    IL_0028:  newobj     instance void class [mscorlib]System.Action`2<bool,int32>::.ctor(object,
                                                                                          native int)
    IL_002d:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`2<bool,int32>>::Enqueue(!0)
    IL_0032:  ldarg.0
    IL_0033:  ldloc.0
    IL_0034:  ldfld      class SpaceCraft.Group SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::group
    IL_0039:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_003e:  ldloc.0
    IL_003f:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass31_0'::inventory
    IL_0044:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0049:  ldloca.s   V_1
    IL_004b:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0051:  ldloc.1
    IL_0052:  call       instance void SpaceCraft.InventoriesHandler::AddNewItemToInventoryServerRpc(int32,
                                                                                                     int32,
                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0057:  ret
  } // end of method InventoriesHandler::AddItemToInventoryFromClient

  .method public hidebysig instance void 
          AddItemToInventory(class SpaceCraft.WorldObject worldObject,
                             class SpaceCraft.Inventory inventory,
                             [opt] bool resetPositionAndRotation,
                             [opt] class [mscorlib]System.Action`1<bool> result) cil managed
  {
    .param [3] = bool(true)
    .param [4] = nullref
    // Code size       62 (0x3e)
    .maxstack  5
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brfalse.s  IL_0032

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_000e:  ldarg.s    result
    IL_0010:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_001c:  ldarg.2
    IL_001d:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0022:  ldarg.3
    IL_0023:  ldloca.s   V_0
    IL_0025:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_002b:  ldloc.0
    IL_002c:  call       instance void SpaceCraft.InventoriesHandler::AddExistingItemToInventoryServerRpc(int32,
                                                                                                          int32,
                                                                                                          bool,
                                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0031:  ret

    IL_0032:  ldarg.0
    IL_0033:  ldarg.1
    IL_0034:  ldarg.2
    IL_0035:  ldarg.3
    IL_0036:  ldarg.s    result
    IL_0038:  call       instance void SpaceCraft.InventoriesHandler::AddItemToInventoryFromClient(class SpaceCraft.WorldObject,
                                                                                                   class SpaceCraft.Inventory,
                                                                                                   bool,
                                                                                                   class [mscorlib]System.Action`1<bool>)
    IL_003d:  ret
  } // end of method InventoriesHandler::AddItemToInventory

  .method private hidebysig instance void 
          AddItemToInventoryFromClient(class SpaceCraft.WorldObject worldObject,
                                       class SpaceCraft.Inventory inventory,
                                       bool resetPositionAndRotation,
                                       class [mscorlib]System.Action`1<bool> result) cil managed
  {
    // Code size       90 (0x5a)
    .maxstack  5
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::inventory
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::worldObject
    IL_0014:  ldloc.0
    IL_0015:  ldarg.s    result
    IL_0017:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::result
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0022:  ldloc.0
    IL_0023:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::'<AddItemToInventoryFromClient>b__0'(bool)
    IL_0029:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_002e:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_0033:  ldarg.0
    IL_0034:  ldloc.0
    IL_0035:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::worldObject
    IL_003a:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_003f:  ldloc.0
    IL_0040:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass33_0'::inventory
    IL_0045:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_004a:  ldarg.3
    IL_004b:  ldloca.s   V_1
    IL_004d:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0053:  ldloc.1
    IL_0054:  call       instance void SpaceCraft.InventoriesHandler::AddExistingItemToInventoryServerRpc(int32,
                                                                                                          int32,
                                                                                                          bool,
                                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0059:  ret
  } // end of method InventoriesHandler::AddItemToInventoryFromClient

  .method public hidebysig instance void 
          AddItemToInventory(class SpaceCraft.WorldObject worldObject,
                             int32 inventoryId,
                             [opt] bool resetPositionAndRotation,
                             [opt] class [mscorlib]System.Action`1<bool> result) cil managed
  {
    .param [3] = bool(true)
    .param [4] = nullref
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  ldarg.2
    IL_0004:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_0009:  ldarg.3
    IL_000a:  ldarg.s    result
    IL_000c:  call       instance void SpaceCraft.InventoriesHandler::AddItemToInventory(class SpaceCraft.WorldObject,
                                                                                         class SpaceCraft.Inventory,
                                                                                         bool,
                                                                                         class [mscorlib]System.Action`1<bool>)
    IL_0011:  ret
  } // end of method InventoriesHandler::AddItemToInventory

  .method private hidebysig instance void 
          AddNewItemToInventoryServerRpc(int32 groupHash,
                                         int32 inventoryId,
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
    .param [3] = nullref
    // Code size       327 (0x147)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             int32 V_1,
             bool V_2,
             class SpaceCraft.WorldObject V_3,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_6)
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
    IL_003c:  brfalse    IL_00b7

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xbd0ddc3b
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_6
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_6
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_6
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_5
    IL_007b:  ldloc      V_5
    IL_007f:  ldarg      groupHash
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_5
    IL_008c:  ldarg      inventoryId
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  nop
    IL_0096:  ldarg.0
    IL_0097:  ldloca     V_5
    IL_009b:  ldc.i4     0xbd0ddc3b
    IL_00a0:  ldarg      rpcParams
    IL_00a4:  ldloc      V_6
    IL_00a8:  ldc.i4     0x2
    IL_00ad:  ldc.i4     0x0
    IL_00b2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00b7:  nop
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00be:  ldc.i4     0x1
    IL_00c3:  ceq
    IL_00c5:  brtrue     IL_00cb

    IL_00ca:  ret

    IL_00cb:  nop
    IL_00cc:  ldarg.0
    IL_00cd:  ldc.i4     0x0
    IL_00d2:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00d7:  ldarg.0
    IL_00d8:  ldarg.2
    IL_00d9:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00de:  stloc.0
    IL_00df:  ldc.i4.0
    IL_00e0:  stloc.1
    IL_00e1:  ldc.i4.0
    IL_00e2:  stloc.2
    IL_00e3:  ldloc.0
    IL_00e4:  brfalse.s  IL_010a

    IL_00e6:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_00eb:  ldarg.1
    IL_00ec:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_00f1:  ldc.i4.0
    IL_00f2:  ldnull
    IL_00f3:  ldc.i4.1
    IL_00f4:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_00f9:  stloc.3
    IL_00fa:  ldloc.3
    IL_00fb:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0100:  stloc.1
    IL_0101:  ldloc.0
    IL_0102:  ldloc.3
    IL_0103:  ldc.i4.1
    IL_0104:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                     bool)
    IL_0109:  stloc.2
    IL_010a:  ldloc.2
    IL_010b:  brfalse.s  IL_0138

    IL_010d:  ldloc.0
    IL_010e:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0113:  ldloc.1
    IL_0114:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0119:  ldc.i4.1
    IL_011a:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                   bool)
    IL_011f:  ldloc.0
    IL_0120:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
    IL_0125:  ldarg.0
    IL_0126:  ldarg.2
    IL_0127:  ldarg.3
    IL_0128:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_012d:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_0132:  ldc.i4.0
    IL_0133:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_0138:  ldarg.0
    IL_0139:  ldloc.2
    IL_013a:  ldloc.1
    IL_013b:  ldarg.3
    IL_013c:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0141:  call       instance void SpaceCraft.InventoriesHandler::AddNewItemClientRpc(bool,
                                                                                          int32,
                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0146:  ret
  } // end of method InventoriesHandler::AddNewItemToInventoryServerRpc

  .method private hidebysig instance void 
          AddExistingItemToInventoryServerRpc(int32 worldObjectId,
                                              int32 inventoryId,
                                              bool resetPositionAndRotation,
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
    // Code size       331 (0x14b)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             class SpaceCraft.WorldObject V_1,
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
    IL_0043:  ldc.i4     0xb9188df1
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
    IL_008c:  ldarg      inventoryId
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloca     V_4
    IL_0099:  ldarga     resetPositionAndRotation
    IL_009d:  ldloca     V_6
    IL_00a1:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a7:  ldloc      V_6
    IL_00ab:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b0:  nop
    IL_00b1:  ldarg.0
    IL_00b2:  ldloca     V_4
    IL_00b6:  ldc.i4     0xb9188df1
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
    IL_00f3:  ldarg.2
    IL_00f4:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00f9:  stloc.0
    IL_00fa:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_00ff:  ldarg.1
    IL_0100:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0105:  stloc.1
    IL_0106:  ldc.i4.0
    IL_0107:  stloc.2
    IL_0108:  ldloc.0
    IL_0109:  brfalse.s  IL_0117

    IL_010b:  ldloc.1
    IL_010c:  brfalse.s  IL_0117

    IL_010e:  ldloc.0
    IL_010f:  ldloc.1
    IL_0110:  ldarg.3
    IL_0111:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                     bool)
    IL_0116:  stloc.2
    IL_0117:  ldloc.2
    IL_0118:  brfalse.s  IL_013c

    IL_011a:  ldloc.0
    IL_011b:  ldloc.1
    IL_011c:  ldc.i4.1
    IL_011d:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                   bool)
    IL_0122:  ldloc.0
    IL_0123:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
    IL_0128:  ldarg.0
    IL_0129:  ldarg.2
    IL_012a:  ldarg.s    rpcParams
    IL_012c:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_0131:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_0136:  ldc.i4.0
    IL_0137:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_013c:  ldarg.0
    IL_013d:  ldloc.2
    IL_013e:  ldarg.s    rpcParams
    IL_0140:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0145:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_014a:  ret
  } // end of method InventoriesHandler::AddExistingItemToInventoryServerRpc

  .method public hidebysig instance void 
          RemoveItemFromInventory(class SpaceCraft.WorldObject worldObject,
                                  class SpaceCraft.Inventory inventory,
                                  [opt] bool destroy,
                                  [opt] class [mscorlib]System.Action`1<bool> result) cil managed
  {
    .param [3] = bool(false)
    .param [4] = nullref
    // Code size       88 (0x58)
    .maxstack  5
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_0005:  ldnull
    IL_0006:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_000b:  brtrue.s   IL_0019

    IL_000d:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_0012:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsListening()
    IL_0017:  brtrue.s   IL_001a

    IL_0019:  ret

    IL_001a:  ldarg.0
    IL_001b:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0020:  brfalse.s  IL_004c

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0028:  ldarg.s    result
    IL_002a:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_0036:  ldarg.2
    IL_0037:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_003c:  ldarg.3
    IL_003d:  ldloca.s   V_0
    IL_003f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0045:  ldloc.0
    IL_0046:  call       instance void SpaceCraft.InventoriesHandler::RemoveItemFromInventoryServerRpc(int32,
                                                                                                       int32,
                                                                                                       bool,
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_004b:  ret

    IL_004c:  ldarg.0
    IL_004d:  ldarg.1
    IL_004e:  ldarg.2
    IL_004f:  ldarg.3
    IL_0050:  ldarg.s    result
    IL_0052:  call       instance void SpaceCraft.InventoriesHandler::RemoveItemFromInventoryFromClient(class SpaceCraft.WorldObject,
                                                                                                        class SpaceCraft.Inventory,
                                                                                                        bool,
                                                                                                        class [mscorlib]System.Action`1<bool>)
    IL_0057:  ret
  } // end of method InventoriesHandler::RemoveItemFromInventory

  .method private hidebysig instance void 
          RemoveItemFromInventoryFromClient(class SpaceCraft.WorldObject worldObject,
                                            class SpaceCraft.Inventory inventory,
                                            bool destroy,
                                            class [mscorlib]System.Action`1<bool> result) cil managed
  {
    // Code size       90 (0x5a)
    .maxstack  5
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::inventory
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::worldObject
    IL_0014:  ldloc.0
    IL_0015:  ldarg.s    result
    IL_0017:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::result
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0022:  ldloc.0
    IL_0023:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::'<RemoveItemFromInventoryFromClient>b__0'(bool)
    IL_0029:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_002e:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_0033:  ldarg.0
    IL_0034:  ldloc.0
    IL_0035:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::worldObject
    IL_003a:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_003f:  ldloc.0
    IL_0040:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass38_0'::inventory
    IL_0045:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_004a:  ldarg.3
    IL_004b:  ldloca.s   V_1
    IL_004d:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0053:  ldloc.1
    IL_0054:  call       instance void SpaceCraft.InventoriesHandler::RemoveItemFromInventoryServerRpc(int32,
                                                                                                       int32,
                                                                                                       bool,
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0059:  ret
  } // end of method InventoriesHandler::RemoveItemFromInventoryFromClient

  .method public hidebysig instance void 
          RemoveItemsFromInventory(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> groups,
                                   class SpaceCraft.Inventory inventory,
                                   [opt] bool destroy,
                                   [opt] bool displayInformation,
                                   [opt] class [mscorlib]System.Action`1<bool> result) cil managed
  {
    .param [3] = bool(false)
    .param [4] = bool(false)
    .param [5] = nullref
    // Code size       177 (0xb1)
    .maxstack  5
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0' V_0,
             int32[] V_1,
             int32 V_2,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group> V_3,
             class SpaceCraft.Group V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_5)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::inventory
    IL_0014:  ldloc.0
    IL_0015:  ldarg.1
    IL_0016:  stfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::groups
    IL_001b:  ldloc.0
    IL_001c:  ldarg.s    displayInformation
    IL_001e:  stfld      bool SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::displayInformation
    IL_0023:  ldloc.0
    IL_0024:  ldarg.s    result
    IL_0026:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::result
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0031:  ldloc.0
    IL_0032:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::'<RemoveItemsFromInventory>b__0'(bool)
    IL_0038:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_003d:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_0042:  ldloc.0
    IL_0043:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::groups
    IL_0048:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::get_Count()
    IL_004d:  newarr     [mscorlib]System.Int32
    IL_0052:  stloc.1
    IL_0053:  ldc.i4.0
    IL_0054:  stloc.2
    IL_0055:  ldloc.0
    IL_0056:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::groups
    IL_005b:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::GetEnumerator()
    IL_0060:  stloc.3
    .try
    {
      IL_0061:  br.s       IL_007a

      IL_0063:  ldloca.s   V_3
      IL_0065:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::get_Current()
      IL_006a:  stloc.s    V_4
      IL_006c:  ldloc.1
      IL_006d:  ldloc.2
      IL_006e:  dup
      IL_006f:  ldc.i4.1
      IL_0070:  add
      IL_0071:  stloc.2
      IL_0072:  ldloc.s    V_4
      IL_0074:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
      IL_0079:  stelem.i4
      IL_007a:  ldloca.s   V_3
      IL_007c:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>::MoveNext()
      IL_0081:  brtrue.s   IL_0063

      IL_0083:  leave.s    IL_0093

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_3
      IL_0087:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.Group>
      IL_008d:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0092:  endfinally
    }  // end handler
    IL_0093:  ldarg.0
    IL_0094:  ldloc.1
    IL_0095:  ldloc.0
    IL_0096:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass39_0'::inventory
    IL_009b:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_00a0:  ldarg.3
    IL_00a1:  ldloca.s   V_5
    IL_00a3:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_00a9:  ldloc.s    V_5
    IL_00ab:  call       instance void SpaceCraft.InventoriesHandler::RemoveItemsFromInventoryServerRpc(int32[],
                                                                                                        int32,
                                                                                                        bool,
                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00b0:  ret
  } // end of method InventoriesHandler::RemoveItemsFromInventory

  .method public hidebysig instance void 
          RemoveItemsFromInventory(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> worldObjects,
                                   class SpaceCraft.Inventory inventory,
                                   [opt] bool destroy,
                                   [opt] bool displayInformation,
                                   [opt] class [mscorlib]System.Action`1<bool> result) cil managed
  {
    .param [3] = bool(false)
    .param [4] = bool(false)
    .param [5] = nullref
    // Code size       171 (0xab)
    .maxstack  5
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0' V_0,
             int32[] V_1,
             int32 V_2,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_3,
             class SpaceCraft.WorldObject V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_5)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::inventory
    IL_0014:  ldloc.0
    IL_0015:  ldarg.1
    IL_0016:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::worldObjects
    IL_001b:  ldloc.0
    IL_001c:  ldarg.s    displayInformation
    IL_001e:  stfld      bool SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::displayInformation
    IL_0023:  ldloc.0
    IL_0024:  ldarg.s    result
    IL_0026:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::result
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0031:  ldloc.0
    IL_0032:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::'<RemoveItemsFromInventory>b__0'(bool)
    IL_0038:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_003d:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_0042:  ldloc.0
    IL_0043:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::worldObjects
    IL_0048:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Count()
    IL_004d:  newarr     [mscorlib]System.Int32
    IL_0052:  stloc.1
    IL_0053:  ldc.i4.0
    IL_0054:  stloc.2
    IL_0055:  ldloc.0
    IL_0056:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::worldObjects
    IL_005b:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0060:  stloc.3
    .try
    {
      IL_0061:  br.s       IL_0079

      IL_0063:  ldloc.3
      IL_0064:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_0069:  stloc.s    V_4
      IL_006b:  ldloc.1
      IL_006c:  ldloc.2
      IL_006d:  dup
      IL_006e:  ldc.i4.1
      IL_006f:  add
      IL_0070:  stloc.2
      IL_0071:  ldloc.s    V_4
      IL_0073:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
      IL_0078:  stelem.i4
      IL_0079:  ldloc.3
      IL_007a:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_007f:  brtrue.s   IL_0063

      IL_0081:  leave.s    IL_008d

    }  // end .try
    finally
    {
      IL_0083:  ldloc.3
      IL_0084:  brfalse.s  IL_008c

      IL_0086:  ldloc.3
      IL_0087:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_008c:  endfinally
    }  // end handler
    IL_008d:  ldarg.0
    IL_008e:  ldloc.1
    IL_008f:  ldloc.0
    IL_0090:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass40_0'::inventory
    IL_0095:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_009a:  ldarg.3
    IL_009b:  ldloca.s   V_5
    IL_009d:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_00a3:  ldloc.s    V_5
    IL_00a5:  call       instance void SpaceCraft.InventoriesHandler::RemoveWorldObjectsFromInventoryServerRpc(int32[],
                                                                                                               int32,
                                                                                                               bool,
                                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00aa:  ret
  } // end of method InventoriesHandler::RemoveItemsFromInventory

  .method public hidebysig instance void 
          RemoveAndDestroyAllItemsFromInventory(class SpaceCraft.Inventory inventory) cil managed
  {
    // Code size       70 (0x46)
    .maxstack  3
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0'::inventory
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_001a:  ldloc.0
    IL_001b:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0'::'<RemoveAndDestroyAllItemsFromInventory>b__0'(bool)
    IL_0021:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_0026:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_002b:  ldarg.0
    IL_002c:  ldloc.0
    IL_002d:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass41_0'::inventory
    IL_0032:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0037:  ldloca.s   V_1
    IL_0039:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_003f:  ldloc.1
    IL_0040:  call       instance void SpaceCraft.InventoriesHandler::RemoveAndDestroyAllItemsFromInventoryServerRpc(int32,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0045:  ret
  } // end of method InventoriesHandler::RemoveAndDestroyAllItemsFromInventory

  .method private hidebysig instance void 
          RemoveItemFromInventoryServerRpc(int32 worldObjectId,
                                           int32 inventoryId,
                                           bool destroy,
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
    // Code size       347 (0x15b)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             class SpaceCraft.WorldObject V_1,
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
    IL_0043:  ldc.i4     0x2f1b29ce
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
    IL_008c:  ldarg      inventoryId
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloca     V_4
    IL_0099:  ldarga     destroy
    IL_009d:  ldloca     V_6
    IL_00a1:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a7:  ldloc      V_6
    IL_00ab:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b0:  nop
    IL_00b1:  ldarg.0
    IL_00b2:  ldloca     V_4
    IL_00b6:  ldc.i4     0x2f1b29ce
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
    IL_00f3:  ldarg.2
    IL_00f4:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00f9:  stloc.0
    IL_00fa:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_00ff:  ldarg.1
    IL_0100:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0105:  stloc.1
    IL_0106:  ldc.i4.0
    IL_0107:  stloc.2
    IL_0108:  ldloc.0
    IL_0109:  brfalse.s  IL_0127

    IL_010b:  ldloc.1
    IL_010c:  brfalse.s  IL_0127

    IL_010e:  ldloc.0
    IL_010f:  ldloc.1
    IL_0110:  callvirt   instance bool SpaceCraft.Inventory::RemoveItem(class SpaceCraft.WorldObject)
    IL_0115:  stloc.2
    IL_0116:  ldloc.2
    IL_0117:  ldarg.3
    IL_0118:  and
    IL_0119:  brfalse.s  IL_0127

    IL_011b:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0120:  ldloc.1
    IL_0121:  ldc.i4.0
    IL_0122:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObject(class SpaceCraft.WorldObject,
                                                                                          bool)
    IL_0127:  ldloc.2
    IL_0128:  brfalse.s  IL_014c

    IL_012a:  ldloc.0
    IL_012b:  ldloc.1
    IL_012c:  ldc.i4.0
    IL_012d:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                   bool)
    IL_0132:  ldloc.0
    IL_0133:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
    IL_0138:  ldarg.0
    IL_0139:  ldarg.2
    IL_013a:  ldarg.s    rpcParams
    IL_013c:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_0141:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_0146:  ldc.i4.0
    IL_0147:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_014c:  ldarg.0
    IL_014d:  ldloc.2
    IL_014e:  ldarg.s    rpcParams
    IL_0150:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0155:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_015a:  ret
  } // end of method InventoriesHandler::RemoveItemFromInventoryServerRpc

  .method private hidebysig instance void 
          RemoveItemsFromInventoryServerRpc(int32[] groupHashes,
                                            int32 inventoryId,
                                            bool destroy,
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
    // Code size       491 (0x1eb)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             bool V_1,
             class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_2,
             class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> V_3,
             int32[] V_4,
             int32 V_5,
             int32 V_6,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_7,
             class SpaceCraft.WorldObject V_8,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_10,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_11,
             bool V_12,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_13,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_14,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_15)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  stloc      V_9
    IL_000a:  ldloc      V_9
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc      V_9
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
    IL_003c:  brfalse    IL_0110

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x1241ff30
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_11
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_11
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_11
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_10
    IL_007b:  ldarg      groupHashes
    IL_007f:  ldnull
    IL_0080:  cgt.un
    IL_0082:  stloc      V_12
    IL_0086:  ldloca     V_10
    IL_008a:  ldloca     V_12
    IL_008e:  ldloca     V_13
    IL_0092:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0098:  ldloc      V_13
    IL_009c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00a1:  ldloc      V_12
    IL_00a5:  brfalse    IL_00c5

    IL_00aa:  ldloca     V_10
    IL_00ae:  ldarg      groupHashes
    IL_00b2:  ldloca     V_14
    IL_00b6:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00bc:  ldloc      V_14
    IL_00c0:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00c5:  nop
    IL_00c6:  ldloc      V_10
    IL_00ca:  ldarg      inventoryId
    IL_00ce:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00d3:  ldloca     V_10
    IL_00d7:  ldarga     destroy
    IL_00db:  ldloca     V_15
    IL_00df:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00e5:  ldloc      V_15
    IL_00e9:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00ee:  nop
    IL_00ef:  ldarg.0
    IL_00f0:  ldloca     V_10
    IL_00f4:  ldc.i4     0x1241ff30
    IL_00f9:  ldarg      rpcParams
    IL_00fd:  ldloc      V_11
    IL_0101:  ldc.i4     0x2
    IL_0106:  ldc.i4     0x0
    IL_010b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0110:  nop
    IL_0111:  ldarg.0
    IL_0112:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0117:  ldc.i4     0x1
    IL_011c:  ceq
    IL_011e:  brtrue     IL_0124

    IL_0123:  ret

    IL_0124:  nop
    IL_0125:  ldarg.0
    IL_0126:  ldc.i4     0x0
    IL_012b:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0130:  ldarg.0
    IL_0131:  ldarg.2
    IL_0132:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_0137:  stloc.0
    IL_0138:  ldc.i4.0
    IL_0139:  stloc.1
    IL_013a:  ldnull
    IL_013b:  stloc.2
    IL_013c:  ldloc.0
    IL_013d:  brfalse.s  IL_0190

    IL_013f:  ldarg.1
    IL_0140:  ldlen
    IL_0141:  conv.i4
    IL_0142:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::.ctor(int32)
    IL_0147:  stloc.3
    IL_0148:  ldarg.1
    IL_0149:  stloc.s    V_4
    IL_014b:  ldc.i4.0
    IL_014c:  stloc.s    V_5
    IL_014e:  br.s       IL_016a

    IL_0150:  ldloc.s    V_4
    IL_0152:  ldloc.s    V_5
    IL_0154:  ldelem.i4
    IL_0155:  stloc.s    V_6
    IL_0157:  ldloc.3
    IL_0158:  ldloc.s    V_6
    IL_015a:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_015f:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::Add(!0)
    IL_0164:  ldloc.s    V_5
    IL_0166:  ldc.i4.1
    IL_0167:  add
    IL_0168:  stloc.s    V_5
    IL_016a:  ldloc.s    V_5
    IL_016c:  ldloc.s    V_4
    IL_016e:  ldlen
    IL_016f:  conv.i4
    IL_0170:  blt.s      IL_0150

    IL_0172:  ldloc.0
    IL_0173:  ldloc.3
    IL_0174:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::RemoveItems(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>)
    IL_0179:  stloc.2
    IL_017a:  ldarg.3
    IL_017b:  brfalse.s  IL_018e

    IL_017d:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0182:  ldloc.2
    IL_0183:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::AsReadOnly()
    IL_0188:  ldc.i4.0
    IL_0189:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjects(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>,
                                                                                           bool)
    IL_018e:  ldc.i4.1
    IL_018f:  stloc.1
    IL_0190:  ldloc.1
    IL_0191:  brfalse.s  IL_01dc

    IL_0193:  ldloc.2
    IL_0194:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0199:  stloc.s    V_7
    .try
    {
      IL_019b:  br.s       IL_01af

      IL_019d:  ldloca.s   V_7
      IL_019f:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_01a4:  stloc.s    V_8
      IL_01a6:  ldloc.0
      IL_01a7:  ldloc.s    V_8
      IL_01a9:  ldc.i4.0
      IL_01aa:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_01af:  ldloca.s   V_7
      IL_01b1:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_01b6:  brtrue.s   IL_019d

      IL_01b8:  leave.s    IL_01c8

    }  // end .try
    finally
    {
      IL_01ba:  ldloca.s   V_7
      IL_01bc:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_01c2:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_01c7:  endfinally
    }  // end handler
    IL_01c8:  ldarg.0
    IL_01c9:  ldarg.2
    IL_01ca:  ldarg.s    rpcParams
    IL_01cc:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_01d1:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_01d6:  ldc.i4.0
    IL_01d7:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_01dc:  ldarg.0
    IL_01dd:  ldloc.1
    IL_01de:  ldarg.s    rpcParams
    IL_01e0:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01e5:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01ea:  ret
  } // end of method InventoriesHandler::RemoveItemsFromInventoryServerRpc

  .method private hidebysig instance void 
          RemoveWorldObjectsFromInventoryServerRpc(int32[] woIds,
                                                   int32 inventoryId,
                                                   bool destroy,
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
    // Code size       497 (0x1f1)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             bool V_1,
             class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_2,
             int32[] V_3,
             int32 V_4,
             int32 V_5,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_6,
             class SpaceCraft.WorldObject V_7,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_10,
             bool V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_12,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_13,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_14)
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
    IL_003c:  brfalse    IL_0110

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x2baa62d
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_10
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_10
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_10
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_9
    IL_007b:  ldarg      woIds
    IL_007f:  ldnull
    IL_0080:  cgt.un
    IL_0082:  stloc      V_11
    IL_0086:  ldloca     V_9
    IL_008a:  ldloca     V_11
    IL_008e:  ldloca     V_12
    IL_0092:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0098:  ldloc      V_12
    IL_009c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00a1:  ldloc      V_11
    IL_00a5:  brfalse    IL_00c5

    IL_00aa:  ldloca     V_9
    IL_00ae:  ldarg      woIds
    IL_00b2:  ldloca     V_13
    IL_00b6:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00bc:  ldloc      V_13
    IL_00c0:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00c5:  nop
    IL_00c6:  ldloc      V_9
    IL_00ca:  ldarg      inventoryId
    IL_00ce:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00d3:  ldloca     V_9
    IL_00d7:  ldarga     destroy
    IL_00db:  ldloca     V_14
    IL_00df:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00e5:  ldloc      V_14
    IL_00e9:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00ee:  nop
    IL_00ef:  ldarg.0
    IL_00f0:  ldloca     V_9
    IL_00f4:  ldc.i4     0x2baa62d
    IL_00f9:  ldarg      rpcParams
    IL_00fd:  ldloc      V_10
    IL_0101:  ldc.i4     0x2
    IL_0106:  ldc.i4     0x0
    IL_010b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0110:  nop
    IL_0111:  ldarg.0
    IL_0112:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0117:  ldc.i4     0x1
    IL_011c:  ceq
    IL_011e:  brtrue     IL_0124

    IL_0123:  ret

    IL_0124:  nop
    IL_0125:  ldarg.0
    IL_0126:  ldc.i4     0x0
    IL_012b:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0130:  ldarg.0
    IL_0131:  ldarg.2
    IL_0132:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_0137:  stloc.0
    IL_0138:  ldc.i4.0
    IL_0139:  stloc.1
    IL_013a:  ldarg.1
    IL_013b:  ldlen
    IL_013c:  conv.i4
    IL_013d:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::.ctor(int32)
    IL_0142:  stloc.2
    IL_0143:  ldloc.0
    IL_0144:  brfalse.s  IL_0196

    IL_0146:  ldarg.1
    IL_0147:  stloc.3
    IL_0148:  ldc.i4.0
    IL_0149:  stloc.s    V_4
    IL_014b:  br.s       IL_016b

    IL_014d:  ldloc.3
    IL_014e:  ldloc.s    V_4
    IL_0150:  ldelem.i4
    IL_0151:  stloc.s    V_5
    IL_0153:  ldloc.2
    IL_0154:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0159:  ldloc.s    V_5
    IL_015b:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_0160:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::Add(!0)
    IL_0165:  ldloc.s    V_4
    IL_0167:  ldc.i4.1
    IL_0168:  add
    IL_0169:  stloc.s    V_4
    IL_016b:  ldloc.s    V_4
    IL_016d:  ldloc.3
    IL_016e:  ldlen
    IL_016f:  conv.i4
    IL_0170:  blt.s      IL_014d

    IL_0172:  ldloc.0
    IL_0173:  ldloc.2
    IL_0174:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::AsReadOnly()
    IL_0179:  callvirt   instance bool SpaceCraft.Inventory::RemoveItems(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>)
    IL_017e:  brfalse.s  IL_0196

    IL_0180:  ldarg.3
    IL_0181:  brfalse.s  IL_0194

    IL_0183:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0188:  ldloc.2
    IL_0189:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::AsReadOnly()
    IL_018e:  ldc.i4.0
    IL_018f:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjects(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>,
                                                                                           bool)
    IL_0194:  ldc.i4.1
    IL_0195:  stloc.1
    IL_0196:  ldloc.1
    IL_0197:  brfalse.s  IL_01e2

    IL_0199:  ldloc.2
    IL_019a:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_019f:  stloc.s    V_6
    .try
    {
      IL_01a1:  br.s       IL_01b5

      IL_01a3:  ldloca.s   V_6
      IL_01a5:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_01aa:  stloc.s    V_7
      IL_01ac:  ldloc.0
      IL_01ad:  ldloc.s    V_7
      IL_01af:  ldc.i4.0
      IL_01b0:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_01b5:  ldloca.s   V_6
      IL_01b7:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_01bc:  brtrue.s   IL_01a3

      IL_01be:  leave.s    IL_01ce

    }  // end .try
    finally
    {
      IL_01c0:  ldloca.s   V_6
      IL_01c2:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_01c8:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_01cd:  endfinally
    }  // end handler
    IL_01ce:  ldarg.0
    IL_01cf:  ldarg.2
    IL_01d0:  ldarg.s    rpcParams
    IL_01d2:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_01d7:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_01dc:  ldc.i4.0
    IL_01dd:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_01e2:  ldarg.0
    IL_01e3:  ldloc.1
    IL_01e4:  ldarg.s    rpcParams
    IL_01e6:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01eb:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01f0:  ret
  } // end of method InventoriesHandler::RemoveWorldObjectsFromInventoryServerRpc

  .method private hidebysig instance void 
          RemoveAndDestroyAllItemsFromInventoryServerRpc(int32 inventoryId,
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
    // Code size       315 (0x13b)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             bool V_1,
             class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> V_2,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_3,
             class SpaceCraft.WorldObject V_4,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_7)
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x5a7480b
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
    IL_007f:  ldarg      inventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_6
    IL_008e:  ldc.i4     0x5a7480b
    IL_0093:  ldarg      rpcParams
    IL_0097:  ldloc      V_7
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
    IL_00cc:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00d1:  stloc.0
    IL_00d2:  ldc.i4.0
    IL_00d3:  stloc.1
    IL_00d4:  ldnull
    IL_00d5:  stloc.2
    IL_00d6:  ldloc.0
    IL_00d7:  brfalse.s  IL_00e3

    IL_00d9:  ldloc.0
    IL_00da:  ldc.i4.1
    IL_00db:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::DestroyAllItemsInside(bool)
    IL_00e0:  stloc.2
    IL_00e1:  ldc.i4.1
    IL_00e2:  stloc.1
    IL_00e3:  ldloc.1
    IL_00e4:  brfalse.s  IL_012d

    IL_00e6:  ldloc.2
    IL_00e7:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_00ec:  stloc.3
    .try
    {
      IL_00ed:  br.s       IL_0101

      IL_00ef:  ldloca.s   V_3
      IL_00f1:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_00f6:  stloc.s    V_4
      IL_00f8:  ldloc.0
      IL_00f9:  ldloc.s    V_4
      IL_00fb:  ldc.i4.0
      IL_00fc:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0101:  ldloca.s   V_3
      IL_0103:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_0108:  brtrue.s   IL_00ef

      IL_010a:  leave.s    IL_011a

    }  // end .try
    finally
    {
      IL_010c:  ldloca.s   V_3
      IL_010e:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_0114:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0119:  endfinally
    }  // end handler
    IL_011a:  ldarg.0
    IL_011b:  ldarg.1
    IL_011c:  ldarg.2
    IL_011d:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_0122:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_0127:  ldc.i4.0
    IL_0128:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_012d:  ldarg.0
    IL_012e:  ldloc.1
    IL_012f:  ldarg.2
    IL_0130:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0135:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_013a:  ret
  } // end of method InventoriesHandler::RemoveAndDestroyAllItemsFromInventoryServerRpc

  .method public hidebysig instance void 
          RetrieveLogisticEntity(class SpaceCraft.Inventory inventory,
                                 class [mscorlib]System.Action callback) cil managed
  {
    // Code size       52 (0x34)
    .maxstack  3
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brfalse.s  IL_000f

    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance void [mscorlib]System.Action::Invoke()
    IL_000e:  ret

    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [mscorlib]System.Action SpaceCraft.InventoriesHandler::_logisticsCallback
    IL_0015:  brtrue.s   IL_0033

    IL_0017:  ldarg.0
    IL_0018:  ldarg.2
    IL_0019:  stfld      class [mscorlib]System.Action SpaceCraft.InventoriesHandler::_logisticsCallback
    IL_001e:  ldarg.0
    IL_001f:  ldarg.1
    IL_0020:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0025:  ldloca.s   V_0
    IL_0027:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_002d:  ldloc.0
    IL_002e:  call       instance void SpaceCraft.InventoriesHandler::RetrieveInventoryLogisticsServerRpc(int32,
                                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0033:  ret
  } // end of method InventoriesHandler::RetrieveLogisticEntity

  .method private hidebysig instance void 
          RetrieveInventoryLogisticsServerRpc(int32 inventoryId,
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
    // Code size       259 (0x103)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32> V_1,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_4)
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xff32ad1e
    IL_0048:  ldarg      rpcParams
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
    IL_0077:  stloc      V_3
    IL_007b:  ldloc      V_3
    IL_007f:  ldarg      inventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_3
    IL_008e:  ldc.i4     0xff32ad1e
    IL_0093:  ldarg      rpcParams
    IL_0097:  ldloc      V_4
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
    IL_00cc:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00d1:  stloc.0
    IL_00d2:  ldloc.0
    IL_00d3:  callvirt   instance class SpaceCraft.LogisticEntity SpaceCraft.Inventory::GetLogisticEntity()
    IL_00d8:  callvirt   instance valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32> SpaceCraft.LogisticEntity::Serialize()
    IL_00dd:  stloc.1
    IL_00de:  ldarg.0
    IL_00df:  ldloc.0
    IL_00e0:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_00e5:  ldloc.1
    IL_00e6:  ldfld      !0 valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32>::Item1
    IL_00eb:  ldloc.1
    IL_00ec:  ldfld      !1 valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32>::Item2
    IL_00f1:  ldloc.1
    IL_00f2:  ldfld      !2 valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32>::Item3
    IL_00f7:  ldarg.2
    IL_00f8:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00fd:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventoryLogisticsClientRpc(int32,
                                                                                                       int32[],
                                                                                                       int32[],
                                                                                                       int32,
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0102:  ret
  } // end of method InventoriesHandler::RetrieveInventoryLogisticsServerRpc

  .method public hidebysig instance void 
          UpdateLogisticEntity(class SpaceCraft.Inventory inventory) cil managed
  {
    // Code size       114 (0x72)
    .maxstack  7
    .locals init (valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32> V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class SpaceCraft.LogisticEntity SpaceCraft.Inventory::GetLogisticEntity()
    IL_0006:  callvirt   instance valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32> SpaceCraft.LogisticEntity::Serialize()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class SpaceCraft.LogisticEntity SpaceCraft.Inventory::GetLogisticEntity()
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance void SpaceCraft.LogisticEntity::SetDirty(class SpaceCraft.Inventory)
    IL_0018:  ldarg.0
    IL_0019:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_001e:  brfalse.s  IL_004a

    IL_0020:  ldarg.0
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0027:  ldloc.0
    IL_0028:  ldfld      !0 valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32>::Item1
    IL_002d:  ldloc.0
    IL_002e:  ldfld      !1 valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32>::Item2
    IL_0033:  ldloc.0
    IL_0034:  ldfld      !2 valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32>::Item3
    IL_0039:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_003e:  callvirt   instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_LocalClientId()
    IL_0043:  ldc.i4.0
    IL_0044:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventoryLogistics(int32,
                                                                                              int32[],
                                                                                              int32[],
                                                                                              int32,
                                                                                              uint64,
                                                                                              bool)
    IL_0049:  ret

    IL_004a:  ldarg.0
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0051:  ldloc.0
    IL_0052:  ldfld      !0 valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32>::Item1
    IL_0057:  ldloc.0
    IL_0058:  ldfld      !1 valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32>::Item2
    IL_005d:  ldloc.0
    IL_005e:  ldfld      !2 valuetype [mscorlib]System.ValueTuple`3<int32[],int32[],int32>::Item3
    IL_0063:  ldloca.s   V_1
    IL_0065:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_006b:  ldloc.1
    IL_006c:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventoryLogisticsServerRpc(int32,
                                                                                                       int32[],
                                                                                                       int32[],
                                                                                                       int32,
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0071:  ret
  } // end of method InventoriesHandler::UpdateLogisticEntity

  .method private hidebysig instance void 
          DirtyInventoryLogisticsServerRpc(int32 inventoryId,
                                           int32[] 'demand',
                                           int32[] supply,
                                           int32 priority,
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
    .param [5] = nullref
    // Code size       430 (0x1ae)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_3,
             bool V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             bool V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9)
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
    IL_003c:  brfalse    IL_014d

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xa51634f7
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
    IL_007f:  ldarg      inventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldarg      'demand'
    IL_008c:  ldnull
    IL_008d:  cgt.un
    IL_008f:  stloc      V_4
    IL_0093:  ldloca     V_2
    IL_0097:  ldloca     V_4
    IL_009b:  ldloca     V_5
    IL_009f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a5:  ldloc      V_5
    IL_00a9:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00ae:  ldloc      V_4
    IL_00b2:  brfalse    IL_00d2

    IL_00b7:  ldloca     V_2
    IL_00bb:  ldarg      'demand'
    IL_00bf:  ldloca     V_6
    IL_00c3:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00c9:  ldloc      V_6
    IL_00cd:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00d2:  nop
    IL_00d3:  ldarg      supply
    IL_00d7:  ldnull
    IL_00d8:  cgt.un
    IL_00da:  stloc      V_7
    IL_00de:  ldloca     V_2
    IL_00e2:  ldloca     V_7
    IL_00e6:  ldloca     V_8
    IL_00ea:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00f0:  ldloc      V_8
    IL_00f4:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00f9:  ldloc      V_7
    IL_00fd:  brfalse    IL_011d

    IL_0102:  ldloca     V_2
    IL_0106:  ldarg      supply
    IL_010a:  ldloca     V_9
    IL_010e:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0114:  ldloc      V_9
    IL_0118:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_011d:  nop
    IL_011e:  ldloc      V_2
    IL_0122:  ldarg      priority
    IL_0126:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_012b:  nop
    IL_012c:  ldarg.0
    IL_012d:  ldloca     V_2
    IL_0131:  ldc.i4     0xa51634f7
    IL_0136:  ldarg      rpcParams
    IL_013a:  ldloc      V_3
    IL_013e:  ldc.i4     0x2
    IL_0143:  ldc.i4     0x0
    IL_0148:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_014d:  nop
    IL_014e:  ldarg.0
    IL_014f:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0154:  ldc.i4     0x1
    IL_0159:  ceq
    IL_015b:  brtrue     IL_0161

    IL_0160:  ret

    IL_0161:  nop
    IL_0162:  ldarg.0
    IL_0163:  ldc.i4     0x0
    IL_0168:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_016d:  ldarg.0
    IL_016e:  ldarg.1
    IL_016f:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_0174:  stloc.0
    IL_0175:  ldloc.0
    IL_0176:  callvirt   instance class SpaceCraft.LogisticEntity SpaceCraft.Inventory::GetLogisticEntity()
    IL_017b:  ldarg.2
    IL_017c:  ldarg.3
    IL_017d:  ldarg.s    priority
    IL_017f:  callvirt   instance void SpaceCraft.LogisticEntity::Deserialize(int32[],
                                                                              int32[],
                                                                              int32)
    IL_0184:  ldloc.0
    IL_0185:  callvirt   instance class SpaceCraft.LogisticEntity SpaceCraft.Inventory::GetLogisticEntity()
    IL_018a:  ldloc.0
    IL_018b:  callvirt   instance void SpaceCraft.LogisticEntity::SetDirty(class SpaceCraft.Inventory)
    IL_0190:  ldarg.0
    IL_0191:  ldloc.0
    IL_0192:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0197:  ldarg.2
    IL_0198:  ldarg.3
    IL_0199:  ldarg.s    priority
    IL_019b:  ldarg.s    rpcParams
    IL_019d:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_01a2:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_01a7:  ldc.i4.0
    IL_01a8:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventoryLogistics(int32,
                                                                                              int32[],
                                                                                              int32[],
                                                                                              int32,
                                                                                              uint64,
                                                                                              bool)
    IL_01ad:  ret
  } // end of method InventoriesHandler::DirtyInventoryLogisticsServerRpc

  .method private hidebysig instance void 
          DirtyInventoryLogistics(int32 inventoryId,
                                  int32[] 'demand',
                                  int32[] supply,
                                  int32 priority,
                                  uint64 clientEditing,
                                  [opt] bool ignoreEditingClient) cil managed
  {
    .param [6] = bool(false)
    // Code size       174 (0xae)
    .maxstack  6
    .locals init (valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<uint64,uint32> V_0,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<uint64,uint32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::ContainsKey(!0)
    IL_000c:  brfalse    IL_00ad

    IL_0011:  ldarg.s    ignoreEditingClient
    IL_0013:  brtrue.s   IL_0052

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_001b:  ldarg.1
    IL_001c:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0021:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Count()
    IL_0026:  ldc.i4.1
    IL_0027:  bgt.s      IL_0052

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_002f:  ldarg.1
    IL_0030:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0035:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Count()
    IL_003a:  ldc.i4.1
    IL_003b:  bne.un.s   IL_00ad

    IL_003d:  ldarg.0
    IL_003e:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0043:  ldarg.1
    IL_0044:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0049:  ldarg.s    clientEditing
    IL_004b:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::ContainsKey(!0)
    IL_0050:  brtrue.s   IL_00ad

    IL_0052:  ldarg.0
    IL_0053:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0058:  ldarg.1
    IL_0059:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_005e:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::GetEnumerator()
    IL_0063:  stloc.0
    .try
    {
      IL_0064:  br.s       IL_0094

      IL_0066:  ldloca.s   V_0
      IL_0068:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<uint64,uint32>::get_Current()
      IL_006d:  stloc.1
      IL_006e:  ldarg.s    ignoreEditingClient
      IL_0070:  brtrue.s   IL_007d

      IL_0072:  ldloca.s   V_1
      IL_0074:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<uint64,uint32>::get_Key()
      IL_0079:  ldarg.s    clientEditing
      IL_007b:  beq.s      IL_0094

      IL_007d:  ldarg.0
      IL_007e:  ldarg.1
      IL_007f:  ldarg.2
      IL_0080:  ldarg.3
      IL_0081:  ldarg.s    priority
      IL_0083:  ldloca.s   V_1
      IL_0085:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<uint64,uint32>::get_Key()
      IL_008a:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(uint64)
      IL_008f:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventoryLogisticsClientRpc(int32,
                                                                                                         int32[],
                                                                                                         int32[],
                                                                                                         int32,
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
      IL_0094:  ldloca.s   V_0
      IL_0096:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<uint64,uint32>::MoveNext()
      IL_009b:  brtrue.s   IL_0066

      IL_009d:  leave.s    IL_00ad

    }  // end .try
    finally
    {
      IL_009f:  ldloca.s   V_0
      IL_00a1:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<uint64,uint32>
      IL_00a7:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00ac:  endfinally
    }  // end handler
    IL_00ad:  ret
  } // end of method InventoriesHandler::DirtyInventoryLogistics

  .method private hidebysig instance void 
          DirtyInventoryLogisticsClientRpc(int32 inventoryId,
                                           int32[] 'demand',
                                           int32[] supply,
                                           int32 priority,
                                           [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [5] = nullref
    // Code size       449 (0x1c1)
    .maxstack  5
    .locals init (class SpaceCraft.Inventory V_0,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_2,
             bool V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             bool V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8)
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
    IL_003c:  brfalse    IL_013f

    IL_0041:  ldloc      V_1
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_1
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_013f

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0xb9adcc2e
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_2
    IL_0076:  ldloc      V_2
    IL_007a:  ldarg      inventoryId
    IL_007e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0083:  ldarg      'demand'
    IL_0087:  ldnull
    IL_0088:  cgt.un
    IL_008a:  stloc      V_3
    IL_008e:  ldloca     V_2
    IL_0092:  ldloca     V_3
    IL_0096:  ldloca     V_4
    IL_009a:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a0:  ldloc      V_4
    IL_00a4:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00a9:  ldloc      V_3
    IL_00ad:  brfalse    IL_00cd

    IL_00b2:  ldloca     V_2
    IL_00b6:  ldarg      'demand'
    IL_00ba:  ldloca     V_5
    IL_00be:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00c4:  ldloc      V_5
    IL_00c8:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00cd:  nop
    IL_00ce:  ldarg      supply
    IL_00d2:  ldnull
    IL_00d3:  cgt.un
    IL_00d5:  stloc      V_6
    IL_00d9:  ldloca     V_2
    IL_00dd:  ldloca     V_6
    IL_00e1:  ldloca     V_7
    IL_00e5:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00eb:  ldloc      V_7
    IL_00ef:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00f4:  ldloc      V_6
    IL_00f8:  brfalse    IL_0118

    IL_00fd:  ldloca     V_2
    IL_0101:  ldarg      supply
    IL_0105:  ldloca     V_8
    IL_0109:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_010f:  ldloc      V_8
    IL_0113:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0118:  nop
    IL_0119:  ldloc      V_2
    IL_011d:  ldarg      priority
    IL_0121:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0126:  nop
    IL_0127:  ldarg.0
    IL_0128:  ldloca     V_2
    IL_012c:  ldc.i4     0xb9adcc2e
    IL_0131:  ldarg      clientRpcParams
    IL_0135:  ldc.i4     0x0
    IL_013a:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_013f:  nop
    IL_0140:  ldarg.0
    IL_0141:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0146:  ldc.i4     0x1
    IL_014b:  ceq
    IL_014d:  brfalse    IL_016e

    IL_0152:  ldloc      V_1
    IL_0156:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_015b:  brtrue     IL_016f

    IL_0160:  ldloc      V_1
    IL_0164:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0169:  brtrue     IL_016f

    IL_016e:  ret

    IL_016f:  nop
    IL_0170:  ldarg.0
    IL_0171:  ldc.i4     0x0
    IL_0176:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_017b:  ldarg.0
    IL_017c:  ldarg.1
    IL_017d:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_0182:  stloc.0
    IL_0183:  ldarg.0
    IL_0184:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0189:  brtrue.s   IL_01a6

    IL_018b:  ldloc.0
    IL_018c:  callvirt   instance class SpaceCraft.LogisticEntity SpaceCraft.Inventory::GetLogisticEntity()
    IL_0191:  ldarg.2
    IL_0192:  ldarg.3
    IL_0193:  ldarg.s    priority
    IL_0195:  callvirt   instance void SpaceCraft.LogisticEntity::Deserialize(int32[],
                                                                              int32[],
                                                                              int32)
    IL_019a:  ldloc.0
    IL_019b:  callvirt   instance class SpaceCraft.LogisticEntity SpaceCraft.Inventory::GetLogisticEntity()
    IL_01a0:  ldloc.0
    IL_01a1:  callvirt   instance void SpaceCraft.LogisticEntity::SetDirty(class SpaceCraft.Inventory)
    IL_01a6:  ldarg.0
    IL_01a7:  ldfld      class [mscorlib]System.Action SpaceCraft.InventoriesHandler::_logisticsCallback
    IL_01ac:  brfalse.s  IL_01c0

    IL_01ae:  ldarg.0
    IL_01af:  ldfld      class [mscorlib]System.Action SpaceCraft.InventoriesHandler::_logisticsCallback
    IL_01b4:  callvirt   instance void [mscorlib]System.Action::Invoke()
    IL_01b9:  ldarg.0
    IL_01ba:  ldnull
    IL_01bb:  stfld      class [mscorlib]System.Action SpaceCraft.InventoriesHandler::_logisticsCallback
    IL_01c0:  ret
  } // end of method InventoriesHandler::DirtyInventoryLogisticsClientRpc

  .method public hidebysig instance void 
          AnInventoryHasBeenClicked(class SpaceCraft.Inventory inventoryClicked,
                                    class SpaceCraft.WorldObject itemClicked) cil managed
  {
    // Code size       256 (0x100)
    .maxstack  6
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0' V_0,
             valuetype SpaceCraft.DataConfig/UiType V_1,
             class SpaceCraft.PlayerMainController V_2,
             class SpaceCraft.PlayerEquipment V_3)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::inventoryClicked
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_001a:  callvirt   instance int32 class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::get_Count()
    IL_001f:  ldc.i4.0
    IL_0020:  ble.s      IL_0023

    IL_0022:  ret

    IL_0023:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.WindowsHandler>()
    IL_0028:  callvirt   instance valuetype SpaceCraft.DataConfig/UiType SpaceCraft.WindowsHandler::GetOpenedUi()
    IL_002d:  stloc.1
    IL_002e:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_0033:  callvirt   instance class SpaceCraft.PlayerMainController SpaceCraft.PlayersManager::GetActivePlayerController()
    IL_0038:  stloc.2
    IL_0039:  ldloc.1
    IL_003a:  ldc.i4.3
    IL_003b:  beq.s      IL_0054

    IL_003d:  ldloc.1
    IL_003e:  ldc.i4.s   17
    IL_0040:  beq.s      IL_0054

    IL_0042:  ldloc.1
    IL_0043:  ldc.i4.s   27
    IL_0045:  beq.s      IL_0054

    IL_0047:  ldloc.1
    IL_0048:  ldc.i4.s   28
    IL_004a:  beq.s      IL_0054

    IL_004c:  ldloc.1
    IL_004d:  ldc.i4.s   21
    IL_004f:  bne.un     IL_00d7

    IL_0054:  ldloc.0
    IL_0055:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.WindowsHandler>()
    IL_005a:  ldloc.1
    IL_005b:  callvirt   instance class SpaceCraft.UiWindow SpaceCraft.WindowsHandler::GetWindowViaUiId(valuetype SpaceCraft.DataConfig/UiType)
    IL_0060:  castclass  SpaceCraft.UiWindowContainer
    IL_0065:  stfld      class SpaceCraft.UiWindowContainer SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::windowContainer
    IL_006a:  ldloc.0
    IL_006b:  ldloc.0
    IL_006c:  ldfld      class SpaceCraft.UiWindowContainer SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::windowContainer
    IL_0071:  ldloc.0
    IL_0072:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::inventoryClicked
    IL_0077:  callvirt   instance class SpaceCraft.Inventory SpaceCraft.UiWindowContainer::GetOtherInventory(class SpaceCraft.Inventory)
    IL_007c:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::otherInventory
    IL_0081:  ldloc.0
    IL_0082:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::inventoryClicked
    IL_0087:  brfalse.s  IL_00d7

    IL_0089:  ldloc.0
    IL_008a:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::otherInventory
    IL_008f:  brfalse.s  IL_00d7

    IL_0091:  ldloc.2
    IL_0092:  callvirt   instance class SpaceCraft.PlayerInputDispatcher SpaceCraft.PlayerMainController::GetPlayerInputDispatcher()
    IL_0097:  callvirt   instance bool SpaceCraft.PlayerInputDispatcher::IsPressingAccessibilityKey()
    IL_009c:  brtrue.s   IL_00bf

    IL_009e:  ldarg.0
    IL_009f:  ldloc.0
    IL_00a0:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::inventoryClicked
    IL_00a5:  ldloc.0
    IL_00a6:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::otherInventory
    IL_00ab:  ldarg.2
    IL_00ac:  ldloc.0
    IL_00ad:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::'<AnInventoryHasBeenClicked>b__0'(bool)
    IL_00b3:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_00b8:  call       instance void SpaceCraft.InventoriesHandler::TransferItem(class SpaceCraft.Inventory,
                                                                                   class SpaceCraft.Inventory,
                                                                                   class SpaceCraft.WorldObject,
                                                                                   class [mscorlib]System.Action`1<bool>)
    IL_00bd:  br.s       IL_00d7

    IL_00bf:  ldarg.0
    IL_00c0:  ldloc.0
    IL_00c1:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::inventoryClicked
    IL_00c6:  ldloc.0
    IL_00c7:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::otherInventory
    IL_00cc:  ldarg.2
    IL_00cd:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_00d2:  call       instance void SpaceCraft.InventoriesHandler::TransferAllSameGroup(class SpaceCraft.Inventory,
                                                                                           class SpaceCraft.Inventory,
                                                                                           class SpaceCraft.Group)
    IL_00d7:  ldloc.1
    IL_00d8:  ldc.i4.2
    IL_00d9:  bne.un.s   IL_00ff

    IL_00db:  ldloc.2
    IL_00dc:  callvirt   instance class SpaceCraft.PlayerEquipment SpaceCraft.PlayerMainController::GetPlayerEquipment()
    IL_00e1:  stloc.3
    IL_00e2:  ldloc.0
    IL_00e3:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass53_0'::inventoryClicked
    IL_00e8:  ldloc.3
    IL_00e9:  callvirt   instance class SpaceCraft.Inventory SpaceCraft.PlayerEquipment::GetInventory()
    IL_00ee:  bne.un.s   IL_00f8

    IL_00f0:  ldloc.3
    IL_00f1:  ldarg.2
    IL_00f2:  callvirt   instance void SpaceCraft.PlayerEquipment::RemoveItemFromEquipment(class SpaceCraft.WorldObject)
    IL_00f7:  ret

    IL_00f8:  ldloc.3
    IL_00f9:  ldarg.2
    IL_00fa:  callvirt   instance void SpaceCraft.PlayerEquipment::AddItemInEquipment(class SpaceCraft.WorldObject)
    IL_00ff:  ret
  } // end of method InventoriesHandler::AnInventoryHasBeenClicked

  .method public hidebysig instance void 
          AMoveAllInventoryHasBeenClicked(class SpaceCraft.Inventory inventoryClicked) cil managed
  {
    // Code size       88 (0x58)
    .maxstack  3
    .locals init (valuetype SpaceCraft.DataConfig/UiType V_0,
             class SpaceCraft.Inventory V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0006:  callvirt   instance int32 class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble.s      IL_000f

    IL_000e:  ret

    IL_000f:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.WindowsHandler>()
    IL_0014:  callvirt   instance valuetype SpaceCraft.DataConfig/UiType SpaceCraft.WindowsHandler::GetOpenedUi()
    IL_0019:  stloc.0
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.3
    IL_001c:  beq.s      IL_0032

    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.s   17
    IL_0021:  beq.s      IL_0032

    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.s   21
    IL_0026:  beq.s      IL_0032

    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.s   27
    IL_002b:  beq.s      IL_0032

    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.s   28
    IL_0030:  bne.un.s   IL_0057

    IL_0032:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.WindowsHandler>()
    IL_0037:  ldloc.0
    IL_0038:  callvirt   instance class SpaceCraft.UiWindow SpaceCraft.WindowsHandler::GetWindowViaUiId(valuetype SpaceCraft.DataConfig/UiType)
    IL_003d:  castclass  SpaceCraft.UiWindowContainer
    IL_0042:  ldarg.1
    IL_0043:  callvirt   instance class SpaceCraft.Inventory SpaceCraft.UiWindowContainer::GetOtherInventory(class SpaceCraft.Inventory)
    IL_0048:  stloc.1
    IL_0049:  ldarg.1
    IL_004a:  brfalse.s  IL_0057

    IL_004c:  ldloc.1
    IL_004d:  brfalse.s  IL_0057

    IL_004f:  ldarg.0
    IL_0050:  ldarg.1
    IL_0051:  ldloc.1
    IL_0052:  call       instance void SpaceCraft.InventoriesHandler::TransferAllItems(class SpaceCraft.Inventory,
                                                                                       class SpaceCraft.Inventory)
    IL_0057:  ret
  } // end of method InventoriesHandler::AMoveAllInventoryHasBeenClicked

  .method public hidebysig instance void 
          SetInventorySize(class SpaceCraft.Inventory inventory,
                           int32 sizeOffset,
                           valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 dropPosition,
                           [opt] class [mscorlib]System.Action`1<bool> result) cil managed
  {
    .param [4] = nullref
    // Code size       104 (0x68)
    .maxstack  5
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::inventory
    IL_0014:  ldloc.0
    IL_0015:  ldarg.2
    IL_0016:  stfld      int32 SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::sizeOffset
    IL_001b:  ldloc.0
    IL_001c:  ldarg.3
    IL_001d:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::dropPosition
    IL_0022:  ldloc.0
    IL_0023:  ldarg.s    result
    IL_0025:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::result
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0030:  ldloc.0
    IL_0031:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::'<SetInventorySize>b__0'(bool)
    IL_0037:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_003c:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_0041:  ldarg.0
    IL_0042:  ldloc.0
    IL_0043:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::inventory
    IL_0048:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_004d:  ldloc.0
    IL_004e:  ldfld      int32 SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::sizeOffset
    IL_0053:  ldloc.0
    IL_0054:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.InventoriesHandler/'<>c__DisplayClass55_0'::dropPosition
    IL_0059:  ldloca.s   V_1
    IL_005b:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0061:  ldloc.1
    IL_0062:  call       instance void SpaceCraft.InventoriesHandler::SetInventorySizeServerRpc(int32,
                                                                                                int32,
                                                                                                valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0067:  ret
  } // end of method InventoriesHandler::SetInventorySize

  .method private hidebysig instance void 
          SetInventorySizeServerRpc(int32 inventoryId,
                                    int32 sizeOffset,
                                    valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 dropPosition,
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
    // Code size       348 (0x15c)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject> V_1,
             class SpaceCraft.WorldObject V_2,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_5)
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
    IL_003c:  brfalse    IL_00c4

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xcfe2f6a3
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
    IL_007f:  ldarg      inventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_4
    IL_008c:  ldarg      sizeOffset
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloca     V_4
    IL_0099:  ldarga     dropPosition
    IL_009d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3&)
    IL_00a2:  nop
    IL_00a3:  ldarg.0
    IL_00a4:  ldloca     V_4
    IL_00a8:  ldc.i4     0xcfe2f6a3
    IL_00ad:  ldarg      rpcParams
    IL_00b1:  ldloc      V_5
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
    IL_00e6:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00eb:  stloc.0
    IL_00ec:  ldloc.0
    IL_00ed:  brfalse.s  IL_0136

    IL_00ef:  ldloc.0
    IL_00f0:  ldloc.0
    IL_00f1:  callvirt   instance int32 SpaceCraft.Inventory::GetSize()
    IL_00f6:  ldarg.2
    IL_00f7:  add
    IL_00f8:  callvirt   instance void SpaceCraft.Inventory::SetSize(int32)
    IL_00fd:  ldloc.0
    IL_00fe:  ldarg.3
    IL_00ff:  ldc.i4.0
    IL_0100:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::DropObjectsIfNotEnoughSpace(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                                                                                    bool)
    IL_0105:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_010a:  stloc.1
    .try
    {
      IL_010b:  br.s       IL_011d

      IL_010d:  ldloca.s   V_1
      IL_010f:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_0114:  stloc.2
      IL_0115:  ldloc.0
      IL_0116:  ldloc.2
      IL_0117:  ldc.i4.0
      IL_0118:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_011d:  ldloca.s   V_1
      IL_011f:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_0124:  brtrue.s   IL_010d

      IL_0126:  leave.s    IL_0136

    }  // end .try
    finally
    {
      IL_0128:  ldloca.s   V_1
      IL_012a:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.WorldObject>
      IL_0130:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0135:  endfinally
    }  // end handler
    IL_0136:  ldloc.0
    IL_0137:  brfalse.s  IL_014d

    IL_0139:  ldarg.0
    IL_013a:  ldarg.1
    IL_013b:  ldarg.s    rpcParams
    IL_013d:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_0142:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_0147:  ldc.i4.0
    IL_0148:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_014d:  ldarg.0
    IL_014e:  ldc.i4.1
    IL_014f:  ldarg.s    rpcParams
    IL_0151:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0156:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_015b:  ret
  } // end of method InventoriesHandler::SetInventorySizeServerRpc

  .method public hidebysig instance void 
          LockInventoryContent(class SpaceCraft.Inventory inventory,
                               bool locked,
                               [opt] float32 lockTime,
                               [opt] class [mscorlib]System.Action`1<bool> result) cil managed
  {
    .param [3] = float32(0.)
    .param [4] = nullref
    // Code size       73 (0x49)
    .maxstack  5
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass57_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass57_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass57_0'::inventory
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    result
    IL_0010:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass57_0'::result
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_001b:  ldloc.0
    IL_001c:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass57_0'::'<LockInventoryContent>b__0'(bool)
    IL_0022:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_0027:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_002c:  ldarg.0
    IL_002d:  ldloc.0
    IL_002e:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass57_0'::inventory
    IL_0033:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0038:  ldarg.2
    IL_0039:  ldarg.3
    IL_003a:  ldloca.s   V_1
    IL_003c:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0042:  ldloc.1
    IL_0043:  call       instance void SpaceCraft.InventoriesHandler::LockInventoryContentServerRpc(int32,
                                                                                                    bool,
                                                                                                    float32,
                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0048:  ret
  } // end of method InventoriesHandler::LockInventoryContent

  .method private hidebysig instance void 
          LockInventoryContentServerRpc(int32 inventoryId,
                                        bool locked,
                                        float32 lockTime,
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
    // Code size       375 (0x177)
    .maxstack  7
    .locals init (float32 V_0,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_1,
             class SpaceCraft.WorldObject V_2,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7)
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
    IL_003c:  brfalse    IL_00e0

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x8507233d
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
    IL_007f:  ldarg      inventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloca     V_4
    IL_008c:  ldarga     locked
    IL_0090:  ldloca     V_6
    IL_0094:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_009a:  ldloc      V_6
    IL_009e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00a3:  ldloca     V_4
    IL_00a7:  ldarga     lockTime
    IL_00ab:  ldloca     V_7
    IL_00af:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00b5:  ldloc      V_7
    IL_00b9:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<float32>(!!0&,
                                                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00be:  nop
    IL_00bf:  ldarg.0
    IL_00c0:  ldloca     V_4
    IL_00c4:  ldc.i4     0x8507233d
    IL_00c9:  ldarg      rpcParams
    IL_00cd:  ldloc      V_5
    IL_00d1:  ldc.i4     0x2
    IL_00d6:  ldc.i4     0x0
    IL_00db:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00e0:  nop
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00e7:  ldc.i4     0x1
    IL_00ec:  ceq
    IL_00ee:  brtrue     IL_00f4

    IL_00f3:  ret

    IL_00f4:  nop
    IL_00f5:  ldarg.0
    IL_00f6:  ldc.i4     0x0
    IL_00fb:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0100:  ldarg.0
    IL_0101:  ldarg.1
    IL_0102:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_0107:  ldarg.3
    IL_0108:  ldc.r4     1.1920929e-07
    IL_010d:  blt.s      IL_0118

    IL_010f:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_time()
    IL_0114:  ldarg.3
    IL_0115:  add
    IL_0116:  br.s       IL_0123

    IL_0118:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_time()
    IL_011d:  ldc.r4     9.9999998e-03
    IL_0122:  sub
    IL_0123:  stloc.0
    IL_0124:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0129:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_012e:  stloc.1
    .try
    {
      IL_012f:  br.s       IL_0154

      IL_0131:  ldloc.1
      IL_0132:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_0137:  stloc.2
      IL_0138:  ldarg.2
      IL_0139:  brfalse.s  IL_0143

      IL_013b:  ldloc.2
      IL_013c:  callvirt   instance bool SpaceCraft.WorldObject::GetIsLockedInInventory()
      IL_0141:  brtrue.s   IL_0154

      IL_0143:  ldloc.2
      IL_0144:  ldarg.2
      IL_0145:  brtrue.s   IL_014e

      IL_0147:  ldc.r4     0.0
      IL_014c:  br.s       IL_014f

      IL_014e:  ldloc.0
      IL_014f:  callvirt   instance void SpaceCraft.WorldObject::SetLockInInventoryTime(float32)
      IL_0154:  ldloc.1
      IL_0155:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_015a:  brtrue.s   IL_0131

      IL_015c:  leave.s    IL_0168

    }  // end .try
    finally
    {
      IL_015e:  ldloc.1
      IL_015f:  brfalse.s  IL_0167

      IL_0161:  ldloc.1
      IL_0162:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0167:  endfinally
    }  // end handler
    IL_0168:  ldarg.0
    IL_0169:  ldc.i4.1
    IL_016a:  ldarg.s    rpcParams
    IL_016c:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0171:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0176:  ret
  } // end of method InventoriesHandler::LockInventoryContentServerRpc

  .method private hidebysig instance void 
          SortInventoryServerRpc(int32 inventoryId) cil managed
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
    // Code size       215 (0xd7)
    .maxstack  7
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_3)
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
    IL_0043:  ldc.i4     0x5432e36b
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
    IL_007f:  ldarg      inventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_1
    IL_008e:  ldc.i4     0x5432e36b
    IL_0093:  ldloc      V_2
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
    IL_00cc:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_00d1:  callvirt   instance void SpaceCraft.Inventory::AutoSort()
    IL_00d6:  ret
  } // end of method InventoriesHandler::SortInventoryServerRpc

  .method public hidebysig instance void 
          SortInventory(class SpaceCraft.Inventory inventory) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_001d

    IL_0003:  ldarg.1
    IL_0004:  callvirt   instance void SpaceCraft.Inventory::AutoSort()
    IL_0009:  ldarg.0
    IL_000a:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_000f:  brtrue.s   IL_001d

    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0018:  call       instance void SpaceCraft.InventoriesHandler::SortInventoryServerRpc(int32)
    IL_001d:  ret
  } // end of method InventoriesHandler::SortInventory

  .method public hidebysig instance void 
          GetInventoryFromFirstWorldObjectOfGroup(class SpaceCraft.Group group,
                                                  int32 planetHash,
                                                  class [mscorlib]System.Action`1<class SpaceCraft.Inventory> callback) cil managed
  {
    // Code size       35 (0x23)
    .maxstack  4
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>> SpaceCraft.InventoriesHandler::_callbackQueue
    IL_0006:  ldarg.3
    IL_0007:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>>::Enqueue(!0)
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0013:  ldarg.2
    IL_0014:  ldloca.s   V_0
    IL_0016:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_001c:  ldloc.0
    IL_001d:  call       instance void SpaceCraft.InventoriesHandler::GetInventoryFromFirstWorldObjectOfGroupServerRpc(int32,
                                                                                                                       int32,
                                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0022:  ret
  } // end of method InventoriesHandler::GetInventoryFromFirstWorldObjectOfGroup

  .method private hidebysig instance void 
          GetInventoryFromFirstWorldObjectOfGroupServerRpc(int32 groupHash,
                                                           int32 planetHash,
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
    .param [3] = nullref
    // Code size       283 (0x11b)
    .maxstack  8
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
    IL_003c:  brfalse    IL_00b7

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x9f68f7fa
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
    IL_0088:  ldloc      V_2
    IL_008c:  ldarg      planetHash
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  nop
    IL_0096:  ldarg.0
    IL_0097:  ldloca     V_2
    IL_009b:  ldc.i4     0x9f68f7fa
    IL_00a0:  ldarg      rpcParams
    IL_00a4:  ldloc      V_3
    IL_00a8:  ldc.i4     0x2
    IL_00ad:  ldc.i4     0x0
    IL_00b2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                           uint32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_00b7:  nop
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00be:  ldc.i4     0x1
    IL_00c3:  ceq
    IL_00c5:  brtrue     IL_00cb

    IL_00ca:  ret

    IL_00cb:  nop
    IL_00cc:  ldarg.0
    IL_00cd:  ldc.i4     0x0
    IL_00d2:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00d7:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_00dc:  ldarg.1
    IL_00dd:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_00e2:  ldarg.2
    IL_00e3:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetFirstWorldObjectOfGroup(class SpaceCraft.Group,
                                                                                                                          int32)
    IL_00e8:  stloc.0
    IL_00e9:  ldloc.0
    IL_00ea:  brfalse.s  IL_00ff

    IL_00ec:  ldarg.0
    IL_00ed:  ldc.i4.0
    IL_00ee:  ldc.i4.0
    IL_00ef:  ldloc.0
    IL_00f0:  callvirt   instance int32 SpaceCraft.WorldObject::GetLinkedInventoryId()
    IL_00f5:  ldc.i4.0
    IL_00f6:  ldnull
    IL_00f7:  ldnull
    IL_00f8:  ldarg.3
    IL_00f9:  call       instance void SpaceCraft.InventoriesHandler::GetOrCreateNewInventory(bool,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32[],
                                                                                              int32[],
                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00fe:  ret

    IL_00ff:  ldarg.0
    IL_0100:  ldc.i4.0
    IL_0101:  ldc.i4.m1
    IL_0102:  ldc.i4.0
    IL_0103:  newarr     [mscorlib]System.Int32
    IL_0108:  ldc.i4.0
    IL_0109:  newarr     [mscorlib]System.Int32
    IL_010e:  ldc.i4.0
    IL_010f:  ldarg.3
    IL_0110:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0115:  call       instance void SpaceCraft.InventoriesHandler::RetrieveInventoryClientRpc(int32,
                                                                                                 int32,
                                                                                                 int32[],
                                                                                                 int32[],
                                                                                                 bool,
                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_011a:  ret
  } // end of method InventoriesHandler::GetInventoryFromFirstWorldObjectOfGroupServerRpc

  .method private hidebysig instance void 
          OnClientDisconnectCallback(uint64 cliendId) cil managed
  {
    // Code size       52 (0x34)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Count()
    IL_000b:  ldc.i4.1
    IL_000c:  sub
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_002f

    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0017:  ldloc.0
    IL_0018:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                         int32)
    IL_001d:  stloc.1
    IL_001e:  ldloca.s   V_1
    IL_0020:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Key()
    IL_0025:  ldarg.1
    IL_0026:  call       instance void SpaceCraft.InventoriesHandler::StopInventoryWatch(int32,
                                                                                         uint64)
    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.1
    IL_002d:  sub
    IL_002e:  stloc.0
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.0
    IL_0031:  bge.s      IL_0010

    IL_0033:  ret
  } // end of method InventoriesHandler::OnClientDisconnectCallback

  .method public hidebysig instance void 
          BeginInventoryWatch(class SpaceCraft.Inventory inventory) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  3
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0007:  ldloca.s   V_0
    IL_0009:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_000f:  ldloc.0
    IL_0010:  call       instance void SpaceCraft.InventoriesHandler::BeginInventoryWatchServerRpc(int32,
                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0015:  ret
  } // end of method InventoriesHandler::BeginInventoryWatch

  .method public hidebysig instance void 
          StopInventoryWatch(class SpaceCraft.Inventory inventory) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  3
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0006:  ldnull
    IL_0007:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_000c:  brfalse.s  IL_0030

    IL_000e:  ldarg.0
    IL_000f:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_0014:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsListening()
    IL_0019:  brfalse.s  IL_0030

    IL_001b:  ldarg.0
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0022:  ldloca.s   V_0
    IL_0024:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_002a:  ldloc.0
    IL_002b:  call       instance void SpaceCraft.InventoriesHandler::StopInventoryWatchServerRpc(int32,
                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0030:  ret
  } // end of method InventoriesHandler::StopInventoryWatch

  .method private hidebysig instance void 
          BeginInventoryWatchServerRpc(int32 inventoryId,
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
    // Code size       307 (0x133)
    .maxstack  7
    .locals init (uint64 V_0,
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
    IL_0043:  ldc.i4     0xd6c29798
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
    IL_007f:  ldarg      inventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_2
    IL_008e:  ldc.i4     0xd6c29798
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
    IL_00cb:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_00d0:  ldarg.1
    IL_00d1:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::ContainsKey(!0)
    IL_00d6:  brtrue.s   IL_00e9

    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_00de:  ldarg.1
    IL_00df:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::.ctor()
    IL_00e4:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::set_Item(!0,
                                                                                                                                                                                       !1)
    IL_00e9:  ldarg.2
    IL_00ea:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_00ef:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_00f4:  stloc.0
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_00fb:  ldarg.1
    IL_00fc:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0101:  ldloc.0
    IL_0102:  ldarg.0
    IL_0103:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0108:  ldarg.1
    IL_0109:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_010e:  ldloc.0
    IL_010f:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::ContainsKey(!0)
    IL_0114:  brtrue.s   IL_0119

    IL_0116:  ldc.i4.1
    IL_0117:  br.s       IL_012d

    IL_0119:  ldarg.0
    IL_011a:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_011f:  ldarg.1
    IL_0120:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0125:  ldloc.0
    IL_0126:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Item(!0)
    IL_012b:  ldc.i4.1
    IL_012c:  add
    IL_012d:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::set_Item(!0,
                                                                                                                        !1)
    IL_0132:  ret
  } // end of method InventoriesHandler::BeginInventoryWatchServerRpc

  .method private hidebysig instance void 
          StopInventoryWatchServerRpc(int32 inventoryId,
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
    // Code size       221 (0xdd)
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
    IL_0043:  ldc.i4     0x54fe4d00
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
    IL_007f:  ldarg      inventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_1
    IL_008e:  ldc.i4     0x54fe4d00
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
    IL_00cb:  ldarg.1
    IL_00cc:  ldarg.2
    IL_00cd:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_00d2:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_00d7:  call       instance void SpaceCraft.InventoriesHandler::StopInventoryWatch(int32,
                                                                                         uint64)
    IL_00dc:  ret
  } // end of method InventoriesHandler::StopInventoryWatchServerRpc

  .method private hidebysig instance void 
          StopInventoryWatch(int32 inventoryId,
                             uint64 clientId) cil managed
  {
    // Code size       153 (0x99)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::ContainsKey(!0)
    IL_000c:  brfalse    IL_0098

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_001d:  ldarg.2
    IL_001e:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::ContainsKey(!0)
    IL_0023:  brfalse.s  IL_0098

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_002b:  ldarg.1
    IL_002c:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0031:  ldarg.2
    IL_0032:  ldc.i4.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0039:  ldarg.1
    IL_003a:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_003f:  ldarg.2
    IL_0040:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Item(!0)
    IL_0045:  ldc.i4.1
    IL_0046:  sub
    IL_0047:  call       uint32 [Unity.Mathematics]Unity.Mathematics.math::max(uint32,
                                                                               uint32)
    IL_004c:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::set_Item(!0,
                                                                                                                        !1)
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0057:  ldarg.1
    IL_0058:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_005d:  ldarg.2
    IL_005e:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Item(!0)
    IL_0063:  brtrue.s   IL_0078

    IL_0065:  ldarg.0
    IL_0066:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_006b:  ldarg.1
    IL_006c:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0071:  ldarg.2
    IL_0072:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::Remove(!0)
    IL_0077:  pop
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_007e:  ldarg.1
    IL_007f:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0084:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Count()
    IL_0089:  brtrue.s   IL_0098

    IL_008b:  ldarg.0
    IL_008c:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0091:  ldarg.1
    IL_0092:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::Remove(!0)
    IL_0097:  pop
    IL_0098:  ret
  } // end of method InventoriesHandler::StopInventoryWatch

  .method private hidebysig instance void 
          DirtyInventory(int32 inventoryId,
                         uint64 clientEditing,
                         [opt] bool ignoreEditingClient) cil managed
  {
    .param [3] = bool(false)
    // Code size       319 (0x13f)
    .maxstack  7
    .locals init (class SpaceCraft.Inventory V_0,
             int32[] V_1,
             int32[] V_2,
             int32 V_3,
             bool V_4,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_5,
             class SpaceCraft.WorldObject V_6,
             valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<uint64,uint32> V_7,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<uint64,uint32> V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::ContainsKey(!0)
    IL_000c:  brfalse    IL_013e

    IL_0011:  ldarg.3
    IL_0012:  brtrue.s   IL_0056

    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_001a:  ldarg.1
    IL_001b:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0020:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Count()
    IL_0025:  ldc.i4.1
    IL_0026:  bgt.s      IL_0056

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_002e:  ldarg.1
    IL_002f:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0034:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Count()
    IL_0039:  ldc.i4.1
    IL_003a:  bne.un     IL_013e

    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0045:  ldarg.1
    IL_0046:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_004b:  ldarg.2
    IL_004c:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::ContainsKey(!0)
    IL_0051:  brtrue     IL_013e

    IL_0056:  ldarg.0
    IL_0057:  ldarg.1
    IL_0058:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_005d:  stloc.0
    IL_005e:  ldloc.0
    IL_005f:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0064:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Count()
    IL_0069:  newarr     [mscorlib]System.Int32
    IL_006e:  stloc.1
    IL_006f:  ldloc.0
    IL_0070:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0075:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::get_Count()
    IL_007a:  newarr     [mscorlib]System.Int32
    IL_007f:  stloc.2
    IL_0080:  ldc.i4.0
    IL_0081:  stloc.3
    IL_0082:  ldc.i4.0
    IL_0083:  stloc.s    V_4
    IL_0085:  ldloc.0
    IL_0086:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_008b:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0090:  stloc.s    V_5
    .try
    {
      IL_0092:  br.s       IL_00c6

      IL_0094:  ldloc.s    V_5
      IL_0096:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_009b:  stloc.s    V_6
      IL_009d:  ldloc.1
      IL_009e:  ldloc.3
      IL_009f:  ldloc.s    V_6
      IL_00a1:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
      IL_00a6:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
      IL_00ab:  stelem.i4
      IL_00ac:  ldloc.2
      IL_00ad:  ldloc.3
      IL_00ae:  dup
      IL_00af:  ldc.i4.1
      IL_00b0:  add
      IL_00b1:  stloc.3
      IL_00b2:  ldloc.s    V_6
      IL_00b4:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
      IL_00b9:  stelem.i4
      IL_00ba:  ldloc.s    V_6
      IL_00bc:  callvirt   instance valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::GetGeneticTraitType()
      IL_00c1:  brfalse.s  IL_00c6

      IL_00c3:  ldc.i4.1
      IL_00c4:  stloc.s    V_4
      IL_00c6:  ldloc.s    V_5
      IL_00c8:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_00cd:  brtrue.s   IL_0094

      IL_00cf:  leave.s    IL_00dd

    }  // end .try
    finally
    {
      IL_00d1:  ldloc.s    V_5
      IL_00d3:  brfalse.s  IL_00dc

      IL_00d5:  ldloc.s    V_5
      IL_00d7:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00dc:  endfinally
    }  // end handler
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_00e3:  ldarg.1
    IL_00e4:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_00e9:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::GetEnumerator()
    IL_00ee:  stloc.s    V_7
    .try
    {
      IL_00f0:  br.s       IL_0125

      IL_00f2:  ldloca.s   V_7
      IL_00f4:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<uint64,uint32>::get_Current()
      IL_00f9:  stloc.s    V_8
      IL_00fb:  ldarg.3
      IL_00fc:  brtrue.s   IL_0108

      IL_00fe:  ldloca.s   V_8
      IL_0100:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<uint64,uint32>::get_Key()
      IL_0105:  ldarg.2
      IL_0106:  beq.s      IL_0125

      IL_0108:  ldarg.0
      IL_0109:  ldloc.0
      IL_010a:  callvirt   instance int32 SpaceCraft.Inventory::GetSize()
      IL_010f:  ldarg.1
      IL_0110:  ldloc.1
      IL_0111:  ldloc.2
      IL_0112:  ldloc.s    V_4
      IL_0114:  ldloca.s   V_8
      IL_0116:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<uint64,uint32>::get_Key()
      IL_011b:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(uint64)
      IL_0120:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventoryClientRpc(int32,
                                                                                                int32,
                                                                                                int32[],
                                                                                                int32[],
                                                                                                bool,
                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
      IL_0125:  ldloca.s   V_7
      IL_0127:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<uint64,uint32>::MoveNext()
      IL_012c:  brtrue.s   IL_00f2

      IL_012e:  leave.s    IL_013e

    }  // end .try
    finally
    {
      IL_0130:  ldloca.s   V_7
      IL_0132:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<uint64,uint32>
      IL_0138:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_013d:  endfinally
    }  // end handler
    IL_013e:  ret
  } // end of method InventoriesHandler::DirtyInventory

  .method private hidebysig instance void 
          DirtyInventoryClientRpc(int32 size,
                                  int32 inventoryId,
                                  int32[] content,
                                  int32[] contentIds,
                                  bool containsGeneticTraits,
                                  [opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [6] = nullref
    // Code size       588 (0x24c)
    .maxstack  6
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0' V_0,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_1,
             class SpaceCraft.WorldObject V_2,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_4,
             bool V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7,
             bool V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_10,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_11)
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
    IL_003c:  brfalse    IL_015a

    IL_0041:  ldloc      V_3
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_3
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_015a

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x8349dce1
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_4
    IL_0076:  ldloc      V_4
    IL_007a:  ldarg      size
    IL_007e:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0083:  ldloc      V_4
    IL_0087:  ldarg      inventoryId
    IL_008b:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0090:  ldarg      content
    IL_0094:  ldnull
    IL_0095:  cgt.un
    IL_0097:  stloc      V_5
    IL_009b:  ldloca     V_4
    IL_009f:  ldloca     V_5
    IL_00a3:  ldloca     V_6
    IL_00a7:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00ad:  ldloc      V_6
    IL_00b1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b6:  ldloc      V_5
    IL_00ba:  brfalse    IL_00da

    IL_00bf:  ldloca     V_4
    IL_00c3:  ldarg      content
    IL_00c7:  ldloca     V_7
    IL_00cb:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00d1:  ldloc      V_7
    IL_00d5:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00da:  nop
    IL_00db:  ldarg      contentIds
    IL_00df:  ldnull
    IL_00e0:  cgt.un
    IL_00e2:  stloc      V_8
    IL_00e6:  ldloca     V_4
    IL_00ea:  ldloca     V_8
    IL_00ee:  ldloca     V_9
    IL_00f2:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00f8:  ldloc      V_9
    IL_00fc:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0101:  ldloc      V_8
    IL_0105:  brfalse    IL_0125

    IL_010a:  ldloca     V_4
    IL_010e:  ldarg      contentIds
    IL_0112:  ldloca     V_10
    IL_0116:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_011c:  ldloc      V_10
    IL_0120:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<int32>(!!0[],
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0125:  nop
    IL_0126:  ldloca     V_4
    IL_012a:  ldarga     containsGeneticTraits
    IL_012e:  ldloca     V_11
    IL_0132:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0138:  ldloc      V_11
    IL_013c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0141:  nop
    IL_0142:  ldarg.0
    IL_0143:  ldloca     V_4
    IL_0147:  ldc.i4     0x8349dce1
    IL_014c:  ldarg      clientRpcParams
    IL_0150:  ldc.i4     0x0
    IL_0155:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__endSendClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter&,
                                                                                                                 uint32,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_015a:  nop
    IL_015b:  ldarg.0
    IL_015c:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0161:  ldc.i4     0x1
    IL_0166:  ceq
    IL_0168:  brfalse    IL_0189

    IL_016d:  ldloc      V_3
    IL_0171:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsClient()
    IL_0176:  brtrue     IL_018a

    IL_017b:  ldloc      V_3
    IL_017f:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0184:  brtrue     IL_018a

    IL_0189:  ret

    IL_018a:  nop
    IL_018b:  ldarg.0
    IL_018c:  ldc.i4     0x0
    IL_0191:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0196:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::.ctor()
    IL_019b:  stloc.0
    IL_019c:  ldloc.0
    IL_019d:  ldarg.0
    IL_019e:  stfld      class SpaceCraft.InventoriesHandler SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::'<>4__this'
    IL_01a3:  ldloc.0
    IL_01a4:  ldarg.0
    IL_01a5:  ldarg.2
    IL_01a6:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_01ab:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::inventory
    IL_01b0:  ldarg.0
    IL_01b1:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_01b6:  brfalse.s  IL_01c4

    IL_01b8:  ldloc.0
    IL_01b9:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::inventory
    IL_01be:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
    IL_01c3:  ret

    IL_01c4:  ldloc.0
    IL_01c5:  newobj     instance void class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::.ctor()
    IL_01ca:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::previousContent
    IL_01cf:  ldloc.0
    IL_01d0:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::inventory
    IL_01d5:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_01da:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_01df:  stloc.1
    .try
    {
      IL_01e0:  br.s       IL_01f6

      IL_01e2:  ldloc.1
      IL_01e3:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_01e8:  stloc.2
      IL_01e9:  ldloc.0
      IL_01ea:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::previousContent
      IL_01ef:  ldloc.2
      IL_01f0:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::Add(!0)
      IL_01f5:  pop
      IL_01f6:  ldloc.1
      IL_01f7:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_01fc:  brtrue.s   IL_01e2

      IL_01fe:  leave.s    IL_020a

    }  // end .try
    finally
    {
      IL_0200:  ldloc.1
      IL_0201:  brfalse.s  IL_0209

      IL_0203:  ldloc.1
      IL_0204:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0209:  endfinally
    }  // end handler
    IL_020a:  ldarg.0
    IL_020b:  ldarg.1
    IL_020c:  ldarg.2
    IL_020d:  ldarg.3
    IL_020e:  ldarg.s    contentIds
    IL_0210:  ldloc.0
    IL_0211:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::inventory
    IL_0216:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::UpdateOrCreateInventoryFromMessage(int32,
                                                                                                                               int32,
                                                                                                                               int32[],
                                                                                                                               int32[],
                                                                                                                               class SpaceCraft.Inventory)
    IL_021b:  pop
    IL_021c:  ldarg.s    containsGeneticTraits
    IL_021e:  brfalse.s  IL_0239

    IL_0220:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0225:  ldarg.s    contentIds
    IL_0227:  ldloc.0
    IL_0228:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::'<DirtyInventoryClientRpc>b__0'(bool)
    IL_022e:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_0233:  callvirt   instance void SpaceCraft.WorldObjectsHandler::GetGeneticsDetails(int32[],
                                                                                          class [mscorlib]System.Action`1<bool>)
    IL_0238:  ret

    IL_0239:  ldarg.0
    IL_023a:  ldloc.0
    IL_023b:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::previousContent
    IL_0240:  ldloc.0
    IL_0241:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass71_0'::inventory
    IL_0246:  call       instance void SpaceCraft.InventoriesHandler::DiffInventories(class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>,
                                                                                      class SpaceCraft.Inventory)
    IL_024b:  ret
  } // end of method InventoriesHandler::DirtyInventoryClientRpc

  .method private hidebysig instance void 
          DiffInventories(class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject> previousContent,
                          class SpaceCraft.Inventory inventory) cil managed
  {
    // Code size       129 (0x81)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> V_0,
             valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject> V_1,
             class SpaceCraft.WorldObject V_2,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject> V_3,
             class SpaceCraft.WorldObject V_4)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject> SpaceCraft.Inventory::GetInsideWorldObjects()
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<!0> class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_000d:  stloc.1
    .try
    {
      IL_000e:  br.s       IL_0029

      IL_0010:  ldloca.s   V_1
      IL_0012:  call       instance !0 valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject>::get_Current()
      IL_0017:  stloc.2
      IL_0018:  ldloc.0
      IL_0019:  ldloc.2
      IL_001a:  callvirt   instance bool class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::Contains(!0)
      IL_001f:  brtrue.s   IL_0029

      IL_0021:  ldarg.2
      IL_0022:  ldloc.2
      IL_0023:  ldc.i4.0
      IL_0024:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0029:  ldloca.s   V_1
      IL_002b:  call       instance bool valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject>::MoveNext()
      IL_0030:  brtrue.s   IL_0010

      IL_0032:  leave.s    IL_0042

    }  // end .try
    finally
    {
      IL_0034:  ldloca.s   V_1
      IL_0036:  constrained. valuetype [System.Core]System.Collections.Generic.HashSet`1/Enumerator<class SpaceCraft.WorldObject>
      IL_003c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0041:  endfinally
    }  // end handler
    IL_0042:  ldloc.0
    IL_0043:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SpaceCraft.WorldObject>::GetEnumerator()
    IL_0048:  stloc.3
    .try
    {
      IL_0049:  br.s       IL_0066

      IL_004b:  ldloc.3
      IL_004c:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SpaceCraft.WorldObject>::get_Current()
      IL_0051:  stloc.s    V_4
      IL_0053:  ldarg.1
      IL_0054:  ldloc.s    V_4
      IL_0056:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class SpaceCraft.WorldObject>::Contains(!0)
      IL_005b:  brtrue.s   IL_0066

      IL_005d:  ldarg.2
      IL_005e:  ldloc.s    V_4
      IL_0060:  ldc.i4.1
      IL_0061:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                     bool)
      IL_0066:  ldloc.3
      IL_0067:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_006c:  brtrue.s   IL_004b

      IL_006e:  leave.s    IL_007a

    }  // end .try
    finally
    {
      IL_0070:  ldloc.3
      IL_0071:  brfalse.s  IL_0079

      IL_0073:  ldloc.3
      IL_0074:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0079:  endfinally
    }  // end handler
    IL_007a:  ldarg.2
    IL_007b:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
    IL_0080:  ret
  } // end of method InventoriesHandler::DiffInventories

  .method private hidebysig instance void 
          CloseInventoryOnWatchers(int32 inventoryId) cil managed
  {
    // Code size       73 (0x49)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32> V_0,
             int32 V_1,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<uint64,uint32> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::ContainsKey(!0)
    IL_000c:  brfalse.s  IL_0048

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Count()
    IL_0021:  ldc.i4.1
    IL_0022:  sub
    IL_0023:  stloc.1
    IL_0024:  br.s       IL_0044

    IL_0026:  ldarg.0
    IL_0027:  ldloc.0
    IL_0028:  ldloc.1
    IL_0029:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<uint64,uint32>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                          int32)
    IL_002e:  stloc.2
    IL_002f:  ldloca.s   V_2
    IL_0031:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<uint64,uint32>::get_Key()
    IL_0036:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(uint64)
    IL_003b:  call       instance void SpaceCraft.InventoriesHandler::CloseInventoryOnWatchersClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0040:  ldloc.1
    IL_0041:  ldc.i4.1
    IL_0042:  sub
    IL_0043:  stloc.1
    IL_0044:  ldloc.1
    IL_0045:  ldc.i4.0
    IL_0046:  bge.s      IL_0026

    IL_0048:  ret
  } // end of method InventoriesHandler::CloseInventoryOnWatchers

  .method private hidebysig instance void 
          CloseInventoryOnWatchersClientRpc([opt] valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams clientRpcParams) cil managed
  {
    .custom instance void [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [1] = nullref
    // Code size       214 (0xd6)
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
    IL_003c:  brfalse    IL_008f

    IL_0041:  ldloc      V_0
    IL_0045:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsServer()
    IL_004a:  brtrue     IL_005d

    IL_004f:  ldloc      V_0
    IL_0053:  callvirt   instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_IsHost()
    IL_0058:  brfalse    IL_008f

    IL_005d:  nop
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4     0x711c8a5
    IL_0064:  ldarg      clientRpcParams
    IL_0068:  ldc.i4     0x0
    IL_006d:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendClientRpc(uint32,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams,
                                                                                                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0072:  stloc      V_1
    IL_0076:  nop
    IL_0077:  ldarg.0
    IL_0078:  ldloca     V_1
    IL_007c:  ldc.i4     0x711c8a5
    IL_0081:  ldarg      clientRpcParams
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
    IL_00cb:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.WindowsHandler>()
    IL_00d0:  callvirt   instance void SpaceCraft.WindowsHandler::CloseAllWindows()
    IL_00d5:  ret
  } // end of method InventoriesHandler::CloseInventoryOnWatchersClientRpc

  .method public hidebysig instance void 
          CheckInventoryWatchAndDirty(class SpaceCraft.Inventory inventory) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  3
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_0007:  ldloca.s   V_0
    IL_0009:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_000f:  ldloc.0
    IL_0010:  call       instance void SpaceCraft.InventoriesHandler::CheckInventoryWatchAndDirtyServerRpc(int32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0015:  ret
  } // end of method InventoriesHandler::CheckInventoryWatchAndDirty

  .method private hidebysig instance void 
          CheckInventoryWatchAndDirtyServerRpc(int32 inventoryId,
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
    // Code size       357 (0x165)
    .maxstack  7
    .locals init (bool V_0,
             uint64 V_1,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_4)
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x4730cf18
    IL_0048:  ldarg      rpcParams
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
    IL_0077:  stloc      V_3
    IL_007b:  ldloc      V_3
    IL_007f:  ldarg      inventoryId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_3
    IL_008e:  ldc.i4     0x4730cf18
    IL_0093:  ldarg      rpcParams
    IL_0097:  ldloc      V_4
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
    IL_00ca:  ldc.i4.0
    IL_00cb:  stloc.0
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_00d2:  ldarg.1
    IL_00d3:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::ContainsKey(!0)
    IL_00d8:  brtrue.s   IL_00ed

    IL_00da:  ldarg.0
    IL_00db:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_00e0:  ldarg.1
    IL_00e1:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::.ctor()
    IL_00e6:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::set_Item(!0,
                                                                                                                                                                                       !1)
    IL_00eb:  ldc.i4.1
    IL_00ec:  stloc.0
    IL_00ed:  ldarg.2
    IL_00ee:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_00f3:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_00f8:  stloc.1
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_00ff:  ldarg.1
    IL_0100:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0105:  ldloc.1
    IL_0106:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::ContainsKey(!0)
    IL_010b:  brfalse.s  IL_0122

    IL_010d:  ldarg.0
    IL_010e:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0113:  ldarg.1
    IL_0114:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_0119:  ldloc.1
    IL_011a:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::get_Item(!0)
    IL_011f:  ldc.i4.0
    IL_0120:  bgt.un.s   IL_0137

    IL_0122:  ldarg.0
    IL_0123:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_0128:  ldarg.1
    IL_0129:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::get_Item(!0)
    IL_012e:  ldloc.1
    IL_012f:  ldc.i4.1
    IL_0130:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>::set_Item(!0,
                                                                                                                        !1)
    IL_0135:  ldc.i4.1
    IL_0136:  stloc.0
    IL_0137:  ldloc.0
    IL_0138:  brfalse.s  IL_015a

    IL_013a:  ldstr      "{0} Warning: Restoring watcher for inventory {1} a"
    + "nd client {2}!"
    IL_013f:  ldstr      "InventoriesHandler"
    IL_0144:  ldarg.1
    IL_0145:  box        [mscorlib]System.Int32
    IL_014a:  ldloc.1
    IL_014b:  box        [mscorlib]System.UInt64
    IL_0150:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object,
                                                                object)
    IL_0155:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
    IL_015a:  ldarg.0
    IL_015b:  ldarg.1
    IL_015c:  ldc.i4.0
    IL_015d:  conv.i8
    IL_015e:  ldc.i4.1
    IL_015f:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_0164:  ret
  } // end of method InventoriesHandler::CheckInventoryWatchAndDirtyServerRpc

  .method public hidebysig specialname instance void 
          add_OnWorldObjectFromSceneRetrieved(class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       41 (0x29)
    .maxstack  3
    .locals init (class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_0,
             class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_1,
             class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler::OnWorldObjectFromSceneRetrieved
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
    IL_0017:  ldflda     class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler::OnWorldObjectFromSceneRetrieved
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
  } // end of method InventoriesHandler::add_OnWorldObjectFromSceneRetrieved

  .method public hidebysig specialname instance void 
          remove_OnWorldObjectFromSceneRetrieved(class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       41 (0x29)
    .maxstack  3
    .locals init (class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_0,
             class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_1,
             class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler::OnWorldObjectFromSceneRetrieved
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
    IL_0017:  ldflda     class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler::OnWorldObjectFromSceneRetrieved
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
  } // end of method InventoriesHandler::remove_OnWorldObjectFromSceneRetrieved

  .method private hidebysig instance void 
          AddWorldObjectToInventoryServerRpc(int32 worldObjectId,
                                             int32 groupHash,
                                             int32 inventoryId,
                                             bool grabbed,
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
    .param [5] = nullref
    // Code size       523 (0x20b)
    .maxstack  7
    .locals init (class SpaceCraft.WorldObject V_0,
             bool V_1,
             class SpaceCraft.Inventory V_2,
             class SpaceCraft.ActionGrabable V_3,
             class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7)
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
    IL_003c:  brfalse    IL_00df

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x76fbe7b9
    IL_0048:  ldarg      rpcParams
    IL_004c:  ldloca     V_6
    IL_0050:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams
    IL_0056:  ldloca     V_6
    IL_005a:  ldc.i4     0x0
    IL_005f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams::InvokePermission
    IL_0064:  ldloc      V_6
    IL_0068:  ldc.i4     0x2
    IL_006d:  ldc.i4     0x0
    IL_0072:  call       instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__beginSendRpc(uint32,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcAttribute/RpcAttributeParams,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.SendTo,
                                                                                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcDelivery)
    IL_0077:  stloc      V_5
    IL_007b:  ldloc      V_5
    IL_007f:  ldarg      worldObjectId
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  ldloc      V_5
    IL_008c:  ldarg      groupHash
    IL_0090:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0095:  ldloc      V_5
    IL_0099:  ldarg      inventoryId
    IL_009d:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_00a2:  ldloca     V_5
    IL_00a6:  ldarga     grabbed
    IL_00aa:  ldloca     V_7
    IL_00ae:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00b4:  ldloc      V_7
    IL_00b8:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter::WriteValueSafe<bool>(!!0&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00bd:  nop
    IL_00be:  ldarg.0
    IL_00bf:  ldloca     V_5
    IL_00c3:  ldc.i4     0x76fbe7b9
    IL_00c8:  ldarg      rpcParams
    IL_00cc:  ldloc      V_6
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
    IL_00ff:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0104:  ldarg.1
    IL_0105:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::GetWorldObjectViaId(int32)
    IL_010a:  stloc.0
    IL_010b:  ldc.i4.0
    IL_010c:  stloc.1
    IL_010d:  ldloc.0
    IL_010e:  brtrue.s   IL_0126

    IL_0110:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0115:  ldarg.2
    IL_0116:  call       class SpaceCraft.Group SpaceCraft.GroupsHandler::GetGroupFromHash(int32)
    IL_011b:  ldarg.1
    IL_011c:  ldnull
    IL_011d:  ldc.i4.0
    IL_011e:  callvirt   instance class SpaceCraft.WorldObject SpaceCraft.WorldObjectsHandler::CreateNewWorldObject(class SpaceCraft.Group,
                                                                                                                    int32,
                                                                                                                    class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                                                                    bool)
    IL_0123:  stloc.0
    IL_0124:  ldc.i4.1
    IL_0125:  stloc.1
    IL_0126:  ldloc.0
    IL_0127:  callvirt   instance bool SpaceCraft.WorldObject::GetIsPlaced()
    IL_012c:  ldloc.1
    IL_012d:  or
    IL_012e:  brfalse    IL_01fc

    IL_0133:  ldarg.0
    IL_0134:  ldarg.3
    IL_0135:  call       instance class SpaceCraft.Inventory SpaceCraft.InventoriesHandler::GetInventoryById(int32)
    IL_013a:  stloc.2
    IL_013b:  ldloc.2
    IL_013c:  brfalse    IL_01fc

    IL_0141:  ldloc.2
    IL_0142:  ldloc.0
    IL_0143:  ldc.i4.1
    IL_0144:  callvirt   instance bool SpaceCraft.Inventory::AddItem(class SpaceCraft.WorldObject,
                                                                     bool)
    IL_0149:  brfalse    IL_01fc

    IL_014e:  ldloc.2
    IL_014f:  ldloc.0
    IL_0150:  ldc.i4.1
    IL_0151:  callvirt   instance void SpaceCraft.Inventory::PropagateModification(class SpaceCraft.WorldObject,
                                                                                   bool)
    IL_0156:  ldloc.2
    IL_0157:  callvirt   instance void SpaceCraft.Inventory::RefreshDisplayerContent()
    IL_015c:  ldloc.0
    IL_015d:  callvirt   instance bool SpaceCraft.WorldObject::GetDontSaveMe()
    IL_0162:  brfalse.s  IL_0176

    IL_0164:  ldarg.0
    IL_0165:  ldfld      class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> SpaceCraft.InventoriesHandler::OnWorldObjectFromSceneRetrieved
    IL_016a:  dup
    IL_016b:  brtrue.s   IL_0170

    IL_016d:  pop
    IL_016e:  br.s       IL_0176

    IL_0170:  ldloc.0
    IL_0171:  callvirt   instance void class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>::Invoke(!0)
    IL_0176:  ldloc.0
    IL_0177:  ldc.i4.0
    IL_0178:  callvirt   instance void SpaceCraft.WorldObject::SetDontSaveMe(bool)
    IL_017d:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_0182:  ldloc.0
    IL_0183:  callvirt   instance void SpaceCraft.WorldObjectsHandler::UpdateWorldObjectSaveState(class SpaceCraft.WorldObject)
    IL_0188:  ldarg.s    grabbed
    IL_018a:  brfalse.s  IL_01c9

    IL_018c:  ldloc.0
    IL_018d:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_0192:  ldnull
    IL_0193:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0198:  brfalse.s  IL_01c9

    IL_019a:  ldloc.0
    IL_019b:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::GetGameObject()
    IL_01a0:  callvirt   instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentInChildren<class SpaceCraft.ActionGrabable>()
    IL_01a5:  stloc.3
    IL_01a6:  ldloc.3
    IL_01a7:  ldnull
    IL_01a8:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_01ad:  brfalse.s  IL_01c9

    IL_01af:  ldloc.3
    IL_01b0:  ldfld      class SpaceCraft.Grabed SpaceCraft.ActionGrabable::grabedEvent
    IL_01b5:  dup
    IL_01b6:  brtrue.s   IL_01bb

    IL_01b8:  pop
    IL_01b9:  br.s       IL_01c2

    IL_01bb:  ldloc.0
    IL_01bc:  ldc.i4.1
    IL_01bd:  callvirt   instance void SpaceCraft.Grabed::Invoke(class SpaceCraft.WorldObject,
                                                                 bool)
    IL_01c2:  ldloc.3
    IL_01c3:  ldnull
    IL_01c4:  stfld      class SpaceCraft.Grabed SpaceCraft.ActionGrabable::grabedEvent
    IL_01c9:  ldsfld     class SpaceCraft.WorldObjectsHandler SpaceCraft.WorldObjectsHandler::Instance
    IL_01ce:  ldarg.1
    IL_01cf:  ldc.r4     0.0
    IL_01d4:  callvirt   instance void SpaceCraft.WorldObjectsHandler::DestroyWorldObjectGOOnAllClients(int32,
                                                                                                        float32)
    IL_01d9:  ldarg.0
    IL_01da:  ldarg.3
    IL_01db:  ldarg.s    rpcParams
    IL_01dd:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams [Unity.Netcode.Runtime]Unity.Netcode.RpcParams::Receive
    IL_01e2:  ldfld      uint64 [Unity.Netcode.Runtime]Unity.Netcode.RpcReceiveParams::SenderClientId
    IL_01e7:  ldc.i4.0
    IL_01e8:  call       instance void SpaceCraft.InventoriesHandler::DirtyInventory(int32,
                                                                                     uint64,
                                                                                     bool)
    IL_01ed:  ldarg.0
    IL_01ee:  ldc.i4.1
    IL_01ef:  ldarg.s    rpcParams
    IL_01f1:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_01f6:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_01fb:  ret

    IL_01fc:  ldarg.0
    IL_01fd:  ldc.i4.0
    IL_01fe:  ldarg.s    rpcParams
    IL_0200:  call       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams SpaceCraft.NetworkUtils::GetSenderClientParams(valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0205:  call       instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_020a:  ret
  } // end of method InventoriesHandler::AddWorldObjectToInventoryServerRpc

  .method public hidebysig instance void 
          AddWorldObjectToInventory(class SpaceCraft.WorldObject worldObject,
                                    class SpaceCraft.Inventory inventory,
                                    [opt] bool grabbed,
                                    [opt] class [mscorlib]System.Action`1<bool> result) cil managed
  {
    .param [3] = bool(false)
    .param [4] = nullref
    // Code size       73 (0x49)
    .maxstack  6
    .locals init (valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brfalse.s  IL_003d

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_000e:  ldarg.s    result
    IL_0010:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_0022:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_0027:  ldarg.2
    IL_0028:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_002d:  ldarg.3
    IL_002e:  ldloca.s   V_0
    IL_0030:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0036:  ldloc.0
    IL_0037:  call       instance void SpaceCraft.InventoriesHandler::AddWorldObjectToInventoryServerRpc(int32,
                                                                                                         int32,
                                                                                                         int32,
                                                                                                         bool,
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_003c:  ret

    IL_003d:  ldarg.0
    IL_003e:  ldarg.1
    IL_003f:  ldarg.2
    IL_0040:  ldarg.3
    IL_0041:  ldarg.s    result
    IL_0043:  call       instance void SpaceCraft.InventoriesHandler::AddWorldObjectToInventoryFromClient(class SpaceCraft.WorldObject,
                                                                                                          class SpaceCraft.Inventory,
                                                                                                          bool,
                                                                                                          class [mscorlib]System.Action`1<bool>)
    IL_0048:  ret
  } // end of method InventoriesHandler::AddWorldObjectToInventory

  .method private hidebysig instance void 
          AddWorldObjectToInventoryFromClient(class SpaceCraft.WorldObject worldObject,
                                              class SpaceCraft.Inventory inventory,
                                              bool grabbed,
                                              class [mscorlib]System.Action`1<bool> result) cil managed
  {
    // Code size       106 (0x6a)
    .maxstack  6
    .locals init (class SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0' V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_1)
    IL_0000:  newobj     instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::inventory
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::worldObject
    IL_0014:  ldloc.0
    IL_0015:  ldarg.s    result
    IL_0017:  stfld      class [mscorlib]System.Action`1<bool> SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::result
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0022:  ldloc.0
    IL_0023:  ldftn      instance void SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::'<AddWorldObjectToInventoryFromClient>b__0'(bool)
    IL_0029:  newobj     instance void class [mscorlib]System.Action`1<bool>::.ctor(object,
                                                                                    native int)
    IL_002e:  callvirt   instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::Enqueue(!0)
    IL_0033:  ldarg.0
    IL_0034:  ldloc.0
    IL_0035:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::worldObject
    IL_003a:  callvirt   instance int32 SpaceCraft.WorldObject::GetId()
    IL_003f:  ldloc.0
    IL_0040:  ldfld      class SpaceCraft.WorldObject SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::worldObject
    IL_0045:  callvirt   instance class SpaceCraft.Group SpaceCraft.WorldObject::GetGroup()
    IL_004a:  callvirt   instance int32 SpaceCraft.Group::get_stableHashCode()
    IL_004f:  ldloc.0
    IL_0050:  ldfld      class SpaceCraft.Inventory SpaceCraft.InventoriesHandler/'<>c__DisplayClass82_0'::inventory
    IL_0055:  callvirt   instance int32 SpaceCraft.Inventory::GetId()
    IL_005a:  ldarg.3
    IL_005b:  ldloca.s   V_1
    IL_005d:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.RpcParams
    IL_0063:  ldloc.1
    IL_0064:  call       instance void SpaceCraft.InventoriesHandler::AddWorldObjectToInventoryServerRpc(int32,
                                                                                                         int32,
                                                                                                         int32,
                                                                                                         bool,
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0069:  ret
  } // end of method InventoriesHandler::AddWorldObjectToInventoryFromClient

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       70 (0x46)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory>::.ctor()
    IL_0006:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class SpaceCraft.Inventory> SpaceCraft.InventoriesHandler::_allWorldInventories
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>>::.ctor()
    IL_0011:  stfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<class SpaceCraft.Inventory>> SpaceCraft.InventoriesHandler::_callbackQueue
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>>::.ctor()
    IL_001c:  stfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`1<bool>> SpaceCraft.InventoriesHandler::_callbackAddOrRemoveQueue
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`2<bool,int32>>::.ctor()
    IL_0027:  stfld      class [System]System.Collections.Generic.Queue`1<class [mscorlib]System.Action`2<bool,int32>> SpaceCraft.InventoriesHandler::_callbackAddNewQueue
    IL_002c:  ldarg.0
    IL_002d:  ldc.i4.s   -2
    IL_002f:  stfld      int32 SpaceCraft.InventoriesHandler::_tmpInventoriesId
    IL_0034:  ldarg.0
    IL_0035:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>>::.ctor()
    IL_003a:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<int32,class [mscorlib]System.Collections.Generic.Dictionary`2<uint64,uint32>> SpaceCraft.InventoriesHandler::_clientInventoryWatchers
    IL_003f:  ldarg.0
    IL_0040:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::.ctor()
    IL_0045:  ret
  } // end of method InventoriesHandler::.ctor

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
  } // end of method InventoriesHandler::__initializeVariables

  .method family hidebysig virtual instance void 
          __initializeRpcs() cil managed
  {
    // Code size       900 (0x384)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xb03e0f68
    IL_0006:  ldnull
    IL_0007:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_2956857192(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_000d:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0012:  ldstr      "GetOrCreateNewInventoryFromWoIDServerRpc"
    IL_0017:  ldc.i4     0x0
    IL_001c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0xf0cd024a
    IL_0027:  ldnull
    IL_0028:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_4039967306(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_002e:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0033:  ldstr      "GetOrCreateNewInventoryServerRpc"
    IL_0038:  ldc.i4     0x0
    IL_003d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0x182cbdae
    IL_0048:  ldnull
    IL_0049:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_405585326(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_004f:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0054:  ldstr      "RetrieveInventoryClientRpc"
    IL_0059:  ldc.i4     0x1
    IL_005e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0063:  ldarg.0
    IL_0064:  ldc.i4     0xd3af1342
    IL_0069:  ldnull
    IL_006a:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_3551466306(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0070:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0075:  ldstr      "TransferItemServerRpc"
    IL_007a:  ldc.i4     0x0
    IL_007f:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0084:  ldarg.0
    IL_0085:  ldc.i4     0xd73e6350
    IL_008a:  ldnull
    IL_008b:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_3611190096(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0091:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0096:  ldstr      "TransferAllSameGroupServerRpc"
    IL_009b:  ldc.i4     0x0
    IL_00a0:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_00a5:  ldarg.0
    IL_00a6:  ldc.i4     0x831abc8
    IL_00ab:  ldnull
    IL_00ac:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_137472968(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_00b2:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_00b7:  ldstr      "TransferAllItemsServerRpc"
    IL_00bc:  ldc.i4     0x0
    IL_00c1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_00c6:  ldarg.0
    IL_00c7:  ldc.i4     0xd7894ca8
    IL_00cc:  ldnull
    IL_00cd:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_3616099496(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_00d3:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_00d8:  ldstr      "AddOrRemoveItemClientRpc"
    IL_00dd:  ldc.i4     0x1
    IL_00e2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_00e7:  ldarg.0
    IL_00e8:  ldc.i4     0x5d5f03b5
    IL_00ed:  ldnull
    IL_00ee:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_1566507957(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_00f4:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_00f9:  ldstr      "AddNewItemClientRpc"
    IL_00fe:  ldc.i4     0x1
    IL_0103:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0108:  ldarg.0
    IL_0109:  ldc.i4     0xbd0ddc3b
    IL_010e:  ldnull
    IL_010f:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_3171802171(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0115:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_011a:  ldstr      "AddNewItemToInventoryServerRpc"
    IL_011f:  ldc.i4     0x0
    IL_0124:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0129:  ldarg.0
    IL_012a:  ldc.i4     0xb9188df1
    IL_012f:  ldnull
    IL_0130:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_3105394161(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0136:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_013b:  ldstr      "AddExistingItemToInventoryServerRpc"
    IL_0140:  ldc.i4     0x0
    IL_0145:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_014a:  ldarg.0
    IL_014b:  ldc.i4     0x2f1b29ce
    IL_0150:  ldnull
    IL_0151:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_790309326(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0157:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_015c:  ldstr      "RemoveItemFromInventoryServerRpc"
    IL_0161:  ldc.i4     0x0
    IL_0166:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_016b:  ldarg.0
    IL_016c:  ldc.i4     0x1241ff30
    IL_0171:  ldnull
    IL_0172:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_306315056(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0178:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_017d:  ldstr      "RemoveItemsFromInventoryServerRpc"
    IL_0182:  ldc.i4     0x0
    IL_0187:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_018c:  ldarg.0
    IL_018d:  ldc.i4     0x2baa62d
    IL_0192:  ldnull
    IL_0193:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_45786669(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0199:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_019e:  ldstr      "RemoveWorldObjectsFromInventoryServerRpc"
    IL_01a3:  ldc.i4     0x0
    IL_01a8:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_01ad:  ldarg.0
    IL_01ae:  ldc.i4     0x5a7480b
    IL_01b3:  ldnull
    IL_01b4:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_94849035(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_01ba:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_01bf:  ldstr      "RemoveAndDestroyAllItemsFromInventoryServerRpc"
    IL_01c4:  ldc.i4     0x0
    IL_01c9:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_01ce:  ldarg.0
    IL_01cf:  ldc.i4     0xff32ad1e
    IL_01d4:  ldnull
    IL_01d5:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_4281511198(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_01db:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_01e0:  ldstr      "RetrieveInventoryLogisticsServerRpc"
    IL_01e5:  ldc.i4     0x0
    IL_01ea:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_01ef:  ldarg.0
    IL_01f0:  ldc.i4     0xa51634f7
    IL_01f5:  ldnull
    IL_01f6:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_2769695991(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_01fc:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0201:  ldstr      "DirtyInventoryLogisticsServerRpc"
    IL_0206:  ldc.i4     0x0
    IL_020b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0210:  ldarg.0
    IL_0211:  ldc.i4     0xb9adcc2e
    IL_0216:  ldnull
    IL_0217:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_3115174958(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_021d:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0222:  ldstr      "DirtyInventoryLogisticsClientRpc"
    IL_0227:  ldc.i4     0x1
    IL_022c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0231:  ldarg.0
    IL_0232:  ldc.i4     0xcfe2f6a3
    IL_0237:  ldnull
    IL_0238:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_3487757987(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_023e:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0243:  ldstr      "SetInventorySizeServerRpc"
    IL_0248:  ldc.i4     0x0
    IL_024d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0252:  ldarg.0
    IL_0253:  ldc.i4     0x8507233d
    IL_0258:  ldnull
    IL_0259:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_2231837501(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_025f:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0264:  ldstr      "LockInventoryContentServerRpc"
    IL_0269:  ldc.i4     0x0
    IL_026e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0273:  ldarg.0
    IL_0274:  ldc.i4     0x5432e36b
    IL_0279:  ldnull
    IL_027a:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_1412621163(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0280:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0285:  ldstr      "SortInventoryServerRpc"
    IL_028a:  ldc.i4     0x0
    IL_028f:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0294:  ldarg.0
    IL_0295:  ldc.i4     0x9f68f7fa
    IL_029a:  ldnull
    IL_029b:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_2674456570(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_02a1:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_02a6:  ldstr      "GetInventoryFromFirstWorldObjectOfGroupServerRpc"
    IL_02ab:  ldc.i4     0x0
    IL_02b0:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_02b5:  ldarg.0
    IL_02b6:  ldc.i4     0xd6c29798
    IL_02bb:  ldnull
    IL_02bc:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_3603077016(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_02c2:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_02c7:  ldstr      "BeginInventoryWatchServerRpc"
    IL_02cc:  ldc.i4     0x0
    IL_02d1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_02d6:  ldarg.0
    IL_02d7:  ldc.i4     0x54fe4d00
    IL_02dc:  ldnull
    IL_02dd:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_1425952000(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_02e3:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_02e8:  ldstr      "StopInventoryWatchServerRpc"
    IL_02ed:  ldc.i4     0x0
    IL_02f2:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_02f7:  ldarg.0
    IL_02f8:  ldc.i4     0x8349dce1
    IL_02fd:  ldnull
    IL_02fe:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_2202655969(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0304:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0309:  ldstr      "DirtyInventoryClientRpc"
    IL_030e:  ldc.i4     0x1
    IL_0313:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0318:  ldarg.0
    IL_0319:  ldc.i4     0x711c8a5
    IL_031e:  ldnull
    IL_031f:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_118605989(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0325:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_032a:  ldstr      "CloseInventoryOnWatchersClientRpc"
    IL_032f:  ldc.i4     0x1
    IL_0334:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0339:  ldarg.0
    IL_033a:  ldc.i4     0x4730cf18
    IL_033f:  ldnull
    IL_0340:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_1194381080(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0346:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_034b:  ldstr      "CheckInventoryWatchAndDirtyServerRpc"
    IL_0350:  ldc.i4     0x0
    IL_0355:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_035a:  ldarg.0
    IL_035b:  ldc.i4     0x76fbe7b9
    IL_0360:  ldnull
    IL_0361:  ldftn      void SpaceCraft.InventoriesHandler::__rpc_handler_1996220345(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                      valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_0367:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_036c:  ldstr      "AddWorldObjectToInventoryServerRpc"
    IL_0371:  ldc.i4     0x0
    IL_0376:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_037b:  nop
    IL_037c:  ldarg.0
    IL_037d:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__initializeRpcs()
    IL_0382:  nop
    IL_0383:  ret
  } // end of method InventoriesHandler::__initializeRpcs

  .method private hidebysig static void  __rpc_handler_2956857192(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
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
    IL_0046:  castclass  SpaceCraft.InventoriesHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.InventoriesHandler::GetOrCreateNewInventoryFromWoIDServerRpc(int32,
                                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method InventoriesHandler::__rpc_handler_2956857192

  .method private hidebysig static void  __rpc_handler_4039967306(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       311 (0x137)
    .maxstack  8
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             bool V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32[] V_6,
             bool V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             int32[] V_10,
             bool V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_12,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_13,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_14)
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
    IL_0069:  ldloca     V_7
    IL_006d:  ldloca     V_8
    IL_0071:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0077:  ldloc      V_8
    IL_007b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0080:  ldnull
    IL_0081:  stloc      V_6
    IL_0085:  ldloc      V_7
    IL_0089:  brfalse    IL_00a9

    IL_008e:  ldarga     reader
    IL_0092:  ldloca     V_6
    IL_0096:  ldloca     V_9
    IL_009a:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00a0:  ldloc      V_9
    IL_00a4:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00a9:  nop
    IL_00aa:  ldarga     reader
    IL_00ae:  ldloca     V_11
    IL_00b2:  ldloca     V_12
    IL_00b6:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00bc:  ldloc      V_12
    IL_00c0:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00c5:  ldnull
    IL_00c6:  stloc      V_10
    IL_00ca:  ldloc      V_11
    IL_00ce:  brfalse    IL_00ee

    IL_00d3:  ldarga     reader
    IL_00d7:  ldloca     V_10
    IL_00db:  ldloca     V_13
    IL_00df:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00e5:  ldloc      V_13
    IL_00e9:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00ee:  nop
    IL_00ef:  ldarg.2
    IL_00f0:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_00f5:  stloc      V_14
    IL_00f9:  ldarg.0
    IL_00fa:  ldc.i4     0x1
    IL_00ff:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0104:  ldarg.0
    IL_0105:  castclass  SpaceCraft.InventoriesHandler
    IL_010a:  ldloc      V_1
    IL_010e:  ldloc      V_3
    IL_0112:  ldloc      V_4
    IL_0116:  ldloc      V_5
    IL_011a:  ldloc      V_6
    IL_011e:  ldloc      V_10
    IL_0122:  ldloc      V_14
    IL_0126:  callvirt   instance void SpaceCraft.InventoriesHandler::GetOrCreateNewInventoryServerRpc(bool,
                                                                                                       int32,
                                                                                                       int32,
                                                                                                       int32,
                                                                                                       int32[],
                                                                                                       int32[],
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_012b:  ldarg.0
    IL_012c:  ldc.i4     0x0
    IL_0131:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0136:  ret
  } // end of method InventoriesHandler::__rpc_handler_4039967306

  .method private hidebysig static void  __rpc_handler_405585326(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       294 (0x126)
    .maxstack  7
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             int32[] V_3,
             bool V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             int32[] V_7,
             bool V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_10,
             bool V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_12,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_13)
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
    IL_0041:  ldloca     V_4
    IL_0045:  ldloca     V_5
    IL_0049:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_004f:  ldloc      V_5
    IL_0053:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0058:  ldnull
    IL_0059:  stloc      V_3
    IL_005d:  ldloc      V_4
    IL_0061:  brfalse    IL_0081

    IL_0066:  ldarga     reader
    IL_006a:  ldloca     V_3
    IL_006e:  ldloca     V_6
    IL_0072:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0078:  ldloc      V_6
    IL_007c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0081:  nop
    IL_0082:  ldarga     reader
    IL_0086:  ldloca     V_8
    IL_008a:  ldloca     V_9
    IL_008e:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0094:  ldloc      V_9
    IL_0098:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_009d:  ldnull
    IL_009e:  stloc      V_7
    IL_00a2:  ldloc      V_8
    IL_00a6:  brfalse    IL_00c6

    IL_00ab:  ldarga     reader
    IL_00af:  ldloca     V_7
    IL_00b3:  ldloca     V_10
    IL_00b7:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00bd:  ldloc      V_10
    IL_00c1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00c6:  nop
    IL_00c7:  ldarga     reader
    IL_00cb:  ldloca     V_11
    IL_00cf:  ldloca     V_12
    IL_00d3:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00d9:  ldloc      V_12
    IL_00dd:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00e2:  ldarg.2
    IL_00e3:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_00e8:  stloc      V_13
    IL_00ec:  ldarg.0
    IL_00ed:  ldc.i4     0x1
    IL_00f2:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00f7:  ldarg.0
    IL_00f8:  castclass  SpaceCraft.InventoriesHandler
    IL_00fd:  ldloc      V_1
    IL_0101:  ldloc      V_2
    IL_0105:  ldloc      V_3
    IL_0109:  ldloc      V_7
    IL_010d:  ldloc      V_11
    IL_0111:  ldloc      V_13
    IL_0115:  callvirt   instance void SpaceCraft.InventoriesHandler::RetrieveInventoryClientRpc(int32,
                                                                                                 int32,
                                                                                                 int32[],
                                                                                                 int32[],
                                                                                                 bool,
                                                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_011a:  ldarg.0
    IL_011b:  ldc.i4     0x0
    IL_0120:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0125:  ret
  } // end of method InventoriesHandler::__rpc_handler_405585326

  .method private hidebysig static void  __rpc_handler_3551466306(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       134 (0x86)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_4)
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
    IL_004a:  ldarg.2
    IL_004b:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0050:  stloc      V_4
    IL_0054:  ldarg.0
    IL_0055:  ldc.i4     0x1
    IL_005a:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_005f:  ldarg.0
    IL_0060:  castclass  SpaceCraft.InventoriesHandler
    IL_0065:  ldloc      V_1
    IL_0069:  ldloc      V_2
    IL_006d:  ldloc      V_3
    IL_0071:  ldloc      V_4
    IL_0075:  callvirt   instance void SpaceCraft.InventoriesHandler::TransferItemServerRpc(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_007a:  ldarg.0
    IL_007b:  ldc.i4     0x0
    IL_0080:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0085:  ret
  } // end of method InventoriesHandler::__rpc_handler_3551466306

  .method private hidebysig static void  __rpc_handler_3611190096(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       134 (0x86)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_4)
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
    IL_004a:  ldarg.2
    IL_004b:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0050:  stloc      V_4
    IL_0054:  ldarg.0
    IL_0055:  ldc.i4     0x1
    IL_005a:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_005f:  ldarg.0
    IL_0060:  castclass  SpaceCraft.InventoriesHandler
    IL_0065:  ldloc      V_1
    IL_0069:  ldloc      V_2
    IL_006d:  ldloc      V_3
    IL_0071:  ldloc      V_4
    IL_0075:  callvirt   instance void SpaceCraft.InventoriesHandler::TransferAllSameGroupServerRpc(int32,
                                                                                                    int32,
                                                                                                    int32,
                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_007a:  ldarg.0
    IL_007b:  ldc.i4     0x0
    IL_0080:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0085:  ret
  } // end of method InventoriesHandler::__rpc_handler_3611190096

  .method private hidebysig static void  __rpc_handler_137472968(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       117 (0x75)
    .maxstack  4
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_3)
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
    IL_003d:  ldarg.2
    IL_003e:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0043:  stloc      V_3
    IL_0047:  ldarg.0
    IL_0048:  ldc.i4     0x1
    IL_004d:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0052:  ldarg.0
    IL_0053:  castclass  SpaceCraft.InventoriesHandler
    IL_0058:  ldloc      V_1
    IL_005c:  ldloc      V_2
    IL_0060:  ldloc      V_3
    IL_0064:  callvirt   instance void SpaceCraft.InventoriesHandler::TransferAllItemsServerRpc(int32,
                                                                                                int32,
                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0069:  ldarg.0
    IL_006a:  ldc.i4     0x0
    IL_006f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0074:  ret
  } // end of method InventoriesHandler::__rpc_handler_137472968

  .method private hidebysig static void  __rpc_handler_3616099496(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
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
    IL_0054:  castclass  SpaceCraft.InventoriesHandler
    IL_0059:  ldloc      V_1
    IL_005d:  ldloc      V_3
    IL_0061:  callvirt   instance void SpaceCraft.InventoriesHandler::AddOrRemoveItemClientRpc(bool,
                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0066:  ldarg.0
    IL_0067:  ldc.i4     0x0
    IL_006c:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0071:  ret
  } // end of method InventoriesHandler::__rpc_handler_3616099496

  .method private hidebysig static void  __rpc_handler_1566507957(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       131 (0x83)
    .maxstack  4
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             bool V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_2,
             int32 V_3,
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
    IL_0023:  ldarga     reader
    IL_0027:  ldloca     V_1
    IL_002b:  ldloca     V_2
    IL_002f:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0035:  ldloc      V_2
    IL_0039:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_003e:  ldarg      reader
    IL_0042:  ldloca     V_3
    IL_0046:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_004b:  ldarg.2
    IL_004c:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_0051:  stloc      V_4
    IL_0055:  ldarg.0
    IL_0056:  ldc.i4     0x1
    IL_005b:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0060:  ldarg.0
    IL_0061:  castclass  SpaceCraft.InventoriesHandler
    IL_0066:  ldloc      V_1
    IL_006a:  ldloc      V_3
    IL_006e:  ldloc      V_4
    IL_0072:  callvirt   instance void SpaceCraft.InventoriesHandler::AddNewItemClientRpc(bool,
                                                                                          int32,
                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0077:  ldarg.0
    IL_0078:  ldc.i4     0x0
    IL_007d:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0082:  ret
  } // end of method InventoriesHandler::__rpc_handler_1566507957

  .method private hidebysig static void  __rpc_handler_3171802171(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       117 (0x75)
    .maxstack  4
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_3)
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
    IL_003d:  ldarg.2
    IL_003e:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0043:  stloc      V_3
    IL_0047:  ldarg.0
    IL_0048:  ldc.i4     0x1
    IL_004d:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0052:  ldarg.0
    IL_0053:  castclass  SpaceCraft.InventoriesHandler
    IL_0058:  ldloc      V_1
    IL_005c:  ldloc      V_2
    IL_0060:  ldloc      V_3
    IL_0064:  callvirt   instance void SpaceCraft.InventoriesHandler::AddNewItemToInventoryServerRpc(int32,
                                                                                                     int32,
                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0069:  ldarg.0
    IL_006a:  ldc.i4     0x0
    IL_006f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0074:  ret
  } // end of method InventoriesHandler::__rpc_handler_3171802171

  .method private hidebysig static void  __rpc_handler_3105394161(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       148 (0x94)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
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
    IL_0058:  ldarg.2
    IL_0059:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_005e:  stloc      V_5
    IL_0062:  ldarg.0
    IL_0063:  ldc.i4     0x1
    IL_0068:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_006d:  ldarg.0
    IL_006e:  castclass  SpaceCraft.InventoriesHandler
    IL_0073:  ldloc      V_1
    IL_0077:  ldloc      V_2
    IL_007b:  ldloc      V_3
    IL_007f:  ldloc      V_5
    IL_0083:  callvirt   instance void SpaceCraft.InventoriesHandler::AddExistingItemToInventoryServerRpc(int32,
                                                                                                          int32,
                                                                                                          bool,
                                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0088:  ldarg.0
    IL_0089:  ldc.i4     0x0
    IL_008e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0093:  ret
  } // end of method InventoriesHandler::__rpc_handler_3105394161

  .method private hidebysig static void  __rpc_handler_790309326(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       148 (0x94)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
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
    IL_0058:  ldarg.2
    IL_0059:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_005e:  stloc      V_5
    IL_0062:  ldarg.0
    IL_0063:  ldc.i4     0x1
    IL_0068:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_006d:  ldarg.0
    IL_006e:  castclass  SpaceCraft.InventoriesHandler
    IL_0073:  ldloc      V_1
    IL_0077:  ldloc      V_2
    IL_007b:  ldloc      V_3
    IL_007f:  ldloc      V_5
    IL_0083:  callvirt   instance void SpaceCraft.InventoriesHandler::RemoveItemFromInventoryServerRpc(int32,
                                                                                                       int32,
                                                                                                       bool,
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0088:  ldarg.0
    IL_0089:  ldc.i4     0x0
    IL_008e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0093:  ret
  } // end of method InventoriesHandler::__rpc_handler_790309326

  .method private hidebysig static void  __rpc_handler_306315056(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       204 (0xcc)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32[] V_1,
             bool V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             int32 V_5,
             bool V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7,
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
    IL_0068:  ldarg      reader
    IL_006c:  ldloca     V_5
    IL_0070:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_0075:  ldarga     reader
    IL_0079:  ldloca     V_6
    IL_007d:  ldloca     V_7
    IL_0081:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0087:  ldloc      V_7
    IL_008b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0090:  ldarg.2
    IL_0091:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0096:  stloc      V_8
    IL_009a:  ldarg.0
    IL_009b:  ldc.i4     0x1
    IL_00a0:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a5:  ldarg.0
    IL_00a6:  castclass  SpaceCraft.InventoriesHandler
    IL_00ab:  ldloc      V_1
    IL_00af:  ldloc      V_5
    IL_00b3:  ldloc      V_6
    IL_00b7:  ldloc      V_8
    IL_00bb:  callvirt   instance void SpaceCraft.InventoriesHandler::RemoveItemsFromInventoryServerRpc(int32[],
                                                                                                        int32,
                                                                                                        bool,
                                                                                                        valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00c0:  ldarg.0
    IL_00c1:  ldc.i4     0x0
    IL_00c6:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00cb:  ret
  } // end of method InventoriesHandler::__rpc_handler_306315056

  .method private hidebysig static void  __rpc_handler_45786669(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       204 (0xcc)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32[] V_1,
             bool V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             int32 V_5,
             bool V_6,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_7,
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
    IL_0068:  ldarg      reader
    IL_006c:  ldloca     V_5
    IL_0070:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_0075:  ldarga     reader
    IL_0079:  ldloca     V_6
    IL_007d:  ldloca     V_7
    IL_0081:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0087:  ldloc      V_7
    IL_008b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0090:  ldarg.2
    IL_0091:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0096:  stloc      V_8
    IL_009a:  ldarg.0
    IL_009b:  ldc.i4     0x1
    IL_00a0:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a5:  ldarg.0
    IL_00a6:  castclass  SpaceCraft.InventoriesHandler
    IL_00ab:  ldloc      V_1
    IL_00af:  ldloc      V_5
    IL_00b3:  ldloc      V_6
    IL_00b7:  ldloc      V_8
    IL_00bb:  callvirt   instance void SpaceCraft.InventoriesHandler::RemoveWorldObjectsFromInventoryServerRpc(int32[],
                                                                                                               int32,
                                                                                                               bool,
                                                                                                               valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00c0:  ldarg.0
    IL_00c1:  ldc.i4     0x0
    IL_00c6:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00cb:  ret
  } // end of method InventoriesHandler::__rpc_handler_45786669

  .method private hidebysig static void  __rpc_handler_94849035(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
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
    IL_0046:  castclass  SpaceCraft.InventoriesHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.InventoriesHandler::RemoveAndDestroyAllItemsFromInventoryServerRpc(int32,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method InventoriesHandler::__rpc_handler_94849035

  .method private hidebysig static void  __rpc_handler_4281511198(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
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
    IL_0046:  castclass  SpaceCraft.InventoriesHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.InventoriesHandler::RetrieveInventoryLogisticsServerRpc(int32,
                                                                                                          valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method InventoriesHandler::__rpc_handler_4281511198

  .method private hidebysig static void  __rpc_handler_2769695991(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       263 (0x107)
    .maxstack  6
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32[] V_2,
             bool V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             int32[] V_6,
             bool V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             int32 V_10,
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
    IL_0034:  ldloca     V_3
    IL_0038:  ldloca     V_4
    IL_003c:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0042:  ldloc      V_4
    IL_0046:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_004b:  ldnull
    IL_004c:  stloc      V_2
    IL_0050:  ldloc      V_3
    IL_0054:  brfalse    IL_0074

    IL_0059:  ldarga     reader
    IL_005d:  ldloca     V_2
    IL_0061:  ldloca     V_5
    IL_0065:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_006b:  ldloc      V_5
    IL_006f:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0074:  nop
    IL_0075:  ldarga     reader
    IL_0079:  ldloca     V_7
    IL_007d:  ldloca     V_8
    IL_0081:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0087:  ldloc      V_8
    IL_008b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0090:  ldnull
    IL_0091:  stloc      V_6
    IL_0095:  ldloc      V_7
    IL_0099:  brfalse    IL_00b9

    IL_009e:  ldarga     reader
    IL_00a2:  ldloca     V_6
    IL_00a6:  ldloca     V_9
    IL_00aa:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00b0:  ldloc      V_9
    IL_00b4:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b9:  nop
    IL_00ba:  ldarg      reader
    IL_00be:  ldloca     V_10
    IL_00c2:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_00c7:  ldarg.2
    IL_00c8:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_00cd:  stloc      V_11
    IL_00d1:  ldarg.0
    IL_00d2:  ldc.i4     0x1
    IL_00d7:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00dc:  ldarg.0
    IL_00dd:  castclass  SpaceCraft.InventoriesHandler
    IL_00e2:  ldloc      V_1
    IL_00e6:  ldloc      V_2
    IL_00ea:  ldloc      V_6
    IL_00ee:  ldloc      V_10
    IL_00f2:  ldloc      V_11
    IL_00f6:  callvirt   instance void SpaceCraft.InventoriesHandler::DirtyInventoryLogisticsServerRpc(int32,
                                                                                                       int32[],
                                                                                                       int32[],
                                                                                                       int32,
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_00fb:  ldarg.0
    IL_00fc:  ldc.i4     0x0
    IL_0101:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0106:  ret
  } // end of method InventoriesHandler::__rpc_handler_2769695991

  .method private hidebysig static void  __rpc_handler_3115174958(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       263 (0x107)
    .maxstack  6
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32[] V_2,
             bool V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             int32[] V_6,
             bool V_7,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             int32 V_10,
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
    IL_0023:  ldarg      reader
    IL_0027:  ldloca     V_1
    IL_002b:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
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
    IL_0054:  brfalse    IL_0074

    IL_0059:  ldarga     reader
    IL_005d:  ldloca     V_2
    IL_0061:  ldloca     V_5
    IL_0065:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_006b:  ldloc      V_5
    IL_006f:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0074:  nop
    IL_0075:  ldarga     reader
    IL_0079:  ldloca     V_7
    IL_007d:  ldloca     V_8
    IL_0081:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0087:  ldloc      V_8
    IL_008b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0090:  ldnull
    IL_0091:  stloc      V_6
    IL_0095:  ldloc      V_7
    IL_0099:  brfalse    IL_00b9

    IL_009e:  ldarga     reader
    IL_00a2:  ldloca     V_6
    IL_00a6:  ldloca     V_9
    IL_00aa:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00b0:  ldloc      V_9
    IL_00b4:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00b9:  nop
    IL_00ba:  ldarg      reader
    IL_00be:  ldloca     V_10
    IL_00c2:  call       void [Unity.Netcode.Runtime]Unity.Netcode.ByteUnpacker::ReadValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                                    int32&)
    IL_00c7:  ldarg.2
    IL_00c8:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_00cd:  stloc      V_11
    IL_00d1:  ldarg.0
    IL_00d2:  ldc.i4     0x1
    IL_00d7:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00dc:  ldarg.0
    IL_00dd:  castclass  SpaceCraft.InventoriesHandler
    IL_00e2:  ldloc      V_1
    IL_00e6:  ldloc      V_2
    IL_00ea:  ldloc      V_6
    IL_00ee:  ldloc      V_10
    IL_00f2:  ldloc      V_11
    IL_00f6:  callvirt   instance void SpaceCraft.InventoriesHandler::DirtyInventoryLogisticsClientRpc(int32,
                                                                                                       int32[],
                                                                                                       int32[],
                                                                                                       int32,
                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_00fb:  ldarg.0
    IL_00fc:  ldc.i4     0x0
    IL_0101:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0106:  ret
  } // end of method InventoriesHandler::__rpc_handler_3115174958

  .method private hidebysig static void  __rpc_handler_3487757987(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       134 (0x86)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_3,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_4)
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
    IL_004a:  ldarg.2
    IL_004b:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0050:  stloc      V_4
    IL_0054:  ldarg.0
    IL_0055:  ldc.i4     0x1
    IL_005a:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_005f:  ldarg.0
    IL_0060:  castclass  SpaceCraft.InventoriesHandler
    IL_0065:  ldloc      V_1
    IL_0069:  ldloc      V_2
    IL_006d:  ldloc      V_3
    IL_0071:  ldloc      V_4
    IL_0075:  callvirt   instance void SpaceCraft.InventoriesHandler::SetInventorySizeServerRpc(int32,
                                                                                                int32,
                                                                                                valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_007a:  ldarg.0
    IL_007b:  ldc.i4     0x0
    IL_0080:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0085:  ret
  } // end of method InventoriesHandler::__rpc_handler_3487757987

  .method private hidebysig static void  __rpc_handler_2231837501(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       162 (0xa2)
    .maxstack  5
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             bool V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_3,
             float32 V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_6)
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
    IL_004b:  ldarga     reader
    IL_004f:  ldloca     V_4
    IL_0053:  ldloca     V_5
    IL_0057:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_005d:  ldloc      V_5
    IL_0061:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<float32>(!!0&,
                                                                                                                     valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0066:  ldarg.2
    IL_0067:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_006c:  stloc      V_6
    IL_0070:  ldarg.0
    IL_0071:  ldc.i4     0x1
    IL_0076:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_007b:  ldarg.0
    IL_007c:  castclass  SpaceCraft.InventoriesHandler
    IL_0081:  ldloc      V_1
    IL_0085:  ldloc      V_2
    IL_0089:  ldloc      V_4
    IL_008d:  ldloc      V_6
    IL_0091:  callvirt   instance void SpaceCraft.InventoriesHandler::LockInventoryContentServerRpc(int32,
                                                                                                    bool,
                                                                                                    float32,
                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0096:  ldarg.0
    IL_0097:  ldc.i4     0x0
    IL_009c:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a1:  ret
  } // end of method InventoriesHandler::__rpc_handler_2231837501

  .method private hidebysig static void  __rpc_handler_1412621163(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       86 (0x56)
    .maxstack  2
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1)
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
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4     0x1
    IL_0036:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_003b:  ldarg.0
    IL_003c:  castclass  SpaceCraft.InventoriesHandler
    IL_0041:  ldloc      V_1
    IL_0045:  callvirt   instance void SpaceCraft.InventoriesHandler::SortInventoryServerRpc(int32)
    IL_004a:  ldarg.0
    IL_004b:  ldc.i4     0x0
    IL_0050:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0055:  ret
  } // end of method InventoriesHandler::__rpc_handler_1412621163

  .method private hidebysig static void  __rpc_handler_2674456570(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       117 (0x75)
    .maxstack  4
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_3)
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
    IL_003d:  ldarg.2
    IL_003e:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_0043:  stloc      V_3
    IL_0047:  ldarg.0
    IL_0048:  ldc.i4     0x1
    IL_004d:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0052:  ldarg.0
    IL_0053:  castclass  SpaceCraft.InventoriesHandler
    IL_0058:  ldloc      V_1
    IL_005c:  ldloc      V_2
    IL_0060:  ldloc      V_3
    IL_0064:  callvirt   instance void SpaceCraft.InventoriesHandler::GetInventoryFromFirstWorldObjectOfGroupServerRpc(int32,
                                                                                                                       int32,
                                                                                                                       valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0069:  ldarg.0
    IL_006a:  ldc.i4     0x0
    IL_006f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0074:  ret
  } // end of method InventoriesHandler::__rpc_handler_2674456570

  .method private hidebysig static void  __rpc_handler_3603077016(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
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
    IL_0046:  castclass  SpaceCraft.InventoriesHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.InventoriesHandler::BeginInventoryWatchServerRpc(int32,
                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method InventoriesHandler::__rpc_handler_3603077016

  .method private hidebysig static void  __rpc_handler_1425952000(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
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
    IL_0046:  castclass  SpaceCraft.InventoriesHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.InventoriesHandler::StopInventoryWatchServerRpc(int32,
                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method InventoriesHandler::__rpc_handler_1425952000

  .method private hidebysig static void  __rpc_handler_2202655969(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       294 (0x126)
    .maxstack  7
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             int32[] V_3,
             bool V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_6,
             int32[] V_7,
             bool V_8,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_9,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_10,
             bool V_11,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_12,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_13)
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
    IL_0041:  ldloca     V_4
    IL_0045:  ldloca     V_5
    IL_0049:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_004f:  ldloc      V_5
    IL_0053:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0058:  ldnull
    IL_0059:  stloc      V_3
    IL_005d:  ldloc      V_4
    IL_0061:  brfalse    IL_0081

    IL_0066:  ldarga     reader
    IL_006a:  ldloca     V_3
    IL_006e:  ldloca     V_6
    IL_0072:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0078:  ldloc      V_6
    IL_007c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0081:  nop
    IL_0082:  ldarga     reader
    IL_0086:  ldloca     V_8
    IL_008a:  ldloca     V_9
    IL_008e:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_0094:  ldloc      V_9
    IL_0098:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_009d:  ldnull
    IL_009e:  stloc      V_7
    IL_00a2:  ldloc      V_8
    IL_00a6:  brfalse    IL_00c6

    IL_00ab:  ldarga     reader
    IL_00af:  ldloca     V_7
    IL_00b3:  ldloca     V_10
    IL_00b7:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00bd:  ldloc      V_10
    IL_00c1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<int32>(!!0[]&,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00c6:  nop
    IL_00c7:  ldarga     reader
    IL_00cb:  ldloca     V_11
    IL_00cf:  ldloca     V_12
    IL_00d3:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_00d9:  ldloc      V_12
    IL_00dd:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_00e2:  ldarg.2
    IL_00e3:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_00e8:  stloc      V_13
    IL_00ec:  ldarg.0
    IL_00ed:  ldc.i4     0x1
    IL_00f2:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00f7:  ldarg.0
    IL_00f8:  castclass  SpaceCraft.InventoriesHandler
    IL_00fd:  ldloc      V_1
    IL_0101:  ldloc      V_2
    IL_0105:  ldloc      V_3
    IL_0109:  ldloc      V_7
    IL_010d:  ldloc      V_11
    IL_0111:  ldloc      V_13
    IL_0115:  callvirt   instance void SpaceCraft.InventoriesHandler::DirtyInventoryClientRpc(int32,
                                                                                              int32,
                                                                                              int32[],
                                                                                              int32[],
                                                                                              bool,
                                                                                              valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_011a:  ldarg.0
    IL_011b:  ldc.i4     0x0
    IL_0120:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0125:  ret
  } // end of method InventoriesHandler::__rpc_handler_2202655969

  .method private hidebysig static void  __rpc_handler_118605989(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                 valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       83 (0x53)
    .maxstack  2
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams V_1)
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
    IL_0024:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Client
    IL_0029:  stloc      V_1
    IL_002d:  ldarg.0
    IL_002e:  ldc.i4     0x1
    IL_0033:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0038:  ldarg.0
    IL_0039:  castclass  SpaceCraft.InventoriesHandler
    IL_003e:  ldloc      V_1
    IL_0042:  callvirt   instance void SpaceCraft.InventoriesHandler::CloseInventoryOnWatchersClientRpc(valuetype [Unity.Netcode.Runtime]Unity.Netcode.ClientRpcParams)
    IL_0047:  ldarg.0
    IL_0048:  ldc.i4     0x0
    IL_004d:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0052:  ret
  } // end of method InventoriesHandler::__rpc_handler_118605989

  .method private hidebysig static void  __rpc_handler_1194381080(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
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
    IL_0046:  castclass  SpaceCraft.InventoriesHandler
    IL_004b:  ldloc      V_1
    IL_004f:  ldloc      V_2
    IL_0053:  callvirt   instance void SpaceCraft.InventoriesHandler::CheckInventoryWatchAndDirtyServerRpc(int32,
                                                                                                           valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0058:  ldarg.0
    IL_0059:  ldc.i4     0x0
    IL_005e:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0063:  ret
  } // end of method InventoriesHandler::__rpc_handler_1194381080

  .method private hidebysig static void  __rpc_handler_1996220345(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader reader,
                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams rpcParams) cil managed
  {
    // Code size       165 (0xa5)
    .maxstack  6
    .locals init (class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             bool V_4,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives V_5,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams V_6)
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
    IL_0052:  ldloca     V_5
    IL_0056:  initobj    [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives
    IL_005c:  ldloc      V_5
    IL_0060:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader::ReadValueSafe<bool>(!!0&,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter/ForPrimitives)
    IL_0065:  ldarg.2
    IL_0066:  ldfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams::Ext
    IL_006b:  stloc      V_6
    IL_006f:  ldarg.0
    IL_0070:  ldc.i4     0x1
    IL_0075:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_007a:  ldarg.0
    IL_007b:  castclass  SpaceCraft.InventoriesHandler
    IL_0080:  ldloc      V_1
    IL_0084:  ldloc      V_2
    IL_0088:  ldloc      V_3
    IL_008c:  ldloc      V_4
    IL_0090:  ldloc      V_6
    IL_0094:  callvirt   instance void SpaceCraft.InventoriesHandler::AddWorldObjectToInventoryServerRpc(int32,
                                                                                                         int32,
                                                                                                         int32,
                                                                                                         bool,
                                                                                                         valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcParams)
    IL_0099:  ldarg.0
    IL_009a:  ldc.i4     0x0
    IL_009f:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_00a4:  ret
  } // end of method InventoriesHandler::__rpc_handler_1996220345

  .method famorassem hidebysig strict virtual 
          instance string  __getTypeName() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "InventoriesHandler"
    IL_0005:  ret
  } // end of method InventoriesHandler::__getTypeName

  .event class [mscorlib]System.Action`1<class SpaceCraft.WorldObject> OnWorldObjectFromSceneRetrieved
  {
    .addon instance void SpaceCraft.InventoriesHandler::add_OnWorldObjectFromSceneRetrieved(class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>)
    .removeon instance void SpaceCraft.InventoriesHandler::remove_OnWorldObjectFromSceneRetrieved(class [mscorlib]System.Action`1<class SpaceCraft.WorldObject>)
  } // end of event InventoriesHandler::OnWorldObjectFromSceneRetrieved
} // end of class SpaceCraft.InventoriesHandler
