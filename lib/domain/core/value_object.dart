/*
 * value_object.dart  
 *
 * Creator:
 * 3/20/21 11:06 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 11:06 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:start_hack/domain/core/errors.dart';
import 'package:start_hack/domain/core/value_failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same was writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  /// Throws [UnsupportedError] when called on a valid object
  ValueFailure<T> getFailure() {
    return value.fold((f) => f, (r) => throw UnsupportedError('Object is valid and has no failure'));
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnits {
    return value.fold(
          (l) => left(l),
          (_) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';

  bool isEmpty() => false;

  bool isNotEmpty() => !isEmpty();
}