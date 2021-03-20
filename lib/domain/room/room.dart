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
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:start_hack/domain/core/unique_id.dart';
import 'package:start_hack/domain/core/value_failure.dart';
import 'package:start_hack/domain/room/break_duration.dart';
import 'package:start_hack/domain/room/room_description.dart';
import 'package:start_hack/domain/room/room_name.dart';
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
    @required DateTime date,
    @required TimeOfDay from,
    @required BreakDuration breakDuration,
    @required RoomDescription description,
    @required bool inviteOnly,
    @required List<UniqueId> subscribers,
  }) = _Room;

  factory Room.empty() => Room(
    id: UniqueId(),
        creator: UniqueId(),
        type: RoomType.coffeeBreak,
        name: RoomName(""),
        date: DateTime.now(),
        from: TimeOfDay(hour: 0, minute: 0),
        breakDuration: BreakDuration.fifteen,
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
