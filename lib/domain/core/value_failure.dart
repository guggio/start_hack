/*
 * value_failure.dart  
 *
 * Creator:
 * 3/20/21 11:08 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 11:08 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {


  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;

  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;

  const factory ValueFailure.toBeforeFrom() = ToBeforeFrom<T>;
}