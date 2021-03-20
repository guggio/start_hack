/*
 * period.dart  
 *
 * Creator:
 * 3/20/21 9:37 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 9:37 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'period.freezed.dart';

const emptyTimeOfDay = TimeOfDay(hour: 0, minute: 0);

@freezed
abstract class Period implements _$Period {
  const Period._();

  const factory Period({
    TimeOfDay from,
    TimeOfDay to,
  }) = _Period;

  factory Period.empty() => Period(
    from: emptyTimeOfDay,
    to: emptyTimeOfDay,
  );

  bool get isEmpty => from == emptyTimeOfDay && to == emptyTimeOfDay;

  bool get toBeforeFrom =>
      (to.hour < from.hour) && to.hour != 0 ||
          (to.hour == from.hour && to.minute < from.minute);

  bool get fromEqualsTo => from == to;

  String toTimeString() {
    final fromTimeString = from.getTimeString();
    final toTimeString = to.getTimeString();
    return "$fromTimeString to $toTimeString";
  }
}

extension TimeOfDayX on TimeOfDay {
  String getTimeString() {
    final hour = addLeadingZero(this.hour);
    final minute = addLeadingZero(this.minute);
    return "$hour:$minute";
  }

  String addLeadingZero(int number) {
    return number.toString().padLeft(2, '0');
  }
}