// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RoomTimeTearOff {
  const _$RoomTimeTearOff();

// ignore: unused_element
  _RoomTime call({@required DateTime date, @required Period period}) {
    return _RoomTime(
      date: date,
      period: period,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomTime = _$RoomTimeTearOff();

/// @nodoc
mixin _$RoomTime {
  DateTime get date;
  Period get period;

  @JsonKey(ignore: true)
  $RoomTimeCopyWith<RoomTime> get copyWith;
}

/// @nodoc
abstract class $RoomTimeCopyWith<$Res> {
  factory $RoomTimeCopyWith(RoomTime value, $Res Function(RoomTime) then) =
      _$RoomTimeCopyWithImpl<$Res>;
  $Res call({DateTime date, Period period});

  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class _$RoomTimeCopyWithImpl<$Res> implements $RoomTimeCopyWith<$Res> {
  _$RoomTimeCopyWithImpl(this._value, this._then);

  final RoomTime _value;
  // ignore: unused_field
  final $Res Function(RoomTime) _then;

  @override
  $Res call({
    Object date = freezed,
    Object period = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      period: period == freezed ? _value.period : period as Period,
    ));
  }

  @override
  $PeriodCopyWith<$Res> get period {
    if (_value.period == null) {
      return null;
    }
    return $PeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value));
    });
  }
}

/// @nodoc
abstract class _$RoomTimeCopyWith<$Res> implements $RoomTimeCopyWith<$Res> {
  factory _$RoomTimeCopyWith(_RoomTime value, $Res Function(_RoomTime) then) =
      __$RoomTimeCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, Period period});

  @override
  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class __$RoomTimeCopyWithImpl<$Res> extends _$RoomTimeCopyWithImpl<$Res>
    implements _$RoomTimeCopyWith<$Res> {
  __$RoomTimeCopyWithImpl(_RoomTime _value, $Res Function(_RoomTime) _then)
      : super(_value, (v) => _then(v as _RoomTime));

  @override
  _RoomTime get _value => super._value as _RoomTime;

  @override
  $Res call({
    Object date = freezed,
    Object period = freezed,
  }) {
    return _then(_RoomTime(
      date: date == freezed ? _value.date : date as DateTime,
      period: period == freezed ? _value.period : period as Period,
    ));
  }
}

/// @nodoc
class _$_RoomTime extends _RoomTime {
  const _$_RoomTime({@required this.date, @required this.period})
      : assert(date != null),
        assert(period != null),
        super._();

  @override
  final DateTime date;
  @override
  final Period period;

  @override
  String toString() {
    return 'RoomTime(date: $date, period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomTime &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(period);

  @JsonKey(ignore: true)
  @override
  _$RoomTimeCopyWith<_RoomTime> get copyWith =>
      __$RoomTimeCopyWithImpl<_RoomTime>(this, _$identity);
}

abstract class _RoomTime extends RoomTime {
  const _RoomTime._() : super._();
  const factory _RoomTime({@required DateTime date, @required Period period}) =
      _$_RoomTime;

  @override
  DateTime get date;
  @override
  Period get period;
  @override
  @JsonKey(ignore: true)
  _$RoomTimeCopyWith<_RoomTime> get copyWith;
}
