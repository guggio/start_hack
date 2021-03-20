// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RoomViewEventTearOff {
  const _$RoomViewEventTearOff();

// ignore: unused_element
  _LoadStarted loadStarted(String roomId) {
    return _LoadStarted(
      roomId,
    );
  }

// ignore: unused_element
  _LoadAllStarted loadAllStarted() {
    return const _LoadAllStarted();
  }

// ignore: unused_element
  _RoomReceived roomReceived(Either<LoadingFailure, Room> failureOrRoom) {
    return _RoomReceived(
      failureOrRoom,
    );
  }

// ignore: unused_element
  _MultipleRoomsReceived multipleRoomsReceived(
      Either<LoadingFailure, List<Room>> failureOrRooms) {
    return _MultipleRoomsReceived(
      failureOrRooms,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomViewEvent = _$RoomViewEventTearOff();

/// @nodoc
mixin _$RoomViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadStarted(String roomId),
    @required TResult loadAllStarted(),
    @required TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    @required
        TResult multipleRoomsReceived(
            Either<LoadingFailure, List<Room>> failureOrRooms),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadStarted(String roomId),
    TResult loadAllStarted(),
    TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    TResult multipleRoomsReceived(
        Either<LoadingFailure, List<Room>> failureOrRooms),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadStarted(_LoadStarted value),
    @required TResult loadAllStarted(_LoadAllStarted value),
    @required TResult roomReceived(_RoomReceived value),
    @required TResult multipleRoomsReceived(_MultipleRoomsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadStarted(_LoadStarted value),
    TResult loadAllStarted(_LoadAllStarted value),
    TResult roomReceived(_RoomReceived value),
    TResult multipleRoomsReceived(_MultipleRoomsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RoomViewEventCopyWith<$Res> {
  factory $RoomViewEventCopyWith(
          RoomViewEvent value, $Res Function(RoomViewEvent) then) =
      _$RoomViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomViewEventCopyWithImpl<$Res>
    implements $RoomViewEventCopyWith<$Res> {
  _$RoomViewEventCopyWithImpl(this._value, this._then);

  final RoomViewEvent _value;
  // ignore: unused_field
  final $Res Function(RoomViewEvent) _then;
}

/// @nodoc
abstract class _$LoadStartedCopyWith<$Res> {
  factory _$LoadStartedCopyWith(
          _LoadStarted value, $Res Function(_LoadStarted) then) =
      __$LoadStartedCopyWithImpl<$Res>;
  $Res call({String roomId});
}

/// @nodoc
class __$LoadStartedCopyWithImpl<$Res> extends _$RoomViewEventCopyWithImpl<$Res>
    implements _$LoadStartedCopyWith<$Res> {
  __$LoadStartedCopyWithImpl(
      _LoadStarted _value, $Res Function(_LoadStarted) _then)
      : super(_value, (v) => _then(v as _LoadStarted));

  @override
  _LoadStarted get _value => super._value as _LoadStarted;

  @override
  $Res call({
    Object roomId = freezed,
  }) {
    return _then(_LoadStarted(
      roomId == freezed ? _value.roomId : roomId as String,
    ));
  }
}

/// @nodoc
class _$_LoadStarted implements _LoadStarted {
  const _$_LoadStarted(this.roomId) : assert(roomId != null);

  @override
  final String roomId;

  @override
  String toString() {
    return 'RoomViewEvent.loadStarted(roomId: $roomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadStarted &&
            (identical(other.roomId, roomId) ||
                const DeepCollectionEquality().equals(other.roomId, roomId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roomId);

  @JsonKey(ignore: true)
  @override
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      __$LoadStartedCopyWithImpl<_LoadStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadStarted(String roomId),
    @required TResult loadAllStarted(),
    @required TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    @required
        TResult multipleRoomsReceived(
            Either<LoadingFailure, List<Room>> failureOrRooms),
  }) {
    assert(loadStarted != null);
    assert(loadAllStarted != null);
    assert(roomReceived != null);
    assert(multipleRoomsReceived != null);
    return loadStarted(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadStarted(String roomId),
    TResult loadAllStarted(),
    TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    TResult multipleRoomsReceived(
        Either<LoadingFailure, List<Room>> failureOrRooms),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadStarted != null) {
      return loadStarted(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadStarted(_LoadStarted value),
    @required TResult loadAllStarted(_LoadAllStarted value),
    @required TResult roomReceived(_RoomReceived value),
    @required TResult multipleRoomsReceived(_MultipleRoomsReceived value),
  }) {
    assert(loadStarted != null);
    assert(loadAllStarted != null);
    assert(roomReceived != null);
    assert(multipleRoomsReceived != null);
    return loadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadStarted(_LoadStarted value),
    TResult loadAllStarted(_LoadAllStarted value),
    TResult roomReceived(_RoomReceived value),
    TResult multipleRoomsReceived(_MultipleRoomsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadStarted != null) {
      return loadStarted(this);
    }
    return orElse();
  }
}

abstract class _LoadStarted implements RoomViewEvent {
  const factory _LoadStarted(String roomId) = _$_LoadStarted;

  String get roomId;
  @JsonKey(ignore: true)
  _$LoadStartedCopyWith<_LoadStarted> get copyWith;
}

/// @nodoc
abstract class _$LoadAllStartedCopyWith<$Res> {
  factory _$LoadAllStartedCopyWith(
          _LoadAllStarted value, $Res Function(_LoadAllStarted) then) =
      __$LoadAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadAllStartedCopyWithImpl<$Res>
    extends _$RoomViewEventCopyWithImpl<$Res>
    implements _$LoadAllStartedCopyWith<$Res> {
  __$LoadAllStartedCopyWithImpl(
      _LoadAllStarted _value, $Res Function(_LoadAllStarted) _then)
      : super(_value, (v) => _then(v as _LoadAllStarted));

  @override
  _LoadAllStarted get _value => super._value as _LoadAllStarted;
}

/// @nodoc
class _$_LoadAllStarted implements _LoadAllStarted {
  const _$_LoadAllStarted();

  @override
  String toString() {
    return 'RoomViewEvent.loadAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadStarted(String roomId),
    @required TResult loadAllStarted(),
    @required TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    @required
        TResult multipleRoomsReceived(
            Either<LoadingFailure, List<Room>> failureOrRooms),
  }) {
    assert(loadStarted != null);
    assert(loadAllStarted != null);
    assert(roomReceived != null);
    assert(multipleRoomsReceived != null);
    return loadAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadStarted(String roomId),
    TResult loadAllStarted(),
    TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    TResult multipleRoomsReceived(
        Either<LoadingFailure, List<Room>> failureOrRooms),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadAllStarted != null) {
      return loadAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadStarted(_LoadStarted value),
    @required TResult loadAllStarted(_LoadAllStarted value),
    @required TResult roomReceived(_RoomReceived value),
    @required TResult multipleRoomsReceived(_MultipleRoomsReceived value),
  }) {
    assert(loadStarted != null);
    assert(loadAllStarted != null);
    assert(roomReceived != null);
    assert(multipleRoomsReceived != null);
    return loadAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadStarted(_LoadStarted value),
    TResult loadAllStarted(_LoadAllStarted value),
    TResult roomReceived(_RoomReceived value),
    TResult multipleRoomsReceived(_MultipleRoomsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadAllStarted != null) {
      return loadAllStarted(this);
    }
    return orElse();
  }
}

abstract class _LoadAllStarted implements RoomViewEvent {
  const factory _LoadAllStarted() = _$_LoadAllStarted;
}

/// @nodoc
abstract class _$RoomReceivedCopyWith<$Res> {
  factory _$RoomReceivedCopyWith(
          _RoomReceived value, $Res Function(_RoomReceived) then) =
      __$RoomReceivedCopyWithImpl<$Res>;
  $Res call({Either<LoadingFailure, Room> failureOrRoom});
}

/// @nodoc
class __$RoomReceivedCopyWithImpl<$Res>
    extends _$RoomViewEventCopyWithImpl<$Res>
    implements _$RoomReceivedCopyWith<$Res> {
  __$RoomReceivedCopyWithImpl(
      _RoomReceived _value, $Res Function(_RoomReceived) _then)
      : super(_value, (v) => _then(v as _RoomReceived));

  @override
  _RoomReceived get _value => super._value as _RoomReceived;

  @override
  $Res call({
    Object failureOrRoom = freezed,
  }) {
    return _then(_RoomReceived(
      failureOrRoom == freezed
          ? _value.failureOrRoom
          : failureOrRoom as Either<LoadingFailure, Room>,
    ));
  }
}

/// @nodoc
class _$_RoomReceived implements _RoomReceived {
  const _$_RoomReceived(this.failureOrRoom) : assert(failureOrRoom != null);

  @override
  final Either<LoadingFailure, Room> failureOrRoom;

  @override
  String toString() {
    return 'RoomViewEvent.roomReceived(failureOrRoom: $failureOrRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomReceived &&
            (identical(other.failureOrRoom, failureOrRoom) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRoom, failureOrRoom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrRoom);

  @JsonKey(ignore: true)
  @override
  _$RoomReceivedCopyWith<_RoomReceived> get copyWith =>
      __$RoomReceivedCopyWithImpl<_RoomReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadStarted(String roomId),
    @required TResult loadAllStarted(),
    @required TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    @required
        TResult multipleRoomsReceived(
            Either<LoadingFailure, List<Room>> failureOrRooms),
  }) {
    assert(loadStarted != null);
    assert(loadAllStarted != null);
    assert(roomReceived != null);
    assert(multipleRoomsReceived != null);
    return roomReceived(failureOrRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadStarted(String roomId),
    TResult loadAllStarted(),
    TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    TResult multipleRoomsReceived(
        Either<LoadingFailure, List<Room>> failureOrRooms),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomReceived != null) {
      return roomReceived(failureOrRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadStarted(_LoadStarted value),
    @required TResult loadAllStarted(_LoadAllStarted value),
    @required TResult roomReceived(_RoomReceived value),
    @required TResult multipleRoomsReceived(_MultipleRoomsReceived value),
  }) {
    assert(loadStarted != null);
    assert(loadAllStarted != null);
    assert(roomReceived != null);
    assert(multipleRoomsReceived != null);
    return roomReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadStarted(_LoadStarted value),
    TResult loadAllStarted(_LoadAllStarted value),
    TResult roomReceived(_RoomReceived value),
    TResult multipleRoomsReceived(_MultipleRoomsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomReceived != null) {
      return roomReceived(this);
    }
    return orElse();
  }
}

abstract class _RoomReceived implements RoomViewEvent {
  const factory _RoomReceived(Either<LoadingFailure, Room> failureOrRoom) =
      _$_RoomReceived;

  Either<LoadingFailure, Room> get failureOrRoom;
  @JsonKey(ignore: true)
  _$RoomReceivedCopyWith<_RoomReceived> get copyWith;
}

/// @nodoc
abstract class _$MultipleRoomsReceivedCopyWith<$Res> {
  factory _$MultipleRoomsReceivedCopyWith(_MultipleRoomsReceived value,
          $Res Function(_MultipleRoomsReceived) then) =
      __$MultipleRoomsReceivedCopyWithImpl<$Res>;
  $Res call({Either<LoadingFailure, List<Room>> failureOrRooms});
}

/// @nodoc
class __$MultipleRoomsReceivedCopyWithImpl<$Res>
    extends _$RoomViewEventCopyWithImpl<$Res>
    implements _$MultipleRoomsReceivedCopyWith<$Res> {
  __$MultipleRoomsReceivedCopyWithImpl(_MultipleRoomsReceived _value,
      $Res Function(_MultipleRoomsReceived) _then)
      : super(_value, (v) => _then(v as _MultipleRoomsReceived));

  @override
  _MultipleRoomsReceived get _value => super._value as _MultipleRoomsReceived;

  @override
  $Res call({
    Object failureOrRooms = freezed,
  }) {
    return _then(_MultipleRoomsReceived(
      failureOrRooms == freezed
          ? _value.failureOrRooms
          : failureOrRooms as Either<LoadingFailure, List<Room>>,
    ));
  }
}

/// @nodoc
class _$_MultipleRoomsReceived implements _MultipleRoomsReceived {
  const _$_MultipleRoomsReceived(this.failureOrRooms)
      : assert(failureOrRooms != null);

  @override
  final Either<LoadingFailure, List<Room>> failureOrRooms;

  @override
  String toString() {
    return 'RoomViewEvent.multipleRoomsReceived(failureOrRooms: $failureOrRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MultipleRoomsReceived &&
            (identical(other.failureOrRooms, failureOrRooms) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRooms, failureOrRooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRooms);

  @JsonKey(ignore: true)
  @override
  _$MultipleRoomsReceivedCopyWith<_MultipleRoomsReceived> get copyWith =>
      __$MultipleRoomsReceivedCopyWithImpl<_MultipleRoomsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadStarted(String roomId),
    @required TResult loadAllStarted(),
    @required TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    @required
        TResult multipleRoomsReceived(
            Either<LoadingFailure, List<Room>> failureOrRooms),
  }) {
    assert(loadStarted != null);
    assert(loadAllStarted != null);
    assert(roomReceived != null);
    assert(multipleRoomsReceived != null);
    return multipleRoomsReceived(failureOrRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadStarted(String roomId),
    TResult loadAllStarted(),
    TResult roomReceived(Either<LoadingFailure, Room> failureOrRoom),
    TResult multipleRoomsReceived(
        Either<LoadingFailure, List<Room>> failureOrRooms),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multipleRoomsReceived != null) {
      return multipleRoomsReceived(failureOrRooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadStarted(_LoadStarted value),
    @required TResult loadAllStarted(_LoadAllStarted value),
    @required TResult roomReceived(_RoomReceived value),
    @required TResult multipleRoomsReceived(_MultipleRoomsReceived value),
  }) {
    assert(loadStarted != null);
    assert(loadAllStarted != null);
    assert(roomReceived != null);
    assert(multipleRoomsReceived != null);
    return multipleRoomsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadStarted(_LoadStarted value),
    TResult loadAllStarted(_LoadAllStarted value),
    TResult roomReceived(_RoomReceived value),
    TResult multipleRoomsReceived(_MultipleRoomsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multipleRoomsReceived != null) {
      return multipleRoomsReceived(this);
    }
    return orElse();
  }
}

abstract class _MultipleRoomsReceived implements RoomViewEvent {
  const factory _MultipleRoomsReceived(
          Either<LoadingFailure, List<Room>> failureOrRooms) =
      _$_MultipleRoomsReceived;

  Either<LoadingFailure, List<Room>> get failureOrRooms;
  @JsonKey(ignore: true)
  _$MultipleRoomsReceivedCopyWith<_MultipleRoomsReceived> get copyWith;
}

/// @nodoc
class _$RoomViewStateTearOff {
  const _$RoomViewStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(Room room) {
    return _LoadSuccess(
      room,
    );
  }

// ignore: unused_element
  _MultipleLoadSuccess multipleLoadSuccess(List<Room> rooms) {
    return _MultipleLoadSuccess(
      rooms,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(LoadingFailure loadingFailure) {
    return _LoadFailure(
      loadingFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomViewState = _$RoomViewStateTearOff();

/// @nodoc
mixin _$RoomViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Room room),
    @required TResult multipleLoadSuccess(List<Room> rooms),
    @required TResult loadFailure(LoadingFailure loadingFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Room room),
    TResult multipleLoadSuccess(List<Room> rooms),
    TResult loadFailure(LoadingFailure loadingFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RoomViewStateCopyWith<$Res> {
  factory $RoomViewStateCopyWith(
          RoomViewState value, $Res Function(RoomViewState) then) =
      _$RoomViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomViewStateCopyWithImpl<$Res>
    implements $RoomViewStateCopyWith<$Res> {
  _$RoomViewStateCopyWithImpl(this._value, this._then);

  final RoomViewState _value;
  // ignore: unused_field
  final $Res Function(RoomViewState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RoomViewStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RoomViewState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Room room),
    @required TResult multipleLoadSuccess(List<Room> rooms),
    @required TResult loadFailure(LoadingFailure loadingFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Room room),
    TResult multipleLoadSuccess(List<Room> rooms),
    TResult loadFailure(LoadingFailure loadingFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoomViewState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$RoomViewStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'RoomViewState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Room room),
    @required TResult multipleLoadSuccess(List<Room> rooms),
    @required TResult loadFailure(LoadingFailure loadingFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Room room),
    TResult multipleLoadSuccess(List<Room> rooms),
    TResult loadFailure(LoadingFailure loadingFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements RoomViewState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$RoomViewStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object room = freezed,
  }) {
    return _then(_LoadSuccess(
      room == freezed ? _value.room : room as Room,
    ));
  }

  @override
  $RoomCopyWith<$Res> get room {
    if (_value.room == null) {
      return null;
    }
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.room) : assert(room != null);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomViewState.loadSuccess(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(room);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Room room),
    @required TResult multipleLoadSuccess(List<Room> rooms),
    @required TResult loadFailure(LoadingFailure loadingFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Room room),
    TResult multipleLoadSuccess(List<Room> rooms),
    TResult loadFailure(LoadingFailure loadingFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements RoomViewState {
  const factory _LoadSuccess(Room room) = _$_LoadSuccess;

  Room get room;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$MultipleLoadSuccessCopyWith<$Res> {
  factory _$MultipleLoadSuccessCopyWith(_MultipleLoadSuccess value,
          $Res Function(_MultipleLoadSuccess) then) =
      __$MultipleLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Room> rooms});
}

/// @nodoc
class __$MultipleLoadSuccessCopyWithImpl<$Res>
    extends _$RoomViewStateCopyWithImpl<$Res>
    implements _$MultipleLoadSuccessCopyWith<$Res> {
  __$MultipleLoadSuccessCopyWithImpl(
      _MultipleLoadSuccess _value, $Res Function(_MultipleLoadSuccess) _then)
      : super(_value, (v) => _then(v as _MultipleLoadSuccess));

  @override
  _MultipleLoadSuccess get _value => super._value as _MultipleLoadSuccess;

  @override
  $Res call({
    Object rooms = freezed,
  }) {
    return _then(_MultipleLoadSuccess(
      rooms == freezed ? _value.rooms : rooms as List<Room>,
    ));
  }
}

/// @nodoc
class _$_MultipleLoadSuccess implements _MultipleLoadSuccess {
  const _$_MultipleLoadSuccess(this.rooms) : assert(rooms != null);

  @override
  final List<Room> rooms;

  @override
  String toString() {
    return 'RoomViewState.multipleLoadSuccess(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MultipleLoadSuccess &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rooms);

  @JsonKey(ignore: true)
  @override
  _$MultipleLoadSuccessCopyWith<_MultipleLoadSuccess> get copyWith =>
      __$MultipleLoadSuccessCopyWithImpl<_MultipleLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Room room),
    @required TResult multipleLoadSuccess(List<Room> rooms),
    @required TResult loadFailure(LoadingFailure loadingFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return multipleLoadSuccess(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Room room),
    TResult multipleLoadSuccess(List<Room> rooms),
    TResult loadFailure(LoadingFailure loadingFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multipleLoadSuccess != null) {
      return multipleLoadSuccess(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return multipleLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multipleLoadSuccess != null) {
      return multipleLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _MultipleLoadSuccess implements RoomViewState {
  const factory _MultipleLoadSuccess(List<Room> rooms) = _$_MultipleLoadSuccess;

  List<Room> get rooms;
  @JsonKey(ignore: true)
  _$MultipleLoadSuccessCopyWith<_MultipleLoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({LoadingFailure loadingFailure});

  $LoadingFailureCopyWith<$Res> get loadingFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$RoomViewStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object loadingFailure = freezed,
  }) {
    return _then(_LoadFailure(
      loadingFailure == freezed
          ? _value.loadingFailure
          : loadingFailure as LoadingFailure,
    ));
  }

  @override
  $LoadingFailureCopyWith<$Res> get loadingFailure {
    if (_value.loadingFailure == null) {
      return null;
    }
    return $LoadingFailureCopyWith<$Res>(_value.loadingFailure, (value) {
      return _then(_value.copyWith(loadingFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.loadingFailure) : assert(loadingFailure != null);

  @override
  final LoadingFailure loadingFailure;

  @override
  String toString() {
    return 'RoomViewState.loadFailure(loadingFailure: $loadingFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.loadingFailure, loadingFailure) ||
                const DeepCollectionEquality()
                    .equals(other.loadingFailure, loadingFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loadingFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Room room),
    @required TResult multipleLoadSuccess(List<Room> rooms),
    @required TResult loadFailure(LoadingFailure loadingFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(loadingFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Room room),
    TResult multipleLoadSuccess(List<Room> rooms),
    TResult loadFailure(LoadingFailure loadingFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(loadingFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(multipleLoadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult multipleLoadSuccess(_MultipleLoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements RoomViewState {
  const factory _LoadFailure(LoadingFailure loadingFailure) = _$_LoadFailure;

  LoadingFailure get loadingFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
