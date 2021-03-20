/*
 * room_description.dart  
 *
 * Creator:
 * 3/20/21 9:40 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 9:40 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:dartz/dartz.dart';
import 'package:start_hack/domain/core/value_failure.dart';
import 'package:start_hack/domain/core/value_object.dart';
import 'package:start_hack/domain/core/value_validators.dart';

class RoomDescription extends ValueObject<String> {
  static const maxLength = 500;

  @override
  final Either<ValueFailure<String>, String> value;

  factory RoomDescription(String input) {
    assert(input != null);
    return RoomDescription._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  RoomDescription._(this.value);

  @override
  bool isEmpty() {
    return failureOrUnits.fold(
      (failure) => failure == ValueFailure.empty(failedValue: ''),
      (_) => false,
    );
  }
}
