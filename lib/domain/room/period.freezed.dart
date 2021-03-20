// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'period.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PeriodTearOff {
  const _$PeriodTearOff();

// ignore: unused_element
  _Period call({TimeOfDay from, TimeOfDay to}) {
    return _Period(
      from: from,
      to: to,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Period = _$PeriodTearOff();

/// @nodoc
mixin _$Period {
  TimeOfDay get from;
  TimeOfDay get to;

  @JsonKey(ignore: true)
  $PeriodCopyWith<Period> get copyWith;
}

/// @nodoc
abstract class $PeriodCopyWith<$Res> {
  factory $PeriodCopyWith(Period value, $Res Function(Period) then) =
      _$PeriodCopyWithImpl<$Res>;
  $Res call({TimeOfDay from, TimeOfDay to});
}

/// @nodoc
class _$PeriodCopyWithImpl<$Res> implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._value, this._then);

  final Period _value;
  // ignore: unused_field
  final $Res Function(Period) _then;

  @override
  $Res call({
    Object from = freezed,
    Object to = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed ? _value.from : from as TimeOfDay,
      to: to == freezed ? _value.to : to as TimeOfDay,
    ));
  }
}

/// @nodoc
abstract class _$PeriodCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$PeriodCopyWith(_Period value, $Res Function(_Period) then) =
      __$PeriodCopyWithImpl<$Res>;
  @override
  $Res call({TimeOfDay from, TimeOfDay to});
}

/// @nodoc
class __$PeriodCopyWithImpl<$Res> extends _$PeriodCopyWithImpl<$Res>
    implements _$PeriodCopyWith<$Res> {
  __$PeriodCopyWithImpl(_Period _value, $Res Function(_Period) _then)
      : super(_value, (v) => _then(v as _Period));

  @override
  _Period get _value => super._value as _Period;

  @override
  $Res call({
    Object from = freezed,
    Object to = freezed,
  }) {
    return _then(_Period(
      from: from == freezed ? _value.from : from as TimeOfDay,
      to: to == freezed ? _value.to : to as TimeOfDay,
    ));
  }
}

/// @nodoc
class _$_Period extends _Period {
  const _$_Period({this.from, this.to}) : super._();

  @override
  final TimeOfDay from;
  @override
  final TimeOfDay to;

  @override
  String toString() {
    return 'Period(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Period &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  _$PeriodCopyWith<_Period> get copyWith =>
      __$PeriodCopyWithImpl<_Period>(this, _$identity);
}

abstract class _Period extends Period {
  const _Period._() : super._();
  const factory _Period({TimeOfDay from, TimeOfDay to}) = _$_Period;

  @override
  TimeOfDay get from;
  @override
  TimeOfDay get to;
  @override
  @JsonKey(ignore: true)
  _$PeriodCopyWith<_Period> get copyWith;
}
