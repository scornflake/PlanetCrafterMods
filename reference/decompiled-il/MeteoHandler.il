.class public auto ansi beforefieldinit SpaceCraft.MeteoHandler
       extends [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour
{
  .custom instance void [UnityEngine.CoreModule]UnityEngine.RequireComponent::.ctor(class [mscorlib]System.Type) = ( 01 00 1B 53 70 61 63 65 43 72 61 66 74 2E 4D 65   // ...SpaceCraft.Me
                                                                                                                     74 65 6F 53 65 6E 64 49 6E 53 70 61 63 65 00 00 ) // teoSendInSpace..
  .class auto ansi sealed nested private beforefieldinit '<TryToLaunchAnEvent>d__27'
         extends [mscorlib]System.Object
         implements class [mscorlib]System.Collections.Generic.IEnumerator`1<object>,
                    [mscorlib]System.Collections.IEnumerator,
                    [mscorlib]System.IDisposable
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private object '<>2__current'
    .field public float32 timeRepeat
    .field public class SpaceCraft.MeteoHandler '<>4__this'
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
      IL_0008:  stfld      int32 SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>1__state'
      IL_000d:  ret
    } // end of method '<TryToLaunchAnEvent>d__27'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.IDisposable::Dispose
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<TryToLaunchAnEvent>d__27'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [mscorlib]System.Collections.IEnumerator::MoveNext
      // Code size       152 (0x98)
      .maxstack  2
      .locals init (int32 V_0,
               class SpaceCraft.MeteoHandler V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class SpaceCraft.MeteoHandler SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>4__this'
      IL_000d:  stloc.1
      IL_000e:  ldloc.0
      IL_000f:  switch     ( 
                            IL_0022,
                            IL_0050,
                            IL_008f)
      IL_0020:  ldc.i4.0
      IL_0021:  ret

      IL_0022:  ldarg.0
      IL_0023:  ldc.i4.m1
      IL_0024:  stfld      int32 SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>1__state'
      IL_0029:  ldarg.0
      IL_002a:  call       bool [UnityEngine.CoreModule]UnityEngine.Application::get_isEditor()
      IL_002f:  brtrue.s   IL_0038

      IL_0031:  ldc.r4     60.
      IL_0036:  br.s       IL_003d

      IL_0038:  ldc.r4     600.
      IL_003d:  newobj     instance void [UnityEngine.CoreModule]UnityEngine.WaitForSeconds::.ctor(float32)
      IL_0042:  stfld      object SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>2__current'
      IL_0047:  ldarg.0
      IL_0048:  ldc.i4.1
      IL_0049:  stfld      int32 SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>1__state'
      IL_004e:  ldc.i4.1
      IL_004f:  ret

      IL_0050:  ldarg.0
      IL_0051:  ldc.i4.m1
      IL_0052:  stfld      int32 SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>1__state'
      IL_0057:  ldarg.0
      IL_0058:  ldarg.0
      IL_0059:  ldfld      float32 SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::timeRepeat
      IL_005e:  newobj     instance void [UnityEngine.CoreModule]UnityEngine.WaitForSeconds::.ctor(float32)
      IL_0063:  stfld      class [UnityEngine.CoreModule]UnityEngine.WaitForSeconds SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<wait>5__2'
      IL_0068:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlanetLoader>()
      IL_006d:  callvirt   instance bool SpaceCraft.PlanetLoader::GetIsLoaded()
      IL_0072:  brfalse.s  IL_007a

      IL_0074:  ldloc.1
      IL_0075:  call       instance void SpaceCraft.MeteoHandler::TryToLaunchAnEventLogic()
      IL_007a:  ldarg.0
      IL_007b:  ldarg.0
      IL_007c:  ldfld      class [UnityEngine.CoreModule]UnityEngine.WaitForSeconds SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<wait>5__2'
      IL_0081:  stfld      object SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>2__current'
      IL_0086:  ldarg.0
      IL_0087:  ldc.i4.2
      IL_0088:  stfld      int32 SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>1__state'
      IL_008d:  ldc.i4.1
      IL_008e:  ret

      IL_008f:  ldarg.0
      IL_0090:  ldc.i4.m1
      IL_0091:  stfld      int32 SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>1__state'
      IL_0096:  br.s       IL_0068
    } // end of method '<TryToLaunchAnEvent>d__27'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance object  'System.Collections.Generic.IEnumerator<System.Object>.get_Current'() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      object SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>2__current'
      IL_0006:  ret
    } // end of method '<TryToLaunchAnEvent>d__27'::'System.Collections.Generic.IEnumerator<System.Object>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::Reset
      // Code size       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<TryToLaunchAnEvent>d__27'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::get_Current
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      object SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>2__current'
      IL_0006:  ret
    } // end of method '<TryToLaunchAnEvent>d__27'::System.Collections.IEnumerator.get_Current

    .property instance object 'System.Collections.Generic.IEnumerator<System.Object>.Current'()
    {
      .get instance object SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'System.Collections.Generic.IEnumerator<System.Object>.get_Current'()
    } // end of property '<TryToLaunchAnEvent>d__27'::'System.Collections.Generic.IEnumerator<System.Object>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::System.Collections.IEnumerator.get_Current()
    } // end of property '<TryToLaunchAnEvent>d__27'::System.Collections.IEnumerator.Current
  } // end of class '<TryToLaunchAnEvent>d__27'

  .class auto ansi sealed nested private beforefieldinit '<UpdateMeteo>d__26'
         extends [mscorlib]System.Object
         implements class [mscorlib]System.Collections.Generic.IEnumerator`1<object>,
                    [mscorlib]System.Collections.IEnumerator,
                    [mscorlib]System.IDisposable
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private object '<>2__current'
    .field public class SpaceCraft.MeteoHandler '<>4__this'
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
      IL_0008:  stfld      int32 SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>1__state'
      IL_000d:  ret
    } // end of method '<UpdateMeteo>d__26'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.IDisposable::Dispose
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<UpdateMeteo>d__26'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [mscorlib]System.Collections.IEnumerator::MoveNext
      // Code size       164 (0xa4)
      .maxstack  4
      .locals init (int32 V_0,
               class SpaceCraft.MeteoHandler V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class SpaceCraft.MeteoHandler SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>4__this'
      IL_000d:  stloc.1
      IL_000e:  ldloc.0
      IL_000f:  brfalse.s  IL_001a

      IL_0011:  ldloc.0
      IL_0012:  ldc.i4.1
      IL_0013:  beq        IL_009b

      IL_0018:  ldc.i4.0
      IL_0019:  ret

      IL_001a:  ldarg.0
      IL_001b:  ldc.i4.m1
      IL_001c:  stfld      int32 SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>1__state'
      IL_0021:  ldarg.0
      IL_0022:  ldloc.1
      IL_0023:  ldfld      float32 SpaceCraft.MeteoHandler::updateTimer
      IL_0028:  newobj     instance void [UnityEngine.CoreModule]UnityEngine.WaitForSeconds::.ctor(float32)
      IL_002d:  stfld      class [UnityEngine.CoreModule]UnityEngine.WaitForSeconds SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<wait>5__2'
      IL_0032:  ldloc.1
      IL_0033:  ldloc.1
      IL_0034:  call       instance float32 SpaceCraft.MeteoHandler::GetMeteoLerpValue()
      IL_0039:  ldloc.1
      IL_003a:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
      IL_003f:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
      IL_0044:  ldc.i4.0
      IL_0045:  call       instance void SpaceCraft.MeteoHandler::UpdateCurrentMeteoEvent(float32,
                                                                                          int32,
                                                                                          bool)
      IL_004a:  ldloc.1
      IL_004b:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
      IL_0050:  brfalse.s  IL_0075

      IL_0052:  ldloc.1
      IL_0053:  ldfld      class SpaceCraft.AsteroidsHandler SpaceCraft.MeteoHandler::_asteroidsHandler
      IL_0058:  callvirt   instance bool SpaceCraft.AsteroidsHandler::get_IsActive()
      IL_005d:  brfalse.s  IL_0075

      IL_005f:  ldloc.1
      IL_0060:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
      IL_0065:  ldloc.1
      IL_0066:  ldfld      class SpaceCraft.AsteroidsHandler SpaceCraft.MeteoHandler::_asteroidsHandler
      IL_006b:  callvirt   instance uint32 SpaceCraft.AsteroidsHandler::get_Seed()
      IL_0070:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32>::set_Value(!0)
      IL_0075:  ldarg.0
      IL_0076:  ldloc.1
      IL_0077:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
      IL_007c:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
      IL_0081:  ldc.i4.m1
      IL_0082:  beq.s      IL_0087

      IL_0084:  ldnull
      IL_0085:  br.s       IL_008d

      IL_0087:  ldarg.0
      IL_0088:  ldfld      class [UnityEngine.CoreModule]UnityEngine.WaitForSeconds SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<wait>5__2'
      IL_008d:  stfld      object SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>2__current'
      IL_0092:  ldarg.0
      IL_0093:  ldc.i4.1
      IL_0094:  stfld      int32 SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>1__state'
      IL_0099:  ldc.i4.1
      IL_009a:  ret

      IL_009b:  ldarg.0
      IL_009c:  ldc.i4.m1
      IL_009d:  stfld      int32 SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>1__state'
      IL_00a2:  br.s       IL_0032
    } // end of method '<UpdateMeteo>d__26'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance object  'System.Collections.Generic.IEnumerator<System.Object>.get_Current'() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      object SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>2__current'
      IL_0006:  ret
    } // end of method '<UpdateMeteo>d__26'::'System.Collections.Generic.IEnumerator<System.Object>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::Reset
      // Code size       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<UpdateMeteo>d__26'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::get_Current
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      object SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>2__current'
      IL_0006:  ret
    } // end of method '<UpdateMeteo>d__26'::System.Collections.IEnumerator.get_Current

    .property instance object 'System.Collections.Generic.IEnumerator<System.Object>.Current'()
    {
      .get instance object SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'System.Collections.Generic.IEnumerator<System.Object>.get_Current'()
    } // end of property '<UpdateMeteo>d__26'::'System.Collections.Generic.IEnumerator<System.Object>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::System.Collections.IEnumerator.get_Current()
    } // end of property '<UpdateMeteo>d__26'::System.Collections.IEnumerator.Current
  } // end of class '<UpdateMeteo>d__26'

  .field public float32 updateTimer
  .custom instance void [UnityEngine.CoreModule]UnityEngine.TooltipAttribute::.ctor(string) = ( 01 00 20 4D 65 74 65 6F 20 67 65 74 20 75 70 64   // .. Meteo get upd
                                                                                                61 74 65 20 65 76 65 72 79 20 58 20 73 65 63 6F   // ate every X seco
                                                                                                6E 64 73 00 00 )                                  // nds..
  .field public class SpaceCraft.MeteoSound meteoSound
  .field public class [UnityEngine.CoreModule]UnityEngine.GameObject containerPrefabInSky
  .field public float32 tryToLaunchEventEvery
  .custom instance void [UnityEngine.CoreModule]UnityEngine.TooltipAttribute::.ctor(string) = ( 01 00 26 54 72 79 20 74 6F 20 6C 61 75 6E 63 68   // ..&Try to launch
                                                                                                20 61 6E 20 65 76 65 6E 74 20 45 76 65 72 79 20   //  an event Every 
                                                                                                58 20 53 65 63 6F 6E 64 73 00 00 )                // X Seconds..
  .field public float32 eventChanceOnOneHundred
  .custom instance void [UnityEngine.CoreModule]UnityEngine.TooltipAttribute::.ctor(string) = ( 01 00 2A 58 20 63 68 61 6E 63 65 20 6F 6E 20 68   // ..*X chance on h
                                                                                                75 6E 64 72 65 64 20 74 6F 20 62 65 20 6C 61 75   // undred to be lau
                                                                                                6E 63 68 65 64 20 70 65 72 20 74 72 79 00 00 )    // nched per try..
  .field private class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> _meteoEvents
  .field private int32 _meteoEventsOriginalCount
  .field private class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> _selectedDataMeteoEventIndex
  .field private class SpaceCraft.AsteroidEventData _selectedAsteroidEventData
  .field private class SpaceCraft.EnvironmentVolumeVariables _referenceEnvDataMeteoEvent
  .field private class SpaceCraft.EnvironmentUpdater _environmentUpdater
  .field private class SpaceCraft.WorldUnitsHandler _worldUnitsHandler
  .field private class SpaceCraft.AsteroidsHandler _asteroidsHandler
  .field private class SpaceCraft.PlayerParticles _playerParticles
  .field private class SpaceCraft.TerrainVisualsHandler _terrainVisualsHandler
  .field private class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>> _meteoEventQueue
  .field private class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64> _timeNewMeteoSet
  .field private class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> _currentSeed
  .field private class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> _asteroidReferencePosition
  .field private class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> _asteroidReferenceClient
  .field private bool _shouldNotRain
  .field private bool _networkInited
  .method public hidebysig virtual instance void 
          OnNetworkSpawn() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void SpaceCraft.MeteoHandler::InitNetworkVariables()
    IL_0006:  ret
  } // end of method MeteoHandler::OnNetworkSpawn

  .method public hidebysig instance void 
          InitMeteoHandler(class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> meteoEvents,
                           class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> meteoEventsWithAsteroids) cil managed
  {
    // Code size       215 (0xd7)
    .maxstack  2
    .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.MeteoEventData> V_0,
             class SpaceCraft.MeteoEventData V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brfalse.s  IL_0022

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_000e:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
    IL_0013:  ldc.i4.0
    IL_0014:  blt.s      IL_0022

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_001c:  ldc.i4.m1
    IL_001d:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::set_Value(!0)
    IL_0022:  ldarg.0
    IL_0023:  ldarg.1
    IL_0024:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0029:  stfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_0034:  ldarg.2
    IL_0035:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_0040:  ldarg.2
    IL_0041:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0046:  ldarg.0
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_004d:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::get_Count()
    IL_0052:  stfld      int32 SpaceCraft.MeteoHandler::_meteoEventsOriginalCount
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>> SpaceCraft.MeteoHandler::_meteoEventQueue
    IL_005d:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>>::Clear()
    IL_0062:  ldarg.0
    IL_0063:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.MeteoSendInSpace>()
    IL_0068:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoSendInSpace::GetSendInSpaceMeteoEventDatas()
    IL_006d:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::GetEnumerator()
    IL_0072:  stloc.0
    .try
    {
      IL_0073:  br.s       IL_0089

      IL_0075:  ldloca.s   V_0
      IL_0077:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.MeteoEventData>::get_Current()
      IL_007c:  stloc.1
      IL_007d:  ldarg.0
      IL_007e:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
      IL_0083:  ldloc.1
      IL_0084:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::Add(!0)
      IL_0089:  ldloca.s   V_0
      IL_008b:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.MeteoEventData>::MoveNext()
      IL_0090:  brtrue.s   IL_0075

      IL_0092:  leave.s    IL_00a2

    }  // end .try
    finally
    {
      IL_0094:  ldloca.s   V_0
      IL_0096:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class SpaceCraft.MeteoEventData>
      IL_009c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00a1:  endfinally
    }  // end handler
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      float32 SpaceCraft.MeteoHandler::updateTimer
    IL_00a8:  ldc.r4     0.0
    IL_00ad:  bne.un.s   IL_00ba

    IL_00af:  ldarg.0
    IL_00b0:  ldc.r4     0.1
    IL_00b5:  stfld      float32 SpaceCraft.MeteoHandler::updateTimer
    IL_00ba:  ldarg.0
    IL_00bb:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsSpawned()
    IL_00c0:  brfalse.s  IL_00d6

    IL_00c2:  ldarg.0
    IL_00c3:  call       instance class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_NetworkManager()
    IL_00c8:  ldnull
    IL_00c9:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_00ce:  brfalse.s  IL_00d6

    IL_00d0:  ldarg.0
    IL_00d1:  call       instance void SpaceCraft.MeteoHandler::InitNetworkVariables()
    IL_00d6:  ret
  } // end of method MeteoHandler::InitMeteoHandler

  .method private hidebysig instance void 
          InitNetworkVariables() cil managed
  {
    // Code size       521 (0x209)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SpaceCraft.MeteoHandler::_networkInited
    IL_0006:  brtrue.s   IL_002f

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_000e:  brfalse.s  IL_002f

    IL_0010:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.GameSettingsHandler>()
    IL_0015:  ldnull
    IL_0016:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_001b:  brtrue.s   IL_002f

    IL_001d:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.GameSettingsHandler>()
    IL_0022:  callvirt   instance class SpaceCraft.JsonableGameState SpaceCraft.GameSettingsHandler::GetCurrentGameSettings()
    IL_0027:  ldnull
    IL_0028:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_002d:  brfalse.s  IL_0030

    IL_002f:  ret

    IL_0030:  ldarg.0
    IL_0031:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.EnvironmentUpdater>()
    IL_0036:  stfld      class SpaceCraft.EnvironmentUpdater SpaceCraft.MeteoHandler::_environmentUpdater
    IL_003b:  ldarg.0
    IL_003c:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.AsteroidsHandler>()
    IL_0041:  stfld      class SpaceCraft.AsteroidsHandler SpaceCraft.MeteoHandler::_asteroidsHandler
    IL_0046:  ldarg.0
    IL_0047:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.TerrainVisualsHandler>()
    IL_004c:  stfld      class SpaceCraft.TerrainVisualsHandler SpaceCraft.MeteoHandler::_terrainVisualsHandler
    IL_0051:  ldarg.0
    IL_0052:  call       !!0 [UnityEngine.CoreModule]UnityEngine.ScriptableObject::CreateInstance<class SpaceCraft.EnvironmentVolumeVariables>()
    IL_0057:  stfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoHandler::_referenceEnvDataMeteoEvent
    IL_005c:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_0061:  ldarg.0
    IL_0062:  ldftn      instance void SpaceCraft.MeteoHandler::'<InitNetworkVariables>b__24_0'()
    IL_0068:  newobj     instance void [mscorlib]System.Action::.ctor(object,
                                                                      native int)
    IL_006d:  callvirt   instance void SpaceCraft.PlayersManager::RegisterToLocalPlayerStarted(class [mscorlib]System.Action)
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_0078:  dup
    IL_0079:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32>::OnValueChanged
    IL_007e:  ldarg.0
    IL_007f:  ldftn      instance void SpaceCraft.MeteoHandler::'<InitNetworkVariables>b__24_1'(uint32,
                                                                                                uint32)
    IL_0085:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<uint32>::.ctor(object,
                                                                                                                                          native int)
    IL_008a:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_008f:  castclass  class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<uint32>
    IL_0094:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32>::OnValueChanged
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_009f:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32>::get_Value()
    IL_00a4:  ldc.i4.0
    IL_00a5:  ble.un.s   IL_00c3

    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_00ad:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32>::OnValueChanged
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_00b9:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32>::get_Value()
    IL_00be:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<uint32>::Invoke(!0,
                                                                                                                                           !0)
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_00c9:  dup
    IL_00ca:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::OnValueChanged
    IL_00cf:  ldarg.0
    IL_00d0:  ldftn      instance void SpaceCraft.MeteoHandler::'<InitNetworkVariables>b__24_2'(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                                valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_00d6:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_00db:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_00e0:  castclass  class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>
    IL_00e5:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::OnValueChanged
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_00f0:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::get_Value()
    IL_00f5:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_zero()
    IL_00fa:  call       bool [UnityEngine.CoreModule]UnityEngine.Vector3::op_Inequality(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3,
                                                                                         valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_00ff:  brfalse.s  IL_0121

    IL_0101:  ldarg.0
    IL_0102:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_0107:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::OnValueChanged
    IL_010c:  call       valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Vector3::get_zero()
    IL_0111:  ldarg.0
    IL_0112:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_0117:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::get_Value()
    IL_011c:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::Invoke(!0,
                                                                                                                                                                                          !0)
    IL_0121:  ldarg.0
    IL_0122:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_0127:  dup
    IL_0128:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64>::OnValueChanged
    IL_012d:  ldarg.0
    IL_012e:  ldftn      instance void SpaceCraft.MeteoHandler::'<InitNetworkVariables>b__24_3'(uint64,
                                                                                                uint64)
    IL_0134:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<uint64>::.ctor(object,
                                                                                                                                          native int)
    IL_0139:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_013e:  castclass  class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<uint64>
    IL_0143:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64>::OnValueChanged
    IL_0148:  ldarg.0
    IL_0149:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_014e:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64>::get_Value()
    IL_0153:  brfalse.s  IL_0172

    IL_0155:  ldarg.0
    IL_0156:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_015b:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64>::OnValueChanged
    IL_0160:  ldc.i4.0
    IL_0161:  conv.i8
    IL_0162:  ldarg.0
    IL_0163:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_0168:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64>::get_Value()
    IL_016d:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<uint64>::Invoke(!0,
                                                                                                                                           !0)
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0178:  dup
    IL_0179:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::OnValueChanged
    IL_017e:  ldarg.0
    IL_017f:  ldftn      instance void SpaceCraft.MeteoHandler::'<InitNetworkVariables>b__24_4'(int32,
                                                                                                int32)
    IL_0185:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<int32>::.ctor(object,
                                                                                                                                         native int)
    IL_018a:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_018f:  castclass  class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<int32>
    IL_0194:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::OnValueChanged
    IL_0199:  ldarg.0
    IL_019a:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_019f:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
    IL_01a4:  ldc.i4.m1
    IL_01a5:  beq.s      IL_01c3

    IL_01a7:  ldarg.0
    IL_01a8:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_01ad:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<!0> class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::OnValueChanged
    IL_01b2:  ldc.i4.m1
    IL_01b3:  ldarg.0
    IL_01b4:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_01b9:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
    IL_01be:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1/OnValueChangedDelegate<int32>::Invoke(!0,
                                                                                                                                          !0)
    IL_01c3:  ldarg.0
    IL_01c4:  call       instance void [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::StopAllCoroutines()
    IL_01c9:  ldarg.0
    IL_01ca:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_01cf:  brfalse.s  IL_01f4

    IL_01d1:  ldarg.0
    IL_01d2:  ldarg.0
    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      float32 SpaceCraft.MeteoHandler::tryToLaunchEventEvery
    IL_01d9:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.GameSettingsHandler>()
    IL_01de:  callvirt   instance class SpaceCraft.JsonableGameState SpaceCraft.GameSettingsHandler::GetCurrentGameSettings()
    IL_01e3:  callvirt   instance float32 SpaceCraft.JsonableGameState::GetMeteoOccurenceModifier()
    IL_01e8:  div
    IL_01e9:  call       instance class [mscorlib]System.Collections.IEnumerator SpaceCraft.MeteoHandler::TryToLaunchAnEvent(float32)
    IL_01ee:  call       instance class [UnityEngine.CoreModule]UnityEngine.Coroutine [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::StartCoroutine(class [mscorlib]System.Collections.IEnumerator)
    IL_01f3:  pop
    IL_01f4:  ldarg.0
    IL_01f5:  ldarg.0
    IL_01f6:  call       instance class [mscorlib]System.Collections.IEnumerator SpaceCraft.MeteoHandler::UpdateMeteo()
    IL_01fb:  call       instance class [UnityEngine.CoreModule]UnityEngine.Coroutine [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::StartCoroutine(class [mscorlib]System.Collections.IEnumerator)
    IL_0200:  pop
    IL_0201:  ldarg.0
    IL_0202:  ldc.i4.1
    IL_0203:  stfld      bool SpaceCraft.MeteoHandler::_networkInited
    IL_0208:  ret
  } // end of method MeteoHandler::InitNetworkVariables

  .method private hidebysig instance void 
          UpdateCurrentMeteoEvent(float32 meteoLerpValue,
                                  int32 meteoEventIndex,
                                  [opt] bool stop) cil managed
  {
    .param [3] = bool(false)
    // Code size       276 (0x114)
    .maxstack  5
    .locals init (class SpaceCraft.MeteoEventData V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  ldc.i4.m1
    IL_0002:  beq        IL_0113

    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_000d:  ldarg.2
    IL_000e:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::get_Item(int32)
    IL_0013:  stloc.0
    IL_0014:  ldarg.1
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoHandler::_referenceEnvDataMeteoEvent
    IL_001b:  ldfld      float32 SpaceCraft.EnvironmentVolumeVariables::lerpValue
    IL_0020:  beq        IL_00ea

    IL_0025:  ldloc.0
    IL_0026:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoEventData::environmentVolume
    IL_002b:  ldnull
    IL_002c:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0031:  brfalse.s  IL_008e

    IL_0033:  ldarg.0
    IL_0034:  ldloc.0
    IL_0035:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoEventData::environmentVolume
    IL_003a:  call       !!0 [UnityEngine.CoreModule]UnityEngine.Object::Instantiate<class SpaceCraft.EnvironmentVolumeVariables>(!!0)
    IL_003f:  stfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoHandler::_referenceEnvDataMeteoEvent
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoHandler::_referenceEnvDataMeteoEvent
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoHandler::_referenceEnvDataMeteoEvent
    IL_0050:  ldloc.0
    IL_0051:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoEventData::environmentVolume
    IL_0056:  ldarg.1
    IL_0057:  ldc.r4     -1.
    IL_005c:  call       void SpaceCraft.EnvironmentVolumeLerper::LerpEnvironmentVariables(class SpaceCraft.EnvironmentVolumeVariables,
                                                                                           class SpaceCraft.EnvironmentVolumeVariables,
                                                                                           class SpaceCraft.EnvironmentVolumeVariables,
                                                                                           float32,
                                                                                           float32)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoHandler::_referenceEnvDataMeteoEvent
    IL_0067:  ldarg.1
    IL_0068:  stfld      float32 SpaceCraft.EnvironmentVolumeVariables::lerpValue
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoHandler::_referenceEnvDataMeteoEvent
    IL_0073:  ldstr      "Meteo"
    IL_0078:  stfld      string SpaceCraft.EnvironmentVolumeVariables::id
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class SpaceCraft.EnvironmentUpdater SpaceCraft.MeteoHandler::_environmentUpdater
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoHandler::_referenceEnvDataMeteoEvent
    IL_0089:  callvirt   instance void SpaceCraft.EnvironmentUpdater::SetVolumeData(class SpaceCraft.EnvironmentVolumeVariables)
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class SpaceCraft.MeteoSound SpaceCraft.MeteoHandler::meteoSound
    IL_0094:  ldarg.1
    IL_0095:  callvirt   instance void SpaceCraft.MeteoSound::SetMeteoLerpValue(float32)
    IL_009a:  ldloc.0
    IL_009b:  ldfld      int32 SpaceCraft.MeteoEventData::rainEmission
    IL_00a0:  ldc.i4.0
    IL_00a1:  ble.s      IL_00d8

    IL_00a3:  ldloc.0
    IL_00a4:  ldfld      int32 SpaceCraft.MeteoEventData::rainEmission
    IL_00a9:  ldc.i4.s   10
    IL_00ab:  ldc.i4.0
    IL_00ac:  call       int32 SpaceCraft.Performances::ReduceIntAccordingToLevel(int32,
                                                                                  int32,
                                                                                  int32)
    IL_00b1:  stloc.1
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class SpaceCraft.PlayerParticles SpaceCraft.MeteoHandler::_playerParticles
    IL_00b8:  ldnull
    IL_00b9:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_00be:  brfalse.s  IL_00d8

    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class SpaceCraft.PlayerParticles SpaceCraft.MeteoHandler::_playerParticles
    IL_00c6:  ldc.r4     0.0
    IL_00cb:  ldloc.1
    IL_00cc:  conv.r4
    IL_00cd:  ldarg.1
    IL_00ce:  call       float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Lerp(float32,
                                                                                 float32,
                                                                                 float32)
    IL_00d3:  callvirt   instance void SpaceCraft.PlayerParticles::SetRainParticlesEmission(float32)
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class SpaceCraft.TerrainVisualsHandler SpaceCraft.MeteoHandler::_terrainVisualsHandler
    IL_00de:  ldarg.1
    IL_00df:  ldloc.0
    IL_00e0:  ldfld      float32 SpaceCraft.MeteoEventData::wetness
    IL_00e5:  callvirt   instance void SpaceCraft.TerrainVisualsHandler::SetTerrainWetness(float32,
                                                                                           float32)
    IL_00ea:  ldarg.3
    IL_00eb:  brtrue.s   IL_00f5

    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      bool SpaceCraft.MeteoHandler::_shouldNotRain
    IL_00f3:  brfalse.s  IL_0113

    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      class SpaceCraft.PlayerParticles SpaceCraft.MeteoHandler::_playerParticles
    IL_00fb:  ldnull
    IL_00fc:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0101:  brfalse.s  IL_0113

    IL_0103:  ldarg.0
    IL_0104:  ldfld      class SpaceCraft.PlayerParticles SpaceCraft.MeteoHandler::_playerParticles
    IL_0109:  ldc.r4     0.0
    IL_010e:  callvirt   instance void SpaceCraft.PlayerParticles::SetRainParticlesEmission(float32)
    IL_0113:  ret
  } // end of method MeteoHandler::UpdateCurrentMeteoEvent

  .method private hidebysig instance class [mscorlib]System.Collections.IEnumerator 
          UpdateMeteo() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 2A 53 70 61 63 65 43 72 61 66 74 2E 4D 65   // ..*SpaceCraft.Me
                                                                                                                                          74 65 6F 48 61 6E 64 6C 65 72 2B 3C 55 70 64 61   // teoHandler+<Upda
                                                                                                                                          74 65 4D 65 74 65 6F 3E 64 5F 5F 32 36 00 00 )    // teMeteo>d__26..
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::.ctor(int32)
    IL_0006:  dup
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.MeteoHandler SpaceCraft.MeteoHandler/'<UpdateMeteo>d__26'::'<>4__this'
    IL_000d:  ret
  } // end of method MeteoHandler::UpdateMeteo

  .method private hidebysig instance class [mscorlib]System.Collections.IEnumerator 
          TryToLaunchAnEvent(float32 timeRepeat) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 31 53 70 61 63 65 43 72 61 66 74 2E 4D 65   // ..1SpaceCraft.Me
                                                                                                                                          74 65 6F 48 61 6E 64 6C 65 72 2B 3C 54 72 79 54   // teoHandler+<TryT
                                                                                                                                          6F 4C 61 75 6E 63 68 41 6E 45 76 65 6E 74 3E 64   // oLaunchAnEvent>d
                                                                                                                                          5F 5F 32 37 00 00 )                               // __27..
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::.ctor(int32)
    IL_0006:  dup
    IL_0007:  ldarg.0
    IL_0008:  stfld      class SpaceCraft.MeteoHandler SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::'<>4__this'
    IL_000d:  dup
    IL_000e:  ldarg.1
    IL_000f:  stfld      float32 SpaceCraft.MeteoHandler/'<TryToLaunchAnEvent>d__27'::timeRepeat
    IL_0014:  ret
  } // end of method MeteoHandler::TryToLaunchAnEvent

  .method private hidebysig instance void 
          TryToLaunchAnEventLogic() cil managed
  {
    // Code size       140 (0x8c)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>> SpaceCraft.MeteoHandler::_meteoEventQueue
    IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble.s      IL_0051

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0014:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
    IL_0019:  ldc.i4.m1
    IL_001a:  bne.un.s   IL_0051

    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>> SpaceCraft.MeteoHandler::_meteoEventQueue
    IL_0023:  ldc.i4.0
    IL_0024:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>>::get_Item(int32)
    IL_0029:  ldfld      !0 valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>::Item1
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>> SpaceCraft.MeteoHandler::_meteoEventQueue
    IL_0034:  ldc.i4.0
    IL_0035:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>>::get_Item(int32)
    IL_003a:  ldfld      !1 valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>::Item2
    IL_003f:  call       instance void SpaceCraft.MeteoHandler::LaunchSpecificMeteoEvent(class SpaceCraft.MeteoEventData,
                                                                                         valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>)
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>> SpaceCraft.MeteoHandler::_meteoEventQueue
    IL_004a:  ldc.i4.0
    IL_004b:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>>::RemoveAt(int32)
    IL_0050:  ret

    IL_0051:  ldarg.0
    IL_0052:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>> SpaceCraft.MeteoHandler::_meteoEventQueue
    IL_0057:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>>::get_Count()
    IL_005c:  brtrue.s   IL_008b

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0064:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
    IL_0069:  ldc.i4.m1
    IL_006a:  bne.un.s   IL_008b

    IL_006c:  ldc.r4     0.0
    IL_0071:  ldc.r4     100.
    IL_0076:  call       float32 [UnityEngine.CoreModule]UnityEngine.Random::Range(float32,
                                                                                   float32)
    IL_007b:  stloc.0
    IL_007c:  ldarg.0
    IL_007d:  ldfld      float32 SpaceCraft.MeteoHandler::eventChanceOnOneHundred
    IL_0082:  ldloc.0
    IL_0083:  ble.un.s   IL_008b

    IL_0085:  ldarg.0
    IL_0086:  call       instance void SpaceCraft.MeteoHandler::LaunchRandomMeteoEvent()
    IL_008b:  ret
  } // end of method MeteoHandler::TryToLaunchAnEventLogic

  .method private hidebysig instance void 
          LaunchRandomMeteoEvent() cil managed
  {
    // Code size       163 (0xa3)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class SpaceCraft.MeteoEventData V_3,
             valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> V_4)
    IL_0000:  ldsfld     bool SpaceCraft.GameConfig::IsTrailerBuild
    IL_0005:  brfalse.s  IL_0008

    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_000e:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
    IL_0013:  ldc.i4.m1
    IL_0014:  beq.s      IL_0017

    IL_0016:  ret

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class SpaceCraft.WorldUnitsHandler SpaceCraft.MeteoHandler::_worldUnitsHandler
    IL_001d:  ldnull
    IL_001e:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0023:  brfalse.s  IL_0030

    IL_0025:  ldarg.0
    IL_0026:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.WorldUnitsHandler>()
    IL_002b:  stfld      class SpaceCraft.WorldUnitsHandler SpaceCraft.MeteoHandler::_worldUnitsHandler
    IL_0030:  ldc.i4.s   100
    IL_0032:  stloc.0
    IL_0033:  ldc.i4.0
    IL_0034:  stloc.1
    IL_0035:  br.s       IL_009e

    IL_0037:  ldc.i4.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      int32 SpaceCraft.MeteoHandler::_meteoEventsOriginalCount
    IL_003e:  call       int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32,
                                                                                 int32)
    IL_0043:  stloc.2
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_004a:  ldloc.2
    IL_004b:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::get_Item(int32)
    IL_0050:  stloc.3
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class SpaceCraft.WorldUnitsHandler SpaceCraft.MeteoHandler::_worldUnitsHandler
    IL_0057:  ldnull
    IL_0058:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_005d:  brfalse.s  IL_009a

    IL_005f:  ldarg.0
    IL_0060:  ldfld      class SpaceCraft.WorldUnitsHandler SpaceCraft.MeteoHandler::_worldUnitsHandler
    IL_0065:  ldnull
    IL_0066:  callvirt   instance bool SpaceCraft.WorldUnitsHandler::AreUnitsInited(string)
    IL_006b:  brfalse.s  IL_009a

    IL_006d:  ldarg.0
    IL_006e:  ldfld      class SpaceCraft.WorldUnitsHandler SpaceCraft.MeteoHandler::_worldUnitsHandler
    IL_0073:  ldloc.3
    IL_0074:  callvirt   instance class SpaceCraft.TerraformStage SpaceCraft.MeteoEventData::GetMeteoStartTerraformStage()
    IL_0079:  ldloc.3
    IL_007a:  callvirt   instance class SpaceCraft.TerraformStage SpaceCraft.MeteoEventData::GetMeteoStopTerraformStage()
    IL_007f:  ldnull
    IL_0080:  ldc.i4.0
    IL_0081:  callvirt   instance bool SpaceCraft.WorldUnitsHandler::IsWorldValuesAreBetweenStages(class SpaceCraft.TerraformStage,
                                                                                                   class SpaceCraft.TerraformStage,
                                                                                                   string,
                                                                                                   valuetype SpaceCraft.DataConfig/WorldUnitType)
    IL_0086:  brfalse.s  IL_009a

    IL_0088:  ldarg.0
    IL_0089:  ldloc.2
    IL_008a:  ldloca.s   V_4
    IL_008c:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>
    IL_0092:  ldloc.s    V_4
    IL_0094:  call       instance void SpaceCraft.MeteoHandler::LaunchSpecificMeteoEvent(int32,
                                                                                         valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>)
    IL_0099:  ret

    IL_009a:  ldloc.1
    IL_009b:  ldc.i4.1
    IL_009c:  add
    IL_009d:  stloc.1
    IL_009e:  ldloc.1
    IL_009f:  ldloc.0
    IL_00a0:  blt.s      IL_0037

    IL_00a2:  ret
  } // end of method MeteoHandler::LaunchRandomMeteoEvent

  .method private hidebysig instance float32 
          GetMeteoLerpValue() cil managed
  {
    // Code size       167 (0xa7)
    .maxstack  3
    .locals init (class SpaceCraft.MeteoEventData V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkTime V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0006:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
    IL_000b:  ldc.i4.m1
    IL_000c:  bne.un.s   IL_0014

    IL_000e:  ldc.r4     0.0
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0020:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
    IL_0025:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::get_Item(int32)
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldfld      float32 SpaceCraft.MeteoEventData::duration
    IL_0031:  ldc.r4     5.
    IL_0036:  div
    IL_0037:  stloc.1
    IL_0038:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_003d:  callvirt   instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkTime [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_ServerTime()
    IL_0042:  stloc.3
    IL_0043:  ldloca.s   V_3
    IL_0045:  call       instance float64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkTime::get_Time()
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64> SpaceCraft.MeteoHandler::_timeNewMeteoSet
    IL_0050:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64>::get_Value()
    IL_0055:  sub
    IL_0056:  conv.r4
    IL_0057:  stloc.2
    IL_0058:  ldloc.2
    IL_0059:  ldloc.1
    IL_005a:  bge.un.s   IL_0060

    IL_005c:  ldloc.2
    IL_005d:  ldloc.1
    IL_005e:  div
    IL_005f:  ret

    IL_0060:  ldloc.2
    IL_0061:  ldloc.1
    IL_0062:  ldc.r4     4.
    IL_0067:  mul
    IL_0068:  ble.un.s   IL_007e

    IL_006a:  ldloc.2
    IL_006b:  ldloc.0
    IL_006c:  ldfld      float32 SpaceCraft.MeteoEventData::duration
    IL_0071:  bge.un.s   IL_007e

    IL_0073:  ldloc.0
    IL_0074:  ldfld      float32 SpaceCraft.MeteoEventData::duration
    IL_0079:  ldloc.2
    IL_007a:  sub
    IL_007b:  ldloc.1
    IL_007c:  div
    IL_007d:  ret

    IL_007e:  ldloc.2
    IL_007f:  ldloc.0
    IL_0080:  ldfld      float32 SpaceCraft.MeteoEventData::duration
    IL_0085:  bge.un.s   IL_008d

    IL_0087:  ldc.r4     1.
    IL_008c:  ret

    IL_008d:  ldarg.0
    IL_008e:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0093:  brfalse.s  IL_00a1

    IL_0095:  ldarg.0
    IL_0096:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_009b:  ldc.i4.m1
    IL_009c:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::set_Value(!0)
    IL_00a1:  ldc.r4     0.0
    IL_00a6:  ret
  } // end of method MeteoHandler::GetMeteoLerpValue

  .method public hidebysig instance void 
          QueueMeteoEvent(class SpaceCraft.MeteoEventData meteoEvent,
                          [opt] valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> refPosition) cil managed
  {
    .param [2] = nullref
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_0006:  brfalse.s  IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>> SpaceCraft.MeteoHandler::_meteoEventQueue
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  newobj     instance void valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>::.ctor(!0,
                                                                                                                                                                                                                    !1)
    IL_0015:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>>::Add(!0)
    IL_001a:  ret
  } // end of method MeteoHandler::QueueMeteoEvent

  .method public hidebysig instance void 
          LaunchSpecificMeteoEvent(class SpaceCraft.MeteoEventData meteoEvent,
                                   valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> refPosition) cil managed
  {
    // Code size       68 (0x44)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0035

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_000a:  ldloc.0
    IL_000b:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::get_Item(int32)
    IL_0010:  ldarg.1
    IL_0011:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0016:  brfalse.s  IL_0031

    IL_0018:  ldarg.0
    IL_0019:  call       instance bool [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_IsServer()
    IL_001e:  brtrue.s   IL_0028

    IL_0020:  ldarg.0
    IL_0021:  ldloc.0
    IL_0022:  call       instance void SpaceCraft.MeteoHandler::LaunchSpecificMeteoEventServerRpc(int32)
    IL_0027:  ret

    IL_0028:  ldarg.0
    IL_0029:  ldloc.0
    IL_002a:  ldarg.2
    IL_002b:  call       instance void SpaceCraft.MeteoHandler::LaunchSpecificMeteoEvent(int32,
                                                                                         valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>)
    IL_0030:  ret

    IL_0031:  ldloc.0
    IL_0032:  ldc.i4.1
    IL_0033:  add
    IL_0034:  stloc.0
    IL_0035:  ldloc.0
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_003c:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::get_Count()
    IL_0041:  blt.s      IL_0004

    IL_0043:  ret
  } // end of method MeteoHandler::LaunchSpecificMeteoEvent

  .method private hidebysig instance void 
          LaunchSpecificMeteoEventServerRpc(int32 meteoEventIndex) cil managed
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
    // Code size       219 (0xdb)
    .maxstack  7
    .locals init (valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> V_0,
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
    IL_003c:  brfalse    IL_00aa

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4     0xe841bff7
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
    IL_007f:  ldarg      meteoEventIndex
    IL_0083:  call       void [Unity.Netcode.Runtime]Unity.Netcode.BytePacker::WriteValueBitPacked(valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferWriter,
                                                                                                   int32)
    IL_0088:  nop
    IL_0089:  ldarg.0
    IL_008a:  ldloca     V_2
    IL_008e:  ldc.i4     0xe841bff7
    IL_0093:  ldloc      V_3
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
    IL_00cc:  ldloca.s   V_0
    IL_00ce:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>
    IL_00d4:  ldloc.0
    IL_00d5:  call       instance void SpaceCraft.MeteoHandler::LaunchSpecificMeteoEvent(int32,
                                                                                         valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>)
    IL_00da:  ret
  } // end of method MeteoHandler::LaunchSpecificMeteoEventServerRpc

  .method public hidebysig instance void 
          LaunchSpecificMeteoEvent(int32 meteoEventIndex,
                                   [opt] valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> refPosition) cil managed
  {
    .param [2] = nullref
    // Code size       221 (0xdd)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.PlayerMainController> V_0,
             int32 V_1,
             valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkTime V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_0006:  ldc.i4.1
    IL_0007:  ldc.i4     0xf423f
    IL_000c:  call       int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32,
                                                                                 int32)
    IL_0011:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32>::set_Value(!0)
    IL_0016:  ldarga.s   refPosition
    IL_0018:  call       instance bool valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::get_HasValue()
    IL_001d:  brfalse.s  IL_004a

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_0025:  ldarga.s   refPosition
    IL_0027:  call       instance !0 valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::get_Value()
    IL_002c:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::set_Value(!0)
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_0037:  ldarga.s   refPosition
    IL_0039:  call       instance !0 valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::get_Value()
    IL_003e:  call       uint64 SpaceCraft.NetworkUtils::GetNearestClientId(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_0043:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64>::set_Value(!0)
    IL_0048:  br.s       IL_00b3

    IL_004a:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_004f:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.PlayerMainController> SpaceCraft.PlayersManager::get_playersControllers()
    IL_0054:  stloc.0
    IL_0055:  ldc.i4.0
    IL_0056:  ldloc.0
    IL_0057:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.PlayerMainController>::get_Count()
    IL_005c:  call       int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32,
                                                                                 int32)
    IL_0061:  stloc.1
    IL_0062:  br.s       IL_0071

    IL_0064:  ldc.i4.0
    IL_0065:  ldloc.0
    IL_0066:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.PlayerMainController>::get_Count()
    IL_006b:  call       int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32,
                                                                                 int32)
    IL_0070:  stloc.1
    IL_0071:  ldloc.0
    IL_0072:  ldloc.1
    IL_0073:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.PlayerMainController>::get_Item(int32)
    IL_0078:  ldnull
    IL_0079:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                      class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_007e:  brtrue.s   IL_0064

    IL_0080:  ldarg.0
    IL_0081:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_0086:  ldloc.0
    IL_0087:  ldloc.1
    IL_0088:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.PlayerMainController>::get_Item(int32)
    IL_008d:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.Component::get_transform()
    IL_0092:  callvirt   instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 [UnityEngine.CoreModule]UnityEngine.Transform::get_position()
    IL_0097:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::set_Value(!0)
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_00a2:  ldloc.0
    IL_00a3:  ldloc.1
    IL_00a4:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.PlayerMainController>::get_Item(int32)
    IL_00a9:  callvirt   instance uint64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::get_OwnerClientId()
    IL_00ae:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64>::set_Value(!0)
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64> SpaceCraft.MeteoHandler::_timeNewMeteoSet
    IL_00b9:  call       class [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_Singleton()
    IL_00be:  callvirt   instance valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkTime [Unity.Netcode.Runtime]Unity.Netcode.NetworkManager::get_ServerTime()
    IL_00c3:  stloc.2
    IL_00c4:  ldloca.s   V_2
    IL_00c6:  call       instance float64 [Unity.Netcode.Runtime]Unity.Netcode.NetworkTime::get_Time()
    IL_00cb:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64>::set_Value(!0)
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_00d6:  ldarg.1
    IL_00d7:  callvirt   instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::set_Value(!0)
    IL_00dc:  ret
  } // end of method MeteoHandler::LaunchSpecificMeteoEvent

  .method public hidebysig instance void 
          SendSomethingInSpace(class SpaceCraft.Group group,
                               valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 sentPosition) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  3
    .locals init (class SpaceCraft.MeteoEventData V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance !!0 [UnityEngine.CoreModule]UnityEngine.Component::GetComponent<class SpaceCraft.MeteoSendInSpace>()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance class SpaceCraft.MeteoEventData SpaceCraft.MeteoSendInSpace::GetCorrespondingMeteoEvent(class SpaceCraft.Group)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldnull
    IL_000f:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0014:  brfalse.s  IL_0023

    IL_0016:  ldarg.0
    IL_0017:  ldloc.0
    IL_0018:  ldarg.2
    IL_0019:  newobj     instance void valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::.ctor(!0)
    IL_001e:  call       instance void SpaceCraft.MeteoHandler::QueueMeteoEvent(class SpaceCraft.MeteoEventData,
                                                                                valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>)
    IL_0023:  ret
  } // end of method MeteoHandler::SendSomethingInSpace

  .method public hidebysig instance void 
          SetIsInLivable(bool isInLivable) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.MeteoSound SpaceCraft.MeteoHandler::meteoSound
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void SpaceCraft.MeteoSound::IsInLivable(bool)
    IL_000c:  ret
  } // end of method MeteoHandler::SetIsInLivable

  .method public hidebysig instance void 
          SetShouldNotRain(bool shouldNotRain) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SpaceCraft.MeteoHandler::_shouldNotRain
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class SpaceCraft.MeteoSound SpaceCraft.MeteoHandler::meteoSound
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance void SpaceCraft.MeteoSound::IsWhereItShouldNotRain(bool)
    IL_0013:  ret
  } // end of method MeteoHandler::SetShouldNotRain

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       105 (0x69)
    .maxstack  4
    .locals init (valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.m1
    IL_0002:  ldc.i4.0
    IL_0003:  ldc.i4.0
    IL_0004:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::.ctor(!0,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableReadPermission,
                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableWritePermission)
    IL_0009:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_000e:  ldarg.0
    IL_000f:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>>::.ctor()
    IL_0014:  stfld      class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.ValueTuple`2<class SpaceCraft.MeteoEventData,valuetype [mscorlib]System.Nullable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>>> SpaceCraft.MeteoHandler::_meteoEventQueue
    IL_0019:  ldarg.0
    IL_001a:  ldc.r8     0.0
    IL_0023:  ldc.i4.0
    IL_0024:  ldc.i4.0
    IL_0025:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64>::.ctor(!0,
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableReadPermission,
                                                                                                                    valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableWritePermission)
    IL_002a:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64> SpaceCraft.MeteoHandler::_timeNewMeteoSet
    IL_002f:  ldarg.0
    IL_0030:  ldc.i4.0
    IL_0031:  ldc.i4.0
    IL_0032:  ldc.i4.0
    IL_0033:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32>::.ctor(!0,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableReadPermission,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableWritePermission)
    IL_0038:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_003d:  ldarg.0
    IL_003e:  ldloca.s   V_0
    IL_0040:  initobj    [UnityEngine.CoreModule]UnityEngine.Vector3
    IL_0046:  ldloc.0
    IL_0047:  ldc.i4.0
    IL_0048:  ldc.i4.0
    IL_0049:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3>::.ctor(!0,
                                                                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableReadPermission,
                                                                                                                                                                  valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableWritePermission)
    IL_004e:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_0053:  ldarg.0
    IL_0054:  ldc.i4.0
    IL_0055:  conv.i8
    IL_0056:  ldc.i4.0
    IL_0057:  ldc.i4.0
    IL_0058:  newobj     instance void class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64>::.ctor(!0,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableReadPermission,
                                                                                                                   valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableWritePermission)
    IL_005d:  stfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_0062:  ldarg.0
    IL_0063:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::.ctor()
    IL_0068:  ret
  } // end of method MeteoHandler::.ctor

  .method private hidebysig instance void 
          '<InitNetworkVariables>b__24_0'() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       !!0 SpaceCraft.Managers::GetManager<class SpaceCraft.PlayersManager>()
    IL_0006:  callvirt   instance class SpaceCraft.PlayerMainController SpaceCraft.PlayersManager::GetActivePlayerController()
    IL_000b:  callvirt   instance class SpaceCraft.PlayerParticles SpaceCraft.PlayerMainController::GetPlayerParticles()
    IL_0010:  stfld      class SpaceCraft.PlayerParticles SpaceCraft.MeteoHandler::_playerParticles
    IL_0015:  ret
  } // end of method MeteoHandler::'<InitNetworkVariables>b__24_0'

  .method private hidebysig instance void 
          '<InitNetworkVariables>b__24_1'(uint32 previous,
                                          uint32 current) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.AsteroidsHandler SpaceCraft.MeteoHandler::_asteroidsHandler
    IL_0006:  ldarg.2
    IL_0007:  callvirt   instance void SpaceCraft.AsteroidsHandler::set_Seed(uint32)
    IL_000c:  ret
  } // end of method MeteoHandler::'<InitNetworkVariables>b__24_1'

  .method private hidebysig instance void 
          '<InitNetworkVariables>b__24_2'(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 previous,
                                          valuetype [UnityEngine.CoreModule]UnityEngine.Vector3 current) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.AsteroidsHandler SpaceCraft.MeteoHandler::_asteroidsHandler
    IL_0006:  ldarg.2
    IL_0007:  callvirt   instance void SpaceCraft.AsteroidsHandler::set_ReferencePosition(valuetype [UnityEngine.CoreModule]UnityEngine.Vector3)
    IL_000c:  ret
  } // end of method MeteoHandler::'<InitNetworkVariables>b__24_2'

  .method private hidebysig instance void 
          '<InitNetworkVariables>b__24_3'(uint64 previous,
                                          uint64 current) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class SpaceCraft.AsteroidsHandler SpaceCraft.MeteoHandler::_asteroidsHandler
    IL_0006:  ldarg.2
    IL_0007:  callvirt   instance void SpaceCraft.AsteroidsHandler::set_ReferenceClientId(uint64)
    IL_000c:  ret
  } // end of method MeteoHandler::'<InitNetworkVariables>b__24_3'

  .method private hidebysig instance void 
          '<InitNetworkVariables>b__24_4'(int32 previous,
                                          int32 current) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       345 (0x159)
    .maxstack  4
    .locals init (class SpaceCraft.MeteoEventData V_0,
             class SpaceCraft.AsteroidEventData V_1,
             class [UnityEngine.CoreModule]UnityEngine.GameObject V_2,
             class [UnityEngine.CoreModule]UnityEngine.Transform[] V_3,
             int32 V_4)
    IL_0000:  ldarg.2
    IL_0001:  ldc.i4.m1
    IL_0002:  beq        IL_0106

    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData> SpaceCraft.MeteoHandler::_meteoEvents
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0013:  callvirt   instance !0 class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32>::get_Value()
    IL_0018:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class SpaceCraft.MeteoEventData>::get_Item(int32)
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class SpaceCraft.MeteoSound SpaceCraft.MeteoHandler::meteoSound
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance void SpaceCraft.MeteoSound::StartMeteoAudio(class SpaceCraft.MeteoEventData)
    IL_002a:  ldarg.0
    IL_002b:  ldnull
    IL_002c:  stfld      class SpaceCraft.AsteroidEventData SpaceCraft.MeteoHandler::_selectedAsteroidEventData
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class SpaceCraft.AsteroidEventData SpaceCraft.MeteoEventData::GetAsteroidEventData()
    IL_0037:  stloc.1
    IL_0038:  ldloc.1
    IL_0039:  ldnull
    IL_003a:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_003f:  brfalse.s  IL_004d

    IL_0041:  ldarg.0
    IL_0042:  ldloc.1
    IL_0043:  call       !!0 [UnityEngine.CoreModule]UnityEngine.Object::Instantiate<class SpaceCraft.AsteroidEventData>(!!0)
    IL_0048:  stfld      class SpaceCraft.AsteroidEventData SpaceCraft.MeteoHandler::_selectedAsteroidEventData
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class SpaceCraft.AsteroidsHandler SpaceCraft.MeteoHandler::_asteroidsHandler
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class SpaceCraft.AsteroidEventData SpaceCraft.MeteoHandler::_selectedAsteroidEventData
    IL_0059:  callvirt   instance void SpaceCraft.AsteroidsHandler::AddAsteroidEvent(class SpaceCraft.AsteroidEventData)
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class SpaceCraft.PlayerParticles SpaceCraft.MeteoHandler::_playerParticles
    IL_0064:  ldnull
    IL_0065:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_006a:  brfalse.s  IL_0086

    IL_006c:  ldloc.0
    IL_006d:  ldfld      int32 SpaceCraft.MeteoEventData::rainEmission
    IL_0072:  ldc.i4.0
    IL_0073:  ble.s      IL_0086

    IL_0075:  ldarg.0
    IL_0076:  ldfld      class SpaceCraft.PlayerParticles SpaceCraft.MeteoHandler::_playerParticles
    IL_007b:  ldloc.0
    IL_007c:  ldfld      valuetype [UnityEngine.CoreModule]UnityEngine.Color SpaceCraft.MeteoEventData::rainColor
    IL_0081:  callvirt   instance void SpaceCraft.PlayerParticles::SetRainColor(valuetype [UnityEngine.CoreModule]UnityEngine.Color)
    IL_0086:  ldloc.0
    IL_0087:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.MeteoEventData::GetPrefabToSpawnInSky()
    IL_008c:  stloc.2
    IL_008d:  ldloc.2
    IL_008e:  ldnull
    IL_008f:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0094:  brfalse.s  IL_00d7

    IL_0096:  ldloc.2
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.MeteoHandler::containerPrefabInSky
    IL_009d:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.Transform [UnityEngine.CoreModule]UnityEngine.GameObject::get_transform()
    IL_00a2:  call       !!0 [UnityEngine.CoreModule]UnityEngine.Object::Instantiate<class [UnityEngine.CoreModule]UnityEngine.GameObject>(!!0,
                                                                                                                                           class [UnityEngine.CoreModule]UnityEngine.Transform)
    IL_00a7:  callvirt   instance !!0[] [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponentsInChildren<class [UnityEngine.CoreModule]UnityEngine.Transform>()
    IL_00ac:  stloc.3
    IL_00ad:  ldc.i4.0
    IL_00ae:  stloc.s    V_4
    IL_00b0:  br.s       IL_00d0

    IL_00b2:  ldloc.3
    IL_00b3:  ldloc.s    V_4
    IL_00b5:  ldelem.ref
    IL_00b6:  callvirt   instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
    IL_00bb:  ldsfld     string SpaceCraft.GameConfig::layerSkyboxName
    IL_00c0:  call       int32 [UnityEngine.CoreModule]UnityEngine.LayerMask::NameToLayer(string)
    IL_00c5:  callvirt   instance void [UnityEngine.CoreModule]UnityEngine.GameObject::set_layer(int32)
    IL_00ca:  ldloc.s    V_4
    IL_00cc:  ldc.i4.1
    IL_00cd:  add
    IL_00ce:  stloc.s    V_4
    IL_00d0:  ldloc.s    V_4
    IL_00d2:  ldloc.3
    IL_00d3:  ldlen
    IL_00d4:  conv.i4
    IL_00d5:  blt.s      IL_00b2

    IL_00d7:  call       bool [UnityEngine.CoreModule]UnityEngine.Application::get_isEditor()
    IL_00dc:  brfalse.s  IL_0106

    IL_00de:  ldloc.0
    IL_00df:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoEventData::environmentVolume
    IL_00e4:  ldnull
    IL_00e5:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_00ea:  brfalse.s  IL_0106

    IL_00ec:  ldstr      "Start Meteo Event "
    IL_00f1:  ldloc.0
    IL_00f2:  ldfld      class SpaceCraft.EnvironmentVolumeVariables SpaceCraft.MeteoEventData::environmentVolume
    IL_00f7:  callvirt   instance string [UnityEngine.CoreModule]UnityEngine.Object::get_name()
    IL_00fc:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0101:  call       void [UnityEngine.CoreModule]UnityEngine.Debug::Log(object)
    IL_0106:  ldarg.2
    IL_0107:  ldc.i4.m1
    IL_0108:  bne.un.s   IL_0158

    IL_010a:  ldarg.1
    IL_010b:  ldc.i4.0
    IL_010c:  blt.s      IL_0158

    IL_010e:  ldarg.0
    IL_010f:  ldc.r4     0.0
    IL_0114:  ldarg.1
    IL_0115:  ldc.i4.1
    IL_0116:  call       instance void SpaceCraft.MeteoHandler::UpdateCurrentMeteoEvent(float32,
                                                                                        int32,
                                                                                        bool)
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class SpaceCraft.AsteroidEventData SpaceCraft.MeteoHandler::_selectedAsteroidEventData
    IL_0121:  ldnull
    IL_0122:  call       bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object,
                                                                                        class [UnityEngine.CoreModule]UnityEngine.Object)
    IL_0127:  brfalse.s  IL_013a

    IL_0129:  ldarg.0
    IL_012a:  ldfld      class SpaceCraft.AsteroidsHandler SpaceCraft.MeteoHandler::_asteroidsHandler
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class SpaceCraft.AsteroidEventData SpaceCraft.MeteoHandler::_selectedAsteroidEventData
    IL_0135:  callvirt   instance void SpaceCraft.AsteroidsHandler::RemoveAsteroidEvent(class SpaceCraft.AsteroidEventData)
    IL_013a:  ldarg.0
    IL_013b:  ldnull
    IL_013c:  stfld      class SpaceCraft.AsteroidEventData SpaceCraft.MeteoHandler::_selectedAsteroidEventData
    IL_0141:  ldarg.0
    IL_0142:  ldfld      class SpaceCraft.MeteoSound SpaceCraft.MeteoHandler::meteoSound
    IL_0147:  callvirt   instance void SpaceCraft.MeteoSound::StopMeteoAudio()
    IL_014c:  ldarg.0
    IL_014d:  ldfld      class [UnityEngine.CoreModule]UnityEngine.GameObject SpaceCraft.MeteoHandler::containerPrefabInSky
    IL_0152:  ldc.i4.0
    IL_0153:  call       void SpaceCraft.GameObjects::DestroyAllChildren(class [UnityEngine.CoreModule]UnityEngine.GameObject,
                                                                         bool)
    IL_0158:  ret
  } // end of method MeteoHandler::'<InitNetworkVariables>b__24_4'

  .method family hidebysig virtual instance void 
          __initializeVariables() cil managed
  {
    // Code size       395 (0x18b)
    .maxstack  3
    .locals (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse    IL_001d

    IL_0011:  nop
    IL_0012:  ldstr      "MeteoHandler._selectedDataMeteoEventIndex cannot b"
    + "e null. All NetworkVariableBase instances must be initialized."
    IL_0017:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
    IL_001c:  throw

    IL_001d:  nop
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0024:  ldarg.0
    IL_0025:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase::Initialize(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour)
    IL_002a:  nop
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0032:  ldstr      "_selectedDataMeteoEventIndex"
    IL_0037:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__nameNetworkVariable(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase,
                                                                                                                    string)
    IL_003c:  nop
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase> [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::NetworkVariableFields
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<int32> SpaceCraft.MeteoHandler::_selectedDataMeteoEventIndex
    IL_0049:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase>::Add(!0)
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64> SpaceCraft.MeteoHandler::_timeNewMeteoSet
    IL_0054:  ldnull
    IL_0055:  ceq
    IL_0057:  stloc.0
    IL_0058:  ldloc.0
    IL_0059:  brfalse    IL_006a

    IL_005e:  nop
    IL_005f:  ldstr      "MeteoHandler._timeNewMeteoSet cannot be null. All "
    + "NetworkVariableBase instances must be initialized."
    IL_0064:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
    IL_0069:  throw

    IL_006a:  nop
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64> SpaceCraft.MeteoHandler::_timeNewMeteoSet
    IL_0071:  ldarg.0
    IL_0072:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase::Initialize(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour)
    IL_0077:  nop
    IL_0078:  ldarg.0
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64> SpaceCraft.MeteoHandler::_timeNewMeteoSet
    IL_007f:  ldstr      "_timeNewMeteoSet"
    IL_0084:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__nameNetworkVariable(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase,
                                                                                                                    string)
    IL_0089:  nop
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase> [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::NetworkVariableFields
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<float64> SpaceCraft.MeteoHandler::_timeNewMeteoSet
    IL_0096:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase>::Add(!0)
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_00a1:  ldnull
    IL_00a2:  ceq
    IL_00a4:  stloc.0
    IL_00a5:  ldloc.0
    IL_00a6:  brfalse    IL_00b7

    IL_00ab:  nop
    IL_00ac:  ldstr      "MeteoHandler._currentSeed cannot be null. All Netw"
    + "orkVariableBase instances must be initialized."
    IL_00b1:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
    IL_00b6:  throw

    IL_00b7:  nop
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_00be:  ldarg.0
    IL_00bf:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase::Initialize(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour)
    IL_00c4:  nop
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_00cc:  ldstr      "_currentSeed"
    IL_00d1:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__nameNetworkVariable(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase,
                                                                                                                    string)
    IL_00d6:  nop
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase> [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::NetworkVariableFields
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint32> SpaceCraft.MeteoHandler::_currentSeed
    IL_00e3:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase>::Add(!0)
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_00ee:  ldnull
    IL_00ef:  ceq
    IL_00f1:  stloc.0
    IL_00f2:  ldloc.0
    IL_00f3:  brfalse    IL_0104

    IL_00f8:  nop
    IL_00f9:  ldstr      "MeteoHandler._asteroidReferencePosition cannot be "
    + "null. All NetworkVariableBase instances must be initialized."
    IL_00fe:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
    IL_0103:  throw

    IL_0104:  nop
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_010b:  ldarg.0
    IL_010c:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase::Initialize(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour)
    IL_0111:  nop
    IL_0112:  ldarg.0
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_0119:  ldstr      "_asteroidReferencePosition"
    IL_011e:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__nameNetworkVariable(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase,
                                                                                                                    string)
    IL_0123:  nop
    IL_0124:  ldarg.0
    IL_0125:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase> [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::NetworkVariableFields
    IL_012a:  ldarg.0
    IL_012b:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<valuetype [UnityEngine.CoreModule]UnityEngine.Vector3> SpaceCraft.MeteoHandler::_asteroidReferencePosition
    IL_0130:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase>::Add(!0)
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_013b:  ldnull
    IL_013c:  ceq
    IL_013e:  stloc.0
    IL_013f:  ldloc.0
    IL_0140:  brfalse    IL_0151

    IL_0145:  nop
    IL_0146:  ldstr      "MeteoHandler._asteroidReferenceClient cannot be nu"
    + "ll. All NetworkVariableBase instances must be initialized."
    IL_014b:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
    IL_0150:  throw

    IL_0151:  nop
    IL_0152:  ldarg.0
    IL_0153:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_0158:  ldarg.0
    IL_0159:  callvirt   instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase::Initialize(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour)
    IL_015e:  nop
    IL_015f:  ldarg.0
    IL_0160:  ldarg.0
    IL_0161:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_0166:  ldstr      "_asteroidReferenceClient"
    IL_016b:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__nameNetworkVariable(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase,
                                                                                                                    string)
    IL_0170:  nop
    IL_0171:  ldarg.0
    IL_0172:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase> [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::NetworkVariableFields
    IL_0177:  ldarg.0
    IL_0178:  ldfld      class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariable`1<uint64> SpaceCraft.MeteoHandler::_asteroidReferenceClient
    IL_017d:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [Unity.Netcode.Runtime]Unity.Netcode.NetworkVariableBase>::Add(!0)
    IL_0182:  nop
    IL_0183:  ldarg.0
    IL_0184:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__initializeVariables()
    IL_0189:  nop
    IL_018a:  ret
  } // end of method MeteoHandler::__initializeVariables

  .method family hidebysig virtual instance void 
          __initializeRpcs() cil managed
  {
    // Code size       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xe841bff7
    IL_0006:  ldnull
    IL_0007:  ldftn      void SpaceCraft.MeteoHandler::__rpc_handler_3896623095(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour,
                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.FastBufferReader,
                                                                                valuetype [Unity.Netcode.Runtime]Unity.Netcode.__RpcParams)
    IL_000d:  newobj     instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler::.ctor(object,
                                                                                                                      native int)
    IL_0012:  ldstr      "LaunchSpecificMeteoEventServerRpc"
    IL_0017:  ldc.i4     0x0
    IL_001c:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__registerRpc(uint32,
                                                                                                            class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/RpcReceiveHandler,
                                                                                                            string,
                                                                                                            valuetype [Unity.Netcode.Runtime]Unity.Netcode.RpcInvokePermission)
    IL_0021:  nop
    IL_0022:  ldarg.0
    IL_0023:  call       instance void [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__initializeRpcs()
    IL_0028:  nop
    IL_0029:  ret
  } // end of method MeteoHandler::__initializeRpcs

  .method private hidebysig static void  __rpc_handler_3896623095(class [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour target,
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
    IL_003c:  castclass  SpaceCraft.MeteoHandler
    IL_0041:  ldloc      V_1
    IL_0045:  callvirt   instance void SpaceCraft.MeteoHandler::LaunchSpecificMeteoEventServerRpc(int32)
    IL_004a:  ldarg.0
    IL_004b:  ldc.i4     0x0
    IL_0050:  stfld      valuetype [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour/__RpcExecStage [Unity.Netcode.Runtime]Unity.Netcode.NetworkBehaviour::__rpc_exec_stage
    IL_0055:  ret
  } // end of method MeteoHandler::__rpc_handler_3896623095

  .method famorassem hidebysig strict virtual 
          instance string  __getTypeName() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "MeteoHandler"
    IL_0005:  ret
  } // end of method MeteoHandler::__getTypeName

} // end of class SpaceCraft.MeteoHandler
