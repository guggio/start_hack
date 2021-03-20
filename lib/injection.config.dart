// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/room/i_room_repository.dart' as _i5;
import 'infrastructure/core/firebase_injectable_module.dart' as _i8;
import 'infrastructure/room/room_repository.dart' as _i6;
import 'presentation/room/bloc/room_form_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.IRoomRepository>(
      () => _i6.RoomRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i7.RoomFormBloc>(
      () => _i7.RoomFormBloc(get<_i5.IRoomRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i8.FirebaseInjectableModule {}