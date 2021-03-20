// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RoomDto _$RoomDtoFromJson(Map<String, dynamic> json) {
  return _RoomDto.fromJson(json);
}

/// @nodoc
class _$RoomDtoTearOff {
  const _$RoomDtoTearOff();

// ignore: unused_element
  _RoomDto call(
      {@JsonKey(ignore: true) String id,
      @required String creator,
      @required String type,
      @required String name,
      @required int dateMicroseconds,
      @required List<int> from,
      @required String breakDuration,
      @required String description,
      @required bool inviteOnly,
      @required List<String> subscribers}) {
    return _RoomDto(
      id: id,
      creator: creator,
      type: type,
      name: name,
      dateMicroseconds: dateMicroseconds,
      from: from,
      breakDuration: breakDuration,
      description: description,
      inviteOnly: inviteOnly,
      subscribers: subscribers,
    );
  }

// ignore: unused_element
  RoomDto fromJson(Map<String, Object> json) {
    return RoomDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RoomDto = _$RoomDtoTearOff();

/// @nodoc
mixin _$RoomDto {
  @JsonKey(ignore: true)
  String get id;
  String get creator;
  String get type;
  String get name;
  int get dateMicroseconds;
  List<int> get from;
  String get breakDuration;
  String get description;
  bool get inviteOnly;
  List<String> get subscribers;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RoomDtoCopyWith<RoomDto> get copyWith;
}

/// @nodoc
abstract class $RoomDtoCopyWith<$Res> {
  factory $RoomDtoCopyWith(RoomDto value, $Res Function(RoomDto) then) =
      _$RoomDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String creator,
      String type,
      String name,
      int dateMicroseconds,
      List<int> from,
      String breakDuration,
      String description,
      bool inviteOnly,
      List<String> subscribers});
}

/// @nodoc
class _$RoomDtoCopyWithImpl<$Res> implements $RoomDtoCopyWith<$Res> {
  _$RoomDtoCopyWithImpl(this._value, this._then);

  final RoomDto _value;
  // ignore: unused_field
  final $Res Function(RoomDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object creator = freezed,
    Object type = freezed,
    Object name = freezed,
    Object dateMicroseconds = freezed,
    Object from = freezed,
    Object breakDuration = freezed,
    Object description = freezed,
    Object inviteOnly = freezed,
    Object subscribers = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      creator: creator == freezed ? _value.creator : creator as String,
      type: type == freezed ? _value.type : type as String,
      name: name == freezed ? _value.name : name as String,
      dateMicroseconds: dateMicroseconds == freezed
          ? _value.dateMicroseconds
          : dateMicroseconds as int,
      from: from == freezed ? _value.from : from as List<int>,
      breakDuration: breakDuration == freezed
          ? _value.breakDuration
          : breakDuration as String,
      description:
          description == freezed ? _value.description : description as String,
      inviteOnly:
          inviteOnly == freezed ? _value.inviteOnly : inviteOnly as bool,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$RoomDtoCopyWith<$Res> implements $RoomDtoCopyWith<$Res> {
  factory _$RoomDtoCopyWith(_RoomDto value, $Res Function(_RoomDto) then) =
      __$RoomDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String creator,
      String type,
      String name,
      int dateMicroseconds,
      List<int> from,
      String breakDuration,
      String description,
      bool inviteOnly,
      List<String> subscribers});
}

/// @nodoc
class __$RoomDtoCopyWithImpl<$Res> extends _$RoomDtoCopyWithImpl<$Res>
    implements _$RoomDtoCopyWith<$Res> {
  __$RoomDtoCopyWithImpl(_RoomDto _value, $Res Function(_RoomDto) _then)
      : super(_value, (v) => _then(v as _RoomDto));

  @override
  _RoomDto get _value => super._value as _RoomDto;

  @override
  $Res call({
    Object id = freezed,
    Object creator = freezed,
    Object type = freezed,
    Object name = freezed,
    Object dateMicroseconds = freezed,
    Object from = freezed,
    Object breakDuration = freezed,
    Object description = freezed,
    Object inviteOnly = freezed,
    Object subscribers = freezed,
  }) {
    return _then(_RoomDto(
      id: id == freezed ? _value.id : id as String,
      creator: creator == freezed ? _value.creator : creator as String,
      type: type == freezed ? _value.type : type as String,
      name: name == freezed ? _value.name : name as String,
      dateMicroseconds: dateMicroseconds == freezed
          ? _value.dateMicroseconds
          : dateMicroseconds as int,
      from: from == freezed ? _value.from : from as List<int>,
      breakDuration: breakDuration == freezed
          ? _value.breakDuration
          : breakDuration as String,
      description:
          description == freezed ? _value.description : description as String,
      inviteOnly:
          inviteOnly == freezed ? _value.inviteOnly : inviteOnly as bool,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RoomDto extends _RoomDto {
  const _$_RoomDto(
      {@JsonKey(ignore: true) this.id,
      @required this.creator,
      @required this.type,
      @required this.name,
      @required this.dateMicroseconds,
      @required this.from,
      @required this.breakDuration,
      @required this.description,
      @required this.inviteOnly,
      @required this.subscribers})
      : assert(creator != null),
        assert(type != null),
        assert(name != null),
        assert(dateMicroseconds != null),
        assert(from != null),
        assert(breakDuration != null),
        assert(description != null),
        assert(inviteOnly != null),
        assert(subscribers != null),
        super._();

  factory _$_RoomDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RoomDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String creator;
  @override
  final String type;
  @override
  final String name;
  @override
  final int dateMicroseconds;
  @override
  final List<int> from;
  @override
  final String breakDuration;
  @override
  final String description;
  @override
  final bool inviteOnly;
  @override
  final List<String> subscribers;

  @override
  String toString() {
    return 'RoomDto(id: $id, creator: $creator, type: $type, name: $name, dateMicroseconds: $dateMicroseconds, from: $from, breakDuration: $breakDuration, description: $description, inviteOnly: $inviteOnly, subscribers: $subscribers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.dateMicroseconds, dateMicroseconds) ||
                const DeepCollectionEquality()
                    .equals(other.dateMicroseconds, dateMicroseconds)) &&
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
      const DeepCollectionEquality().hash(dateMicroseconds) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(breakDuration) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(inviteOnly) ^
      const DeepCollectionEquality().hash(subscribers);

  @JsonKey(ignore: true)
  @override
  _$RoomDtoCopyWith<_RoomDto> get copyWith =>
      __$RoomDtoCopyWithImpl<_RoomDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoomDtoToJson(this);
  }
}

abstract class _RoomDto extends RoomDto {
  const _RoomDto._() : super._();
  const factory _RoomDto(
      {@JsonKey(ignore: true) String id,
      @required String creator,
      @required String type,
      @required String name,
      @required int dateMicroseconds,
      @required List<int> from,
      @required String breakDuration,
      @required String description,
      @required bool inviteOnly,
      @required List<String> subscribers}) = _$_RoomDto;

  factory _RoomDto.fromJson(Map<String, dynamic> json) = _$_RoomDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get creator;
  @override
  String get type;
  @override
  String get name;
  @override
  int get dateMicroseconds;
  @override
  List<int> get from;
  @override
  String get breakDuration;
  @override
  String get description;
  @override
  bool get inviteOnly;
  @override
  List<String> get subscribers;
  @override
  @JsonKey(ignore: true)
  _$RoomDtoCopyWith<_RoomDto> get copyWith;
}

RoomTimeDto _$RoomTimeDtoFromJson(Map<String, dynamic> json) {
  return _RoomTimeDto.fromJson(json);
}

/// @nodoc
class _$RoomTimeDtoTearOff {
  const _$RoomTimeDtoTearOff();

// ignore: unused_element
  _RoomTimeDto call(
      {@required int dateMicroseconds,
      @required List<int> from,
      @required List<int> to}) {
    return _RoomTimeDto(
      dateMicroseconds: dateMicroseconds,
      from: from,
      to: to,
    );
  }

// ignore: unused_element
  RoomTimeDto fromJson(Map<String, Object> json) {
    return RoomTimeDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RoomTimeDto = _$RoomTimeDtoTearOff();

/// @nodoc
mixin _$RoomTimeDto {
  int get dateMicroseconds;
  List<int> get from;
  List<int> get to;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RoomTimeDtoCopyWith<RoomTimeDto> get copyWith;
}

/// @nodoc
abstract class $RoomTimeDtoCopyWith<$Res> {
  factory $RoomTimeDtoCopyWith(
          RoomTimeDto value, $Res Function(RoomTimeDto) then) =
      _$RoomTimeDtoCopyWithImpl<$Res>;
  $Res call({int dateMicroseconds, List<int> from, List<int> to});
}

/// @nodoc
class _$RoomTimeDtoCopyWithImpl<$Res> implements $RoomTimeDtoCopyWith<$Res> {
  _$RoomTimeDtoCopyWithImpl(this._value, this._then);

  final RoomTimeDto _value;
  // ignore: unused_field
  final $Res Function(RoomTimeDto) _then;

  @override
  $Res call({
    Object dateMicroseconds = freezed,
    Object from = freezed,
    Object to = freezed,
  }) {
    return _then(_value.copyWith(
      dateMicroseconds: dateMicroseconds == freezed
          ? _value.dateMicroseconds
          : dateMicroseconds as int,
      from: from == freezed ? _value.from : from as List<int>,
      to: to == freezed ? _value.to : to as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$RoomTimeDtoCopyWith<$Res>
    implements $RoomTimeDtoCopyWith<$Res> {
  factory _$RoomTimeDtoCopyWith(
          _RoomTimeDto value, $Res Function(_RoomTimeDto) then) =
      __$RoomTimeDtoCopyWithImpl<$Res>;
  @override
  $Res call({int dateMicroseconds, List<int> from, List<int> to});
}

/// @nodoc
class __$RoomTimeDtoCopyWithImpl<$Res> extends _$RoomTimeDtoCopyWithImpl<$Res>
    implements _$RoomTimeDtoCopyWith<$Res> {
  __$RoomTimeDtoCopyWithImpl(
      _RoomTimeDto _value, $Res Function(_RoomTimeDto) _then)
      : super(_value, (v) => _then(v as _RoomTimeDto));

  @override
  _RoomTimeDto get _value => super._value as _RoomTimeDto;

  @override
  $Res call({
    Object dateMicroseconds = freezed,
    Object from = freezed,
    Object to = freezed,
  }) {
    return _then(_RoomTimeDto(
      dateMicroseconds: dateMicroseconds == freezed
          ? _value.dateMicroseconds
          : dateMicroseconds as int,
      from: from == freezed ? _value.from : from as List<int>,
      to: to == freezed ? _value.to : to as List<int>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RoomTimeDto extends _RoomTimeDto {
  const _$_RoomTimeDto(
      {@required this.dateMicroseconds, @required this.from, @required this.to})
      : assert(dateMicroseconds != null),
        assert(from != null),
        assert(to != null),
        super._();

  factory _$_RoomTimeDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RoomTimeDtoFromJson(json);

  @override
  final int dateMicroseconds;
  @override
  final List<int> from;
  @override
  final List<int> to;

  @override
  String toString() {
    return 'RoomTimeDto(dateMicroseconds: $dateMicroseconds, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomTimeDto &&
            (identical(other.dateMicroseconds, dateMicroseconds) ||
                const DeepCollectionEquality()
                    .equals(other.dateMicroseconds, dateMicroseconds)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateMicroseconds) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  _$RoomTimeDtoCopyWith<_RoomTimeDto> get copyWith =>
      __$RoomTimeDtoCopyWithImpl<_RoomTimeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoomTimeDtoToJson(this);
  }
}

abstract class _RoomTimeDto extends RoomTimeDto {
  const _RoomTimeDto._() : super._();
  const factory _RoomTimeDto(
      {@required int dateMicroseconds,
      @required List<int> from,
      @required List<int> to}) = _$_RoomTimeDto;

  factory _RoomTimeDto.fromJson(Map<String, dynamic> json) =
      _$_RoomTimeDto.fromJson;

  @override
  int get dateMicroseconds;
  @override
  List<int> get from;
  @override
  List<int> get to;
  @override
  @JsonKey(ignore: true)
  _$RoomTimeDtoCopyWith<_RoomTimeDto> get copyWith;
}
