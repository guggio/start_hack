// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RoomFormEventTearOff {
  const _$RoomFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Room> initialRoom) {
    return _Initialized(
      initialRoom,
    );
  }

// ignore: unused_element
  _TypeChanged typeChanged(RoomType type) {
    return _TypeChanged(
      type,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

// ignore: unused_element
  _DateChanged dateChanged(DateTime date) {
    return _DateChanged(
      date,
    );
  }

// ignore: unused_element
  _FromChanged fromChanged(TimeOfDay from) {
    return _FromChanged(
      from,
    );
  }

// ignore: unused_element
  _ToChanged toChanged(TimeOfDay to) {
    return _ToChanged(
      to,
    );
  }

// ignore: unused_element
  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

// ignore: unused_element
  _InviteOnlyChanged inviteOnlyChanged(bool inviteOnly) {
    return _InviteOnlyChanged(
      inviteOnly,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $RoomFormEvent = _$RoomFormEventTearOff();

/// @nodoc
mixin _$RoomFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RoomFormEventCopyWith<$Res> {
  factory $RoomFormEventCopyWith(
          RoomFormEvent value, $Res Function(RoomFormEvent) then) =
      _$RoomFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomFormEventCopyWithImpl<$Res>
    implements $RoomFormEventCopyWith<$Res> {
  _$RoomFormEventCopyWithImpl(this._value, this._then);

  final RoomFormEvent _value;
  // ignore: unused_field
  final $Res Function(RoomFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Room> initialRoom});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$RoomFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialRoom = freezed,
  }) {
    return _then(_Initialized(
      initialRoom == freezed ? _value.initialRoom : initialRoom as Option<Room>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialRoom) : assert(initialRoom != null);

  @override
  final Option<Room> initialRoom;

  @override
  String toString() {
    return 'RoomFormEvent.initialized(initialRoom: $initialRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialRoom, initialRoom) ||
                const DeepCollectionEquality()
                    .equals(other.initialRoom, initialRoom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initialRoom);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return initialized(initialRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements RoomFormEvent {
  const factory _Initialized(Option<Room> initialRoom) = _$_Initialized;

  Option<Room> get initialRoom;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$TypeChangedCopyWith<$Res> {
  factory _$TypeChangedCopyWith(
          _TypeChanged value, $Res Function(_TypeChanged) then) =
      __$TypeChangedCopyWithImpl<$Res>;
  $Res call({RoomType type});
}

/// @nodoc
class __$TypeChangedCopyWithImpl<$Res> extends _$RoomFormEventCopyWithImpl<$Res>
    implements _$TypeChangedCopyWith<$Res> {
  __$TypeChangedCopyWithImpl(
      _TypeChanged _value, $Res Function(_TypeChanged) _then)
      : super(_value, (v) => _then(v as _TypeChanged));

  @override
  _TypeChanged get _value => super._value as _TypeChanged;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_TypeChanged(
      type == freezed ? _value.type : type as RoomType,
    ));
  }
}

/// @nodoc
class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged(this.type) : assert(type != null);

  @override
  final RoomType type;

  @override
  String toString() {
    return 'RoomFormEvent.typeChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypeChanged &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$TypeChangedCopyWith<_TypeChanged> get copyWith =>
      __$TypeChangedCopyWithImpl<_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return typeChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (typeChanged != null) {
      return typeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class _TypeChanged implements RoomFormEvent {
  const factory _TypeChanged(RoomType type) = _$_TypeChanged;

  RoomType get type;
  @JsonKey(ignore: true)
  _$TypeChangedCopyWith<_TypeChanged> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$RoomFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'RoomFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RoomFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$DateChangedCopyWith<$Res> {
  factory _$DateChangedCopyWith(
          _DateChanged value, $Res Function(_DateChanged) then) =
      __$DateChangedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$DateChangedCopyWithImpl<$Res> extends _$RoomFormEventCopyWithImpl<$Res>
    implements _$DateChangedCopyWith<$Res> {
  __$DateChangedCopyWithImpl(
      _DateChanged _value, $Res Function(_DateChanged) _then)
      : super(_value, (v) => _then(v as _DateChanged));

  @override
  _DateChanged get _value => super._value as _DateChanged;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_DateChanged(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$_DateChanged implements _DateChanged {
  const _$_DateChanged(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'RoomFormEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateChanged &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$DateChangedCopyWith<_DateChanged> get copyWith =>
      __$DateChangedCopyWithImpl<_DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements RoomFormEvent {
  const factory _DateChanged(DateTime date) = _$_DateChanged;

  DateTime get date;
  @JsonKey(ignore: true)
  _$DateChangedCopyWith<_DateChanged> get copyWith;
}

/// @nodoc
abstract class _$FromChangedCopyWith<$Res> {
  factory _$FromChangedCopyWith(
          _FromChanged value, $Res Function(_FromChanged) then) =
      __$FromChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay from});
}

/// @nodoc
class __$FromChangedCopyWithImpl<$Res> extends _$RoomFormEventCopyWithImpl<$Res>
    implements _$FromChangedCopyWith<$Res> {
  __$FromChangedCopyWithImpl(
      _FromChanged _value, $Res Function(_FromChanged) _then)
      : super(_value, (v) => _then(v as _FromChanged));

  @override
  _FromChanged get _value => super._value as _FromChanged;

  @override
  $Res call({
    Object from = freezed,
  }) {
    return _then(_FromChanged(
      from == freezed ? _value.from : from as TimeOfDay,
    ));
  }
}

/// @nodoc
class _$_FromChanged implements _FromChanged {
  const _$_FromChanged(this.from) : assert(from != null);

  @override
  final TimeOfDay from;

  @override
  String toString() {
    return 'RoomFormEvent.fromChanged(from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FromChanged &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(from);

  @JsonKey(ignore: true)
  @override
  _$FromChangedCopyWith<_FromChanged> get copyWith =>
      __$FromChangedCopyWithImpl<_FromChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return fromChanged(from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromChanged != null) {
      return fromChanged(from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return fromChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromChanged != null) {
      return fromChanged(this);
    }
    return orElse();
  }
}

abstract class _FromChanged implements RoomFormEvent {
  const factory _FromChanged(TimeOfDay from) = _$_FromChanged;

  TimeOfDay get from;
  @JsonKey(ignore: true)
  _$FromChangedCopyWith<_FromChanged> get copyWith;
}

/// @nodoc
abstract class _$ToChangedCopyWith<$Res> {
  factory _$ToChangedCopyWith(
          _ToChanged value, $Res Function(_ToChanged) then) =
      __$ToChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay to});
}

/// @nodoc
class __$ToChangedCopyWithImpl<$Res> extends _$RoomFormEventCopyWithImpl<$Res>
    implements _$ToChangedCopyWith<$Res> {
  __$ToChangedCopyWithImpl(_ToChanged _value, $Res Function(_ToChanged) _then)
      : super(_value, (v) => _then(v as _ToChanged));

  @override
  _ToChanged get _value => super._value as _ToChanged;

  @override
  $Res call({
    Object to = freezed,
  }) {
    return _then(_ToChanged(
      to == freezed ? _value.to : to as TimeOfDay,
    ));
  }
}

/// @nodoc
class _$_ToChanged implements _ToChanged {
  const _$_ToChanged(this.to) : assert(to != null);

  @override
  final TimeOfDay to;

  @override
  String toString() {
    return 'RoomFormEvent.toChanged(to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToChanged &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  _$ToChangedCopyWith<_ToChanged> get copyWith =>
      __$ToChangedCopyWithImpl<_ToChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return toChanged(to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toChanged != null) {
      return toChanged(to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return toChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toChanged != null) {
      return toChanged(this);
    }
    return orElse();
  }
}

abstract class _ToChanged implements RoomFormEvent {
  const factory _ToChanged(TimeOfDay to) = _$_ToChanged;

  TimeOfDay get to;
  @JsonKey(ignore: true)
  _$ToChangedCopyWith<_ToChanged> get copyWith;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$RoomFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'RoomFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements RoomFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

/// @nodoc
abstract class _$InviteOnlyChangedCopyWith<$Res> {
  factory _$InviteOnlyChangedCopyWith(
          _InviteOnlyChanged value, $Res Function(_InviteOnlyChanged) then) =
      __$InviteOnlyChangedCopyWithImpl<$Res>;
  $Res call({bool inviteOnly});
}

/// @nodoc
class __$InviteOnlyChangedCopyWithImpl<$Res>
    extends _$RoomFormEventCopyWithImpl<$Res>
    implements _$InviteOnlyChangedCopyWith<$Res> {
  __$InviteOnlyChangedCopyWithImpl(
      _InviteOnlyChanged _value, $Res Function(_InviteOnlyChanged) _then)
      : super(_value, (v) => _then(v as _InviteOnlyChanged));

  @override
  _InviteOnlyChanged get _value => super._value as _InviteOnlyChanged;

  @override
  $Res call({
    Object inviteOnly = freezed,
  }) {
    return _then(_InviteOnlyChanged(
      inviteOnly == freezed ? _value.inviteOnly : inviteOnly as bool,
    ));
  }
}

/// @nodoc
class _$_InviteOnlyChanged implements _InviteOnlyChanged {
  const _$_InviteOnlyChanged(this.inviteOnly) : assert(inviteOnly != null);

  @override
  final bool inviteOnly;

  @override
  String toString() {
    return 'RoomFormEvent.inviteOnlyChanged(inviteOnly: $inviteOnly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InviteOnlyChanged &&
            (identical(other.inviteOnly, inviteOnly) ||
                const DeepCollectionEquality()
                    .equals(other.inviteOnly, inviteOnly)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inviteOnly);

  @JsonKey(ignore: true)
  @override
  _$InviteOnlyChangedCopyWith<_InviteOnlyChanged> get copyWith =>
      __$InviteOnlyChangedCopyWithImpl<_InviteOnlyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return inviteOnlyChanged(inviteOnly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inviteOnlyChanged != null) {
      return inviteOnlyChanged(inviteOnly);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return inviteOnlyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inviteOnlyChanged != null) {
      return inviteOnlyChanged(this);
    }
    return orElse();
  }
}

abstract class _InviteOnlyChanged implements RoomFormEvent {
  const factory _InviteOnlyChanged(bool inviteOnly) = _$_InviteOnlyChanged;

  bool get inviteOnly;
  @JsonKey(ignore: true)
  _$InviteOnlyChangedCopyWith<_InviteOnlyChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$RoomFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'RoomFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Room> initialRoom),
    @required TResult typeChanged(RoomType type),
    @required TResult nameChanged(String name),
    @required TResult dateChanged(DateTime date),
    @required TResult fromChanged(TimeOfDay from),
    @required TResult toChanged(TimeOfDay to),
    @required TResult descriptionChanged(String description),
    @required TResult inviteOnlyChanged(bool inviteOnly),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Room> initialRoom),
    TResult typeChanged(RoomType type),
    TResult nameChanged(String name),
    TResult dateChanged(DateTime date),
    TResult fromChanged(TimeOfDay from),
    TResult toChanged(TimeOfDay to),
    TResult descriptionChanged(String description),
    TResult inviteOnlyChanged(bool inviteOnly),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult typeChanged(_TypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult fromChanged(_FromChanged value),
    @required TResult toChanged(_ToChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult inviteOnlyChanged(_InviteOnlyChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(typeChanged != null);
    assert(nameChanged != null);
    assert(dateChanged != null);
    assert(fromChanged != null);
    assert(toChanged != null);
    assert(descriptionChanged != null);
    assert(inviteOnlyChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult typeChanged(_TypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult dateChanged(_DateChanged value),
    TResult fromChanged(_FromChanged value),
    TResult toChanged(_ToChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult inviteOnlyChanged(_InviteOnlyChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements RoomFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$RoomFormStateTearOff {
  const _$RoomFormStateTearOff();

// ignore: unused_element
  _RoomFormState call(
      {@required Room room,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<ValueFailure> valueFailureOrOk,
      @required Option<Either<LoadingFailure, Unit>> saveFailureOrSuccessOption,
      @required bool informationComplete}) {
    return _RoomFormState(
      room: room,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      valueFailureOrOk: valueFailureOrOk,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      informationComplete: informationComplete,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomFormState = _$RoomFormStateTearOff();

/// @nodoc
mixin _$RoomFormState {
  Room get room;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<ValueFailure> get valueFailureOrOk;
  Option<Either<LoadingFailure, Unit>> get saveFailureOrSuccessOption;
  bool get informationComplete;

  @JsonKey(ignore: true)
  $RoomFormStateCopyWith<RoomFormState> get copyWith;
}

/// @nodoc
abstract class $RoomFormStateCopyWith<$Res> {
  factory $RoomFormStateCopyWith(
          RoomFormState value, $Res Function(RoomFormState) then) =
      _$RoomFormStateCopyWithImpl<$Res>;
  $Res call(
      {Room room,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<ValueFailure> valueFailureOrOk,
      Option<Either<LoadingFailure, Unit>> saveFailureOrSuccessOption,
      bool informationComplete});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$RoomFormStateCopyWithImpl<$Res>
    implements $RoomFormStateCopyWith<$Res> {
  _$RoomFormStateCopyWithImpl(this._value, this._then);

  final RoomFormState _value;
  // ignore: unused_field
  final $Res Function(RoomFormState) _then;

  @override
  $Res call({
    Object room = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object valueFailureOrOk = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object informationComplete = freezed,
  }) {
    return _then(_value.copyWith(
      room: room == freezed ? _value.room : room as Room,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      valueFailureOrOk: valueFailureOrOk == freezed
          ? _value.valueFailureOrOk
          : valueFailureOrOk as Option<ValueFailure>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<LoadingFailure, Unit>>,
      informationComplete: informationComplete == freezed
          ? _value.informationComplete
          : informationComplete as bool,
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
abstract class _$RoomFormStateCopyWith<$Res>
    implements $RoomFormStateCopyWith<$Res> {
  factory _$RoomFormStateCopyWith(
          _RoomFormState value, $Res Function(_RoomFormState) then) =
      __$RoomFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Room room,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<ValueFailure> valueFailureOrOk,
      Option<Either<LoadingFailure, Unit>> saveFailureOrSuccessOption,
      bool informationComplete});

  @override
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$RoomFormStateCopyWithImpl<$Res>
    extends _$RoomFormStateCopyWithImpl<$Res>
    implements _$RoomFormStateCopyWith<$Res> {
  __$RoomFormStateCopyWithImpl(
      _RoomFormState _value, $Res Function(_RoomFormState) _then)
      : super(_value, (v) => _then(v as _RoomFormState));

  @override
  _RoomFormState get _value => super._value as _RoomFormState;

  @override
  $Res call({
    Object room = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object valueFailureOrOk = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object informationComplete = freezed,
  }) {
    return _then(_RoomFormState(
      room: room == freezed ? _value.room : room as Room,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      valueFailureOrOk: valueFailureOrOk == freezed
          ? _value.valueFailureOrOk
          : valueFailureOrOk as Option<ValueFailure>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<LoadingFailure, Unit>>,
      informationComplete: informationComplete == freezed
          ? _value.informationComplete
          : informationComplete as bool,
    ));
  }
}

/// @nodoc
class _$_RoomFormState implements _RoomFormState {
  const _$_RoomFormState(
      {@required this.room,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.valueFailureOrOk,
      @required this.saveFailureOrSuccessOption,
      @required this.informationComplete})
      : assert(room != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(valueFailureOrOk != null),
        assert(saveFailureOrSuccessOption != null),
        assert(informationComplete != null);

  @override
  final Room room;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<ValueFailure> valueFailureOrOk;
  @override
  final Option<Either<LoadingFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final bool informationComplete;

  @override
  String toString() {
    return 'RoomFormState(room: $room, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, valueFailureOrOk: $valueFailureOrOk, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, informationComplete: $informationComplete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomFormState &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.valueFailureOrOk, valueFailureOrOk) ||
                const DeepCollectionEquality()
                    .equals(other.valueFailureOrOk, valueFailureOrOk)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.informationComplete, informationComplete) ||
                const DeepCollectionEquality()
                    .equals(other.informationComplete, informationComplete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(room) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(valueFailureOrOk) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(informationComplete);

  @JsonKey(ignore: true)
  @override
  _$RoomFormStateCopyWith<_RoomFormState> get copyWith =>
      __$RoomFormStateCopyWithImpl<_RoomFormState>(this, _$identity);
}

abstract class _RoomFormState implements RoomFormState {
  const factory _RoomFormState(
      {@required Room room,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<ValueFailure> valueFailureOrOk,
      @required Option<Either<LoadingFailure, Unit>> saveFailureOrSuccessOption,
      @required bool informationComplete}) = _$_RoomFormState;

  @override
  Room get room;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<ValueFailure> get valueFailureOrOk;
  @override
  Option<Either<LoadingFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  bool get informationComplete;
  @override
  @JsonKey(ignore: true)
  _$RoomFormStateCopyWith<_RoomFormState> get copyWith;
}
