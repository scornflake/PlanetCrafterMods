.class public auto ansi beforefieldinit SpaceCraft.WorldObject
       extends [mscorlib]System.Object
{
  .field private int32 _id
  .field private class SpaceCraft.Group _group
  .field private valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 _position
  .field private valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion _rotation
  .field private valuetype [UnityEngine.CoreModule]UnityEngine.Color _color
  .field private string _text
  .field private class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> _linkedGroups
  .field private int32 _linkedInventoryId
  .field private class [mscorlib]System.Collections.Generic.List`1<int32> _secondaryInventoriesId
  .field private class [mscorlib]System.Collections.Generic.List`1<int32> _panelsId
  .field private float32 _growth
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> _unitsGenerations
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> _unitsMultiplier
  .field private class [UnityEngine.CoreModule]UnityEngine.GameObject _worldGameObject
  .field private int32 _setting
  .field private valuetype SpaceCraft.DataConfig/GeneticTraitType _geneticTraitType
  .field private int32 _geneticTraitValue
  .field private float32 _hunger
  .field private float32 _petTime
  .field private valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int _count
  .field private int32 _linkedWo
  .field private bool _dontSaveMe
  .field private float32 _lockInInventoryTime
  .field private float32 _energyLevel
  .field private bool _isFromDb
  .field private int32 _planetHash
  .field private int32 _planetLinkedHash
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 id,
                               class SpaceCraft.Group group,
                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                               valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                               int32 planetHash,
                               int32 planetLinkedHash,
                               valuetype [UnityEngine.CoreModule]UnityEngine.Color color,
                               string text,
                               class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> linkedGroups,
                               [opt] int32 linkedInventoryId,
                               [opt] class [mscorlib]System.Collections.Generic.List`1<int32> secondaryInventoriesId,
                               [opt] class [mscorlib]System.Collections.Generic.List`1<int32> panelsId,
                               [opt] int32 growth,
                               [opt] int32 setting,
                               [opt] int32 geneticTraitIndex,
                               [opt] int32 geneticTraitValue,
                               [opt] float32 hunger,
                               [opt] valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int count,
                               [opt] int32 linkedWo) cil managed
  {
    .param [10] = int32(0x00000000)
    .param [11] = nullref
    .param [12] = nullref
    .param [13] = int32(0x00000000)
    .param [14] = int32(0x00000000)
    .param [15] = int32(0x00000000)
    .param [16] = int32(0x00000000)
    .param [17] = float32(0.)
    .param [18] = nullref
    .param [19] = int32(0x00000000)
    // Code size       216 (0xd8)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0006:  stfld      class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::_secondaryInventoriesId
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::.ctor()
    IL_0011:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::.ctor()
    IL_001c:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_0021:  ldarg.0
    IL_0022:  ldc.r4     1.
    IL_0027:  stfld      float32 SpaceCraft.WorldObject::_energyLevel
    IL_002c:  ldarg.0
    IL_002d:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0032:  ldarg.0
    IL_0033:  ldarg.1
    IL_0034:  stfld      int32 SpaceCraft.WorldObject::_id
    IL_0039:  ldarg.0
    IL_003a:  ldarg.2
    IL_003b:  stfld      class SpaceCraft.Group SpaceCraft.WorldObject::_group
    IL_0040:  ldarg.0
    IL_0041:  ldarg.3
    IL_0042:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::_position
    IL_0047:  ldarg.0
    IL_0048:  ldarg.s    rotation
    IL_004a:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.WorldObject::_rotation
    IL_004f:  ldarg.0
    IL_0050:  ldarg.s    planetHash
    IL_0052:  stfld      int32 SpaceCraft.WorldObject::_planetHash
    IL_0057:  ldarg.0
    IL_0058:  ldarg.s    planetLinkedHash
    IL_005a:  stfld      int32 SpaceCraft.WorldObject::_planetLinkedHash
    IL_005f:  ldarg.0
    IL_0060:  ldarg.s    color
    IL_0062:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Color SpaceCraft.WorldObject::_color
    IL_0067:  ldarg.0
    IL_0068:  ldarg.s    text
    IL_006a:  stfld      string SpaceCraft.WorldObject::_text
    IL_006f:  ldarg.0
    IL_0070:  ldarg.s    linkedInventoryId
    IL_0072:  stfld      int32 SpaceCraft.WorldObject::_linkedInventoryId
    IL_0077:  ldarg.0
    IL_0078:  ldarg.s    secondaryInventoriesId
    IL_007a:  dup
    IL_007b:  brtrue.s   IL_0083

    IL_007d:  pop
    IL_007e:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0083:  stfld      class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::_secondaryInventoriesId
    IL_0088:  ldarg.0
    IL_0089:  ldarg.s    panelsId
    IL_008b:  stfld      class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::_panelsId
    IL_0090:  ldarg.0
    IL_0091:  ldarg.s    growth
    IL_0093:  conv.r4
    IL_0094:  stfld      float32 SpaceCraft.WorldObject::_growth
    IL_0099:  ldarg.0
    IL_009a:  ldarg.s    linkedGroups
    IL_009c:  stfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.WorldObject::_linkedGroups
    IL_00a1:  ldarg.0
    IL_00a2:  ldarg.s    setting
    IL_00a4:  stfld      int32 SpaceCraft.WorldObject::_setting
    IL_00a9:  ldarg.0
    IL_00aa:  ldarg.s    geneticTraitIndex
    IL_00ac:  stfld      valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::_geneticTraitType
    IL_00b1:  ldarg.0
    IL_00b2:  ldarg.s    geneticTraitValue
    IL_00b4:  stfld      int32 SpaceCraft.WorldObject::_geneticTraitValue
    IL_00b9:  ldarg.0
    IL_00ba:  ldarg.s    hunger
    IL_00bc:  stfld      float32 SpaceCraft.WorldObject::_hunger
    IL_00c1:  ldarg.0
    IL_00c2:  ldarg.s    count
    IL_00c4:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int SpaceCraft.WorldObject::_count
    IL_00c9:  ldarg.0
    IL_00ca:  call       instance void SpaceCraft.WorldObject::SetUnitsGeneration()
    IL_00cf:  ldarg.0
    IL_00d0:  ldarg.s    linkedWo
    IL_00d2:  stfld      int32 SpaceCraft.WorldObject::_linkedWo
    IL_00d7:  ret
  } // end of method WorldObject::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 id,
                               class SpaceCraft.Group group) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0006:  stfld      class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::_secondaryInventoriesId
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::.ctor()
    IL_0011:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::.ctor()
    IL_001c:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_0021:  ldarg.0
    IL_0022:  ldc.r4     1.
    IL_0027:  stfld      float32 SpaceCraft.WorldObject::_energyLevel
    IL_002c:  ldarg.0
    IL_002d:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0032:  ldarg.0
    IL_0033:  ldarg.1
    IL_0034:  stfld      int32 SpaceCraft.WorldObject::_id
    IL_0039:  ldarg.0
    IL_003a:  ldarg.2
    IL_003b:  stfld      class SpaceCraft.Group SpaceCraft.WorldObject::_group
    IL_0040:  ldarg.0
    IL_0041:  call       instance void SpaceCraft.WorldObject::SetUnitsGeneration()
    IL_0046:  ret
  } // end of method WorldObject::.ctor

  .method private hidebysig instance void 
          SetUnitsGeneration() cil managed
  {
    // Code size       334 (0x14e)
    .maxstack  4
    .locals init (class SpaceCraft.GroupConstructible V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.Group SpaceCraft.WorldObject::_group
    IL_0006:  brfalse    IL_014d

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class SpaceCraft.Group SpaceCraft.WorldObject::_group
    IL_0011:  isinst     SpaceCraft.GroupConstructible
    IL_0016:  brfalse    IL_014d

    IL_001b:  ldarg.0
    IL_001c:  ldfld      class SpaceCraft.Group SpaceCraft.WorldObject::_group
    IL_0021:  castclass  SpaceCraft.GroupConstructible
    IL_0026:  stloc.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_002d:  ldc.i4.1
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_0035:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0040:  ldc.i4.4
    IL_0041:  ldloc.0
    IL_0042:  ldc.i4.4
    IL_0043:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_0048:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0053:  ldc.i4.3
    IL_0054:  ldloc.0
    IL_0055:  ldc.i4.3
    IL_0056:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_005b:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0066:  ldc.i4.2
    IL_0067:  ldloc.0
    IL_0068:  ldc.i4.2
    IL_0069:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_006e:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0079:  ldc.i4.7
    IL_007a:  ldloc.0
    IL_007b:  ldc.i4.7
    IL_007c:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_0081:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_008c:  ldc.i4.8
    IL_008d:  ldloc.0
    IL_008e:  ldc.i4.8
    IL_008f:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_0094:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_009f:  ldc.i4.s   9
    IL_00a1:  ldloc.0
    IL_00a2:  ldc.i4.s   9
    IL_00a4:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_00a9:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_00b4:  ldc.i4.s   11
    IL_00b6:  ldloc.0
    IL_00b7:  ldc.i4.s   11
    IL_00b9:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_00be:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_00c9:  ldc.i4.1
    IL_00ca:  ldc.r4     0.0
    IL_00cf:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_00da:  ldc.i4.4
    IL_00db:  ldc.r4     0.0
    IL_00e0:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_00eb:  ldc.i4.3
    IL_00ec:  ldc.r4     0.0
    IL_00f1:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_00fc:  ldc.i4.2
    IL_00fd:  ldc.r4     0.0
    IL_0102:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_010d:  ldc.i4.7
    IL_010e:  ldc.r4     0.0
    IL_0113:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_0118:  ldarg.0
    IL_0119:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_011e:  ldc.i4.8
    IL_011f:  ldc.r4     0.0
    IL_0124:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_012f:  ldc.i4.s   9
    IL_0131:  ldc.r4     0.0
    IL_0136:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_013b:  ldarg.0
    IL_013c:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_0141:  ldc.i4.s   11
    IL_0143:  ldc.r4     0.0
    IL_0148:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_014d:  ret
  } // end of method WorldObject::SetUnitsGeneration

  .method public hidebysig instance class SpaceCraft.Group 
          GetGroup() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.Group SpaceCraft.WorldObject::_group
    IL_0006:  ret
  } // end of method WorldObject::GetGroup

  .method public hidebysig instance int32 
          GetId() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.WorldObject::_id
    IL_0006:  ret
  } // end of method WorldObject::GetId

  .method public hidebysig instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 
          GetPosition() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::_position
    IL_0006:  ret
  } // end of method WorldObject::GetPosition

  .method public hidebysig instance valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion 
          GetRotation() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.WorldObject::_rotation
    IL_0006:  ret
  } // end of method WorldObject::GetRotation

  .method public hidebysig instance int32 
          GetPlanetHash() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool SpaceCraft.WorldObject::GetIsPlaced()
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldfld      int32 SpaceCraft.WorldObject::_planetHash
    IL_0010:  ret
  } // end of method WorldObject::GetPlanetHash

  .method public hidebysig instance int32 
          GetPlanetLinkedHash() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.WorldObject::_planetLinkedHash
    IL_0006:  ret
  } // end of method WorldObject::GetPlanetLinkedHash

  .method public hidebysig instance valuetype [UnityEngine.CoreModule]UnityEngine.Color 
          GetColor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Color SpaceCraft.WorldObject::_color
    IL_0006:  ret
  } // end of method WorldObject::GetColor

  .method public hidebysig instance string 
          GetText() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SpaceCraft.WorldObject::_text
    IL_0006:  ret
  } // end of method WorldObject::GetText

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<int32> 
          GetPanelsId() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::_panelsId
    IL_0006:  ret
  } // end of method WorldObject::GetPanelsId

  .method public hidebysig instance float32 
          GetGrowth() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 SpaceCraft.WorldObject::_growth
    IL_0006:  ret
  } // end of method WorldObject::GetGrowth

  .method public hidebysig instance bool 
          GetIsPlaced() cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::_position
    IL_0006:  call       valuetype [Unity.Mathematics]Unity.Mathematics.float3 [Unity.Mathematics]Unity.Mathematics.float3::op_Implicit(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_000b:  call       float32 [Unity.Mathematics]Unity.Mathematics.math::lengthsq(valuetype [Unity.Mathematics]Unity.Mathematics.float3)
    IL_0010:  ldc.r4     0.0
    IL_0015:  cgt
    IL_0017:  ret
  } // end of method WorldObject::GetIsPlaced

  .method public hidebysig instance bool 
          GetDontSaveMe() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.WorldObject::_dontSaveMe
    IL_0006:  ret
  } // end of method WorldObject::GetDontSaveMe

  .method public hidebysig instance int32 
          GetLinkedInventoryId() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.WorldObject::_linkedInventoryId
    IL_0006:  ret
  } // end of method WorldObject::GetLinkedInventoryId

  .method public hidebysig instance bool 
          HasLinkedInventory() cil managed
  {
    // Code size       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.WorldObject::_linkedInventoryId
    IL_0006:  ldc.i4.0
    IL_0007:  cgt
    IL_0009:  ret
  } // end of method WorldObject::HasLinkedInventory

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<int32> 
          GetSecondaryInventoriesId() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::_secondaryInventoriesId
    IL_0006:  ret
  } // end of method WorldObject::GetSecondaryInventoriesId

  .method public hidebysig instance float32 
          GetEnergy() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 SpaceCraft.WorldObject::_energyLevel
    IL_0006:  ret
  } // end of method WorldObject::GetEnergy

  .method public hidebysig instance bool 
          GetIsFromDb() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.WorldObject::_isFromDb
    IL_0006:  ret
  } // end of method WorldObject::GetIsFromDb

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> 
          GetLinkedGroups() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.WorldObject::_linkedGroups
    IL_0006:  ret
  } // end of method WorldObject::GetLinkedGroups

  .method public hidebysig instance int32 
          GetSetting() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.WorldObject::_setting
    IL_0006:  ret
  } // end of method WorldObject::GetSetting

  .method public hidebysig instance int32 
          GetGeneticTraitValue() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.WorldObject::_geneticTraitValue
    IL_0006:  ret
  } // end of method WorldObject::GetGeneticTraitValue

  .method public hidebysig instance valuetype SpaceCraft.DataConfig/GeneticTraitType 
          GetGeneticTraitType() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::_geneticTraitType
    IL_0006:  ret
  } // end of method WorldObject::GetGeneticTraitType

  .method public hidebysig instance float32 
          GetHunger() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 SpaceCraft.WorldObject::_hunger
    IL_0006:  ret
  } // end of method WorldObject::GetHunger

  .method public hidebysig instance float32 
          GetPetTime() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 SpaceCraft.WorldObject::_petTime
    IL_0006:  ret
  } // end of method WorldObject::GetPetTime

  .method public hidebysig instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int 
          GetCount() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int SpaceCraft.WorldObject::_count
    IL_0006:  ret
  } // end of method WorldObject::GetCount

  .method public hidebysig instance int32 
          GetLinkedWorldObject() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SpaceCraft.WorldObject::_linkedWo
    IL_0006:  ret
  } // end of method WorldObject::GetLinkedWorldObject

  .method public hidebysig instance bool 
          HasLinkedGroups() cil managed
  {
    // Code size       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.WorldObject::_linkedGroups
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.WorldObject::_linkedGroups
    IL_000e:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group>::get_Count()
    IL_0013:  ldc.i4.0
    IL_0014:  cgt
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method WorldObject::HasLinkedGroups

  .method public hidebysig instance class [UnityEngine.CoreModule]UnityEngine.GameObject 
          GetGameObject() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::_worldGameObject
    IL_0006:  ret
  } // end of method WorldObject::GetGameObject

  .method public hidebysig instance float32 
          GetUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType worldUnitType) cil managed
  {
    // Code size       93 (0x5d)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::ContainsKey(!0)
    IL_000c:  brfalse.s  IL_0057

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::ContainsKey(!0)
    IL_001a:  brfalse.s  IL_0057

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0022:  ldarg.1
    IL_0023:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_0028:  ldarg.0
    IL_0029:  ldfld      float32 SpaceCraft.WorldObject::_energyLevel
    IL_002e:  mul
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_0035:  ldarg.1
    IL_0036:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_003b:  ldc.r4     1.1920929e-07
    IL_0040:  blt.s      IL_0050

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_0048:  ldarg.1
    IL_0049:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_004e:  br.s       IL_0055

    IL_0050:  ldc.r4     1.
    IL_0055:  mul
    IL_0056:  ret

    IL_0057:  ldc.r4     0.0
    IL_005c:  ret
  } // end of method WorldObject::GetUnitGeneration

  .method public hidebysig instance float32 
          GetUnitMultiplier(valuetype SpaceCraft.DataConfig/WorldUnitType worldUnitType) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::TryGetValue(!0,
                                                                                                                                                                   !1&)
    IL_000e:  brtrue.s   IL_0016

    IL_0010:  ldc.r4     0.0
    IL_0015:  ret

    IL_0016:  ldloc.0
    IL_0017:  ret
  } // end of method WorldObject::GetUnitMultiplier

  .method public hidebysig instance bool 
          GetIsLockedInInventory() cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  8
    IL_0000:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_time()
    IL_0005:  ldarg.0
    IL_0006:  ldfld      float32 SpaceCraft.WorldObject::_lockInInventoryTime
    IL_000b:  ble.un.s   IL_001b

    IL_000d:  ldarg.0
    IL_000e:  ldfld      float32 SpaceCraft.WorldObject::_lockInInventoryTime
    IL_0013:  ldc.r4     0.0
    IL_0018:  cgt
    IL_001a:  ret

    IL_001b:  ldc.i4.0
    IL_001c:  ret
  } // end of method WorldObject::GetIsLockedInInventory

  .method public hidebysig instance float32 
          GetLockStage() cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 SpaceCraft.WorldObject::_lockInInventoryTime
    IL_0006:  ldc.r4     1.1920929e-07
    IL_000b:  bge.un.s   IL_0013

    IL_000d:  ldc.r4     0.0
    IL_0012:  ret

    IL_0013:  ldc.r4     1.
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float32 SpaceCraft.WorldObject::_lockInInventoryTime
    IL_001e:  call       float32 [UnityEngine.CoreModule]UnityEngine.Time::get_time()
    IL_0023:  sub
    IL_0024:  ldsfld     float32 SpaceCraft.GameConfig::timeBeforeLockInInventory
    IL_0029:  div
    IL_002a:  sub
    IL_002b:  ret
  } // end of method WorldObject::GetLockStage

  .method public hidebysig instance bool 
          HasUnitGeneration() cil managed
  {
    // Code size       176 (0xb0)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0006:  ldc.i4.1
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::ContainsKey(!0)
    IL_000c:  brtrue.s   IL_0010

    IL_000e:  ldc.i4.0
    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0016:  ldc.i4.1
    IL_0017:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_001c:  ldc.r4     0.0
    IL_0021:  bgt        IL_00ae

    IL_0026:  ldarg.0
    IL_0027:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_002c:  ldc.i4.4
    IL_002d:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_0032:  ldc.r4     0.0
    IL_0037:  bgt.s      IL_00ae

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_003f:  ldc.i4.3
    IL_0040:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_0045:  ldc.r4     0.0
    IL_004a:  bgt.s      IL_00ae

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0052:  ldc.i4.2
    IL_0053:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_0058:  ldc.r4     0.0
    IL_005d:  bgt.s      IL_00ae

    IL_005f:  ldarg.0
    IL_0060:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0065:  ldc.i4.7
    IL_0066:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_006b:  ldc.r4     0.0
    IL_0070:  bgt.s      IL_00ae

    IL_0072:  ldarg.0
    IL_0073:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0078:  ldc.i4.8
    IL_0079:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_007e:  ldc.r4     0.0
    IL_0083:  bgt.s      IL_00ae

    IL_0085:  ldarg.0
    IL_0086:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_008b:  ldc.i4.s   9
    IL_008d:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_0092:  ldc.r4     0.0
    IL_0097:  bgt.s      IL_00ae

    IL_0099:  ldarg.0
    IL_009a:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_009f:  ldc.i4.s   11
    IL_00a1:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_00a6:  ldc.r4     0.0
    IL_00ab:  cgt
    IL_00ad:  ret

    IL_00ae:  ldc.i4.1
    IL_00af:  ret
  } // end of method WorldObject::HasUnitGeneration

  .method public hidebysig instance void 
          SetPanelsId(class [mscorlib]System.Collections.Generic.List`1<int32> panelsId) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<int32> SpaceCraft.WorldObject::_panelsId
    IL_0007:  ret
  } // end of method WorldObject::SetPanelsId

  .method public hidebysig instance void 
          SetDontSaveMe(bool dontSaveMe) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.WorldObject::_dontSaveMe
    IL_0007:  ret
  } // end of method WorldObject::SetDontSaveMe

  .method public hidebysig instance void 
          SetLinkedInventoryId(int32 inventoryId) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SpaceCraft.WorldObject::_linkedInventoryId
    IL_0007:  ret
  } // end of method WorldObject::SetLinkedInventoryId

  .method public hidebysig instance void 
          SetLockInInventoryTime(float32 lockInInventoryTime) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 SpaceCraft.WorldObject::_lockInInventoryTime
    IL_0007:  ret
  } // end of method WorldObject::SetLockInInventoryTime

  .method public hidebysig instance void 
          SetColor(valuetype [UnityEngine.CoreModule]UnityEngine.Color color) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Color SpaceCraft.WorldObject::_color
    IL_0007:  ret
  } // end of method WorldObject::SetColor

  .method public hidebysig instance void 
          SetText(string text) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SpaceCraft.WorldObject::_text
    IL_0007:  ret
  } // end of method WorldObject::SetText

  .method public hidebysig instance void 
          SetGrowth(float32 growth) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 SpaceCraft.WorldObject::_growth
    IL_0007:  ret
  } // end of method WorldObject::SetGrowth

  .method public hidebysig instance void 
          SetEnergy(float32 energyLevel) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 SpaceCraft.WorldObject::_energyLevel
    IL_0007:  ret
  } // end of method WorldObject::SetEnergy

  .method public hidebysig instance void 
          SetIsFromDb(bool isFromDb) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.WorldObject::_isFromDb
    IL_0007:  ret
  } // end of method WorldObject::SetIsFromDb

  .method public hidebysig instance void 
          SetLinkedGroups(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> groups) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.Group> SpaceCraft.WorldObject::_linkedGroups
    IL_0007:  ret
  } // end of method WorldObject::SetLinkedGroups

  .method public hidebysig instance void 
          SetSetting(int32 setting) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SpaceCraft.WorldObject::_setting
    IL_0007:  ret
  } // end of method WorldObject::SetSetting

  .method public hidebysig instance void 
          SetGeneticTraitType(valuetype SpaceCraft.DataConfig/GeneticTraitType geneticTraitType) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype SpaceCraft.DataConfig/GeneticTraitType SpaceCraft.WorldObject::_geneticTraitType
    IL_0007:  ret
  } // end of method WorldObject::SetGeneticTraitType

  .method public hidebysig instance void 
          SetGeneticTraitValue(int32 geneticTraitValue) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SpaceCraft.WorldObject::_geneticTraitValue
    IL_0007:  ret
  } // end of method WorldObject::SetGeneticTraitValue

  .method public hidebysig instance void 
          SetHunger(float32 hunger) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 SpaceCraft.WorldObject::_hunger
    IL_0007:  ret
  } // end of method WorldObject::SetHunger

  .method public hidebysig instance void 
          SetPetTime(float32 time) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 SpaceCraft.WorldObject::_petTime
    IL_0007:  ret
  } // end of method WorldObject::SetPetTime

  .method public hidebysig instance void 
          SetCount(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int count) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector2Int SpaceCraft.WorldObject::_count
    IL_0007:  ret
  } // end of method WorldObject::SetCount

  .method public hidebysig instance void 
          SetLinkedWorldObject(int32 worldObjectId) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SpaceCraft.WorldObject::_linkedWo
    IL_0007:  ret
  } // end of method WorldObject::SetLinkedWorldObject

  .method public hidebysig instance void 
          SetGameObject(class [UnityEngine.CoreModule]UnityEngine.GameObject gameObject) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.WorldObject::_worldGameObject
    IL_0007:  ret
  } // end of method WorldObject::SetGameObject

  .method public hidebysig instance void 
          SetPositionAndRotation(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 position,
                                 valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion rotation,
                                 [opt] int32 planetHash) cil managed
  {
    .param [3] = int32(0x00000000)
    // Code size       78 (0x4e)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::_position
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.WorldObject::_rotation
    IL_000e:  ldarg.3
    IL_000f:  brtrue.s   IL_0046

    IL_0011:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlanetLoader>()
    IL_0016:  ldnull
    IL_0017:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_001c:  brfalse.s  IL_0046

    IL_001e:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlanetLoader>()
    IL_0023:  callvirt   instance class SpaceCraft.PlanetData SpaceCraft.PlanetLoader::GetCurrentPlanetData()
    IL_0028:  ldnull
    IL_0029:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_002e:  brfalse.s  IL_0046

    IL_0030:  ldarg.0
    IL_0031:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlanetLoader>()
    IL_0036:  callvirt   instance class SpaceCraft.PlanetData SpaceCraft.PlanetLoader::GetCurrentPlanetData()
    IL_003b:  callvirt   instance int32 SpaceCraft.PlanetData::GetPlanetHash()
    IL_0040:  stfld      int32 SpaceCraft.WorldObject::_planetHash
    IL_0045:  ret

    IL_0046:  ldarg.0
    IL_0047:  ldarg.3
    IL_0048:  stfld      int32 SpaceCraft.WorldObject::_planetHash
    IL_004d:  ret
  } // end of method WorldObject::SetPositionAndRotation

  .method public hidebysig instance void 
          SetPlanetHash(int32 planetHash) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SpaceCraft.WorldObject::_planetHash
    IL_0007:  ret
  } // end of method WorldObject::SetPlanetHash

  .method public hidebysig instance void 
          SetPlanetLinkedHash(int32 planetHash) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SpaceCraft.WorldObject::_planetLinkedHash
    IL_0007:  ret
  } // end of method WorldObject::SetPlanetLinkedHash

  .method public hidebysig instance void 
          ResetPositionAndRotation() cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_zero()
    IL_0006:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 SpaceCraft.WorldObject::_position
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     0.0
    IL_0011:  ldc.r4     0.0
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldc.r4     0.0
    IL_0020:  newobj     instance void [UnityEngine.CoreModule]UnityEngine.Quaternion::.ctor(float32,
                                                                                             float32,
                                                                                             float32,
                                                                                             float32)
    IL_0025:  stfld      valuetype [UnityEngine.CoreModule]UnityEngine.Quaternion SpaceCraft.WorldObject::_rotation
    IL_002a:  ret
  } // end of method WorldObject::ResetPositionAndRotation

  .method public hidebysig instance void 
          SetUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType worldUnitType,
                            float32 worldUnitGenerationValue) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_000d:  ret
  } // end of method WorldObject::SetUnitGeneration

  .method public hidebysig instance void 
          ResetUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType worldUnitType) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsGenerations
    IL_0006:  ldarg.1
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class SpaceCraft.Group SpaceCraft.WorldObject::_group
    IL_000d:  castclass  SpaceCraft.GroupConstructible
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance float32 SpaceCraft.GroupConstructible::GetGroupUnitGeneration(valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_0018:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_001d:  ret
  } // end of method WorldObject::ResetUnitGeneration

  .method public hidebysig instance void 
          AddUnitGenerationMultiplier(valuetype SpaceCraft.DataConfig/WorldUnitType worldUnitType,
                                      float32 multiplier) cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  4
    .locals init (class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> V_0,
             valuetype SpaceCraft.DataConfig/WorldUnitType V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  stloc.1
    IL_0009:  ldloc.0
    IL_000a:  ldloc.1
    IL_000b:  ldloc.0
    IL_000c:  ldloc.1
    IL_000d:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::get_Item(!0)
    IL_0012:  ldarg.2
    IL_0013:  add
    IL_0014:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_0019:  ret
  } // end of method WorldObject::AddUnitGenerationMultiplier

  .method public hidebysig instance void 
          ResetUnitGenerationMultiplier(valuetype SpaceCraft.DataConfig/WorldUnitType worldUnitType) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32> SpaceCraft.WorldObject::_unitsMultiplier
    IL_0006:  ldarg.1
    IL_0007:  ldc.r4     0.0
    IL_000c:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SpaceCraft.DataConfig/WorldUnitType,float32>::set_Item(!0,
                                                                                                                                                                !1)
    IL_0011:  ret
  } // end of method WorldObject::ResetUnitGenerationMultiplier

} // end of class SpaceCraft.WorldObject
