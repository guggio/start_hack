/*
 * room_type.dart  
 *
 * Creator:
 * 3/20/21 9:31 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 9:31 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:kt_dart/exception.dart';

enum RoomType { coffeeBreak, gameTime, discussion }

extension RoomTypeX on RoomType {
  String toShortString() {
    return this.toString().split('.').last;
  }

  String getDisplayName() {
    switch (this) {
      case RoomType.coffeeBreak:
        return 'Coffee break';
      case RoomType.gameTime:
        return 'Game time';
      case RoomType.discussion:
        return 'Discussion';
    }
    return '';
  }
}

class RoomTypeHelper {
  const RoomTypeHelper._();

  static RoomType toRoomType(String type) {
    for (RoomType roomType in RoomType.values) {
      if (type == roomType.toShortString()) {
        return roomType;
      }
    }
    throw NoSuchElementException("No RoomType defined for $type");
  }
}
