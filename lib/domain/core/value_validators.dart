/*
 * value_validators.dart  
 *
 * Creator:
 * 3/20/21 11:12 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 11:12 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:dartz/dartz.dart';
import 'package:start_hack/domain/core/value_failure.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input,
    int maxLength,
    ) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}