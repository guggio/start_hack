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

class RoomTypeHelper {
  const RoomTypeHelper._();

  static RoomType toRoomType(String type) {
    for (RoomType roomType in RoomType.values) {
      if (type == roomType.toString()) {
        return roomType;
      }
    }
    throw NoSuchElementException("No RoomType defined for $type");
  }
}
