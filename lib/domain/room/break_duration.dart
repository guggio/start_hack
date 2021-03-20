/*
 * break_duration.dart  
 *
 * Creator:
 * 3/20/21 7:47 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 7:47 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:kt_dart/kt.dart';

enum BreakDuration { fifteen, fortyfive, sixty }

extension BreakDurationX on BreakDuration {
  String toShortString() {
    return this.toString().split('.').last;
  }

  String getDisplayName() {
    switch (this) {
      case BreakDuration.fifteen:
        return '15 minutes';
      case BreakDuration.fortyfive:
        return '45 minutes';
      case BreakDuration.sixty:
        return '1 hour';
    }
    return '';
  }
}

class BreakDurationHelper {
  const BreakDurationHelper._();

  static BreakDuration toBreakDuration(String type) {
    for (BreakDuration roomType in BreakDuration.values) {
      if (type == roomType.toShortString()) {
        return roomType;
      }
    }
    throw NoSuchElementException("No RoomType defined for $type");
  }
}
