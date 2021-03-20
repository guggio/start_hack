/*
 * errors.dart  
 *
 * Creator:
 * 3/20/21 11:07 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 11:07 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:start_hack/domain/core/value_failure.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was : $valueFailure');
  }
}