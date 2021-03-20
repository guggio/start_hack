/*
 * room.dart  
 *
 * Creator:
 * 3/20/21 9:24 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 9:24 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:start_hack/domain/core/unique_id.dart';
import 'package:start_hack/domain/core/value_failure.dart';
import 'package:start_hack/domain/room/room_description.dart';
import 'package:start_hack/domain/room/room_name.dart';
import 'package:start_hack/domain/room/room_time.dart';
import 'package:start_hack/domain/room/room_type.dart';

part 'room.freezed.dart';

@freezed
abstract class Room implements _$Room {
  const Room._();

  const factory Room({
    @required UniqueId id,
    @required UniqueId creator,
    @required RoomType type,
    @required RoomName name,
    @required RoomTime time,
    @required RoomDescription description,
    @required bool inviteOnly,
    @required List<UniqueId> subscribers,
  }) = _Room;

  factory Room.empty() => Room(
        id: UniqueId(),
        creator: UniqueId(),
        type: RoomType.coffeeBreak,
        name: RoomName(""),
        time: RoomTime.empty(),
        description: RoomDescription(""),
        inviteOnly: false,
        subscribers: [],
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnits
        .andThen(description.failureOrUnits)
        .fold((f) => some(f), (_) => none());
  }
}
