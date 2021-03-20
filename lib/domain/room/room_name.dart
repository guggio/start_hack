/*
 * room_name.dart  
 *
 * Creator:
 * 3/20/21 9:32 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 9:32 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:dartz/dartz.dart';
import 'package:start_hack/domain/core/value_failure.dart';
import 'package:start_hack/domain/core/value_object.dart';
import 'package:start_hack/domain/core/value_validators.dart';

class RoomName extends ValueObject<String> {
  static const maxLength = 30;

  @override
  final Either<ValueFailure<String>, String> value;

  factory RoomName(String input) {
    assert(input != null);
    return RoomName._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateSingleLine));
  }

  RoomName._(this.value);

  @override
  bool isEmpty() {
    return failureOrUnits.fold(
      (failure) => failure == ValueFailure.empty(failedValue: ''),
      (_) => false,
    );
  }
}
