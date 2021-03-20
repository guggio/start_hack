// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RoomTearOff {
  const _$RoomTearOff();

// ignore: unused_element
  _Room call(
      {@required UniqueId id,
      @required UniqueId creator,
      @required RoomType type,
      @required RoomName name,
      @required DateTime date,
      @required TimeOfDay from,
      @required BreakDuration breakDuration,
      @required RoomDescription description,
      @required bool inviteOnly,
      @required List<UniqueId> subscribers}) {
    return _Room(
      id: id,
      creator: creator,
      type: type,
      name: name,
      date: date,
      from: from,
      breakDuration: breakDuration,
      description: description,
      inviteOnly: inviteOnly,
      subscribers: subscribers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Room = _$RoomTearOff();

/// @nodoc
mixin _$Room {
  UniqueId get id;
  UniqueId get creator;
  RoomType get type;
  RoomName get name;
  DateTime get date;
  TimeOfDay get from;
  BreakDuration get breakDuration;
  RoomDescription get description;
  bool get inviteOnly;
  List<UniqueId> get subscribers;

  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId creator,
      RoomType type,
      RoomName name,
      DateTime date,
      TimeOfDay from,
      BreakDuration breakDuration,
      RoomDescription description,
      bool inviteOnly,
      List<UniqueId> subscribers});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object id = freezed,
    Object creator = freezed,
    Object type = freezed,
    Object name = freezed,
    Object date = freezed,
    Object from = freezed,
    Object breakDuration = freezed,
    Object description = freezed,
    Object inviteOnly = freezed,
    Object subscribers = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      creator: creator == freezed ? _value.creator : creator as UniqueId,
      type: type == freezed ? _value.type : type as RoomType,
      name: name == freezed ? _value.name : name as RoomName,
      date: date == freezed ? _value.date : date as DateTime,
      from: from == freezed ? _value.from : from as TimeOfDay,
      breakDuration: breakDuration == freezed
          ? _value.breakDuration
          : breakDuration as BreakDuration,
      description: description == freezed
          ? _value.description
          : description as RoomDescription,
      inviteOnly:
          inviteOnly == freezed ? _value.inviteOnly : inviteOnly as bool,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<UniqueId>,
    ));
  }
}

/// @nodoc
abstract class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId creator,
      RoomType type,
      RoomName name,
      DateTime date,
      TimeOfDay from,
      BreakDuration breakDuration,
      RoomDescription description,
      bool inviteOnly,
      List<UniqueId> subscribers});
}

/// @nodoc
class __$RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object id = freezed,
    Object creator = freezed,
    Object type = freezed,
    Object name = freezed,
    Object date = freezed,
    Object from = freezed,
    Object breakDuration = freezed,
    Object description = freezed,
    Object inviteOnly = freezed,
    Object subscribers = freezed,
  }) {
    return _then(_Room(
      id: id == freezed ? _value.id : id as UniqueId,
      creator: creator == freezed ? _value.creator : creator as UniqueId,
      type: type == freezed ? _value.type : type as RoomType,
      name: name == freezed ? _value.name : name as RoomName,
      date: date == freezed ? _value.date : date as DateTime,
      from: from == freezed ? _value.from : from as TimeOfDay,
      breakDuration: breakDuration == freezed
          ? _value.breakDuration
          : breakDuration as BreakDuration,
      description: description == freezed
          ? _value.description
          : description as RoomDescription,
      inviteOnly:
          inviteOnly == freezed ? _value.inviteOnly : inviteOnly as bool,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<UniqueId>,
    ));
  }
}

/// @nodoc
class _$_Room extends _Room {
  const _$_Room(
      {@required this.id,
      @required this.creator,
      @required this.type,
      @required this.name,
      @required this.date,
      @required this.from,
      @required this.breakDuration,
      @required this.description,
      @required this.inviteOnly,
      @required this.subscribers})
      : assert(id != null),
        assert(creator != null),
        assert(type != null),
        assert(name != null),
        assert(date != null),
        assert(from != null),
        assert(breakDuration != null),
        assert(description != null),
        assert(inviteOnly != null),
        assert(subscribers != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId creator;
  @override
  final RoomType type;
  @override
  final RoomName name;
  @override
  final DateTime date;
  @override
  final TimeOfDay from;
  @override
  final BreakDuration breakDuration;
  @override
  final RoomDescription description;
  @override
  final bool inviteOnly;
  @override
  final List<UniqueId> subscribers;

  @override
  String toString() {
    return 'Room(id: $id, creator: $creator, type: $type, name: $name, date: $date, from: $from, breakDuration: $breakDuration, description: $description, inviteOnly: $inviteOnly, subscribers: $subscribers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Room &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.breakDuration, breakDuration) ||
                const DeepCollectionEquality()
                    .equals(other.breakDuration, breakDuration)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.inviteOnly, inviteOnly) ||
                const DeepCollectionEquality()
                    .equals(other.inviteOnly, inviteOnly)) &&
            (identical(other.subscribers, subscribers) ||
                const DeepCollectionEquality()
                    .equals(other.subscribers, subscribers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(breakDuration) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(inviteOnly) ^
      const DeepCollectionEquality().hash(subscribers);

  @JsonKey(ignore: true)
  @override
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);
}

abstract class _Room extends Room {
  const _Room._() : super._();
  const factory _Room(
      {@required UniqueId id,
      @required UniqueId creator,
      @required RoomType type,
      @required RoomName name,
      @required DateTime date,
      @required TimeOfDay from,
      @required BreakDuration breakDuration,
      @required RoomDescription description,
      @required bool inviteOnly,
      @required List<UniqueId> subscribers}) = _$_Room;

  @override
  UniqueId get id;
  @override
  UniqueId get creator;
  @override
  RoomType get type;
  @override
  RoomName get name;
  @override
  DateTime get date;
  @override
  TimeOfDay get from;
  @override
  BreakDuration get breakDuration;
  @override
  RoomDescription get description;
  @override
  bool get inviteOnly;
  @override
  List<UniqueId> get subscribers;
  @override
  @JsonKey(ignore: true)
  _$RoomCopyWith<_Room> get copyWith;
}
