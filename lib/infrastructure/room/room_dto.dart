/*
 * room_dto.dart  
 *
 * Creator:
 * 3/20/21 9:50 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 9:50 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:start_hack/domain/core/unique_id.dart';
import 'package:start_hack/domain/room/break_duration.dart';
import 'package:start_hack/domain/room/period.dart';
import 'package:start_hack/domain/room/room.dart';
import 'package:start_hack/domain/room/room_description.dart';
import 'package:start_hack/domain/room/room_name.dart';
import 'package:start_hack/domain/room/room_time.dart';
import 'package:start_hack/domain/room/room_type.dart';

part 'room_dto.freezed.dart';
part 'room_dto.g.dart';

@freezed
abstract class RoomDto implements _$RoomDto {
  const RoomDto._();

  const factory RoomDto({
    @JsonKey(ignore: true) String id,
    @required String creator,
    @required String type,
    @required String name,
    @required int dateMicroseconds,
    @required List<int> from,
    @required String breakDuration,
    @required String description,
    @required bool inviteOnly,
    @required List<String> subscribers,
  }) = _RoomDto;

  factory RoomDto.fromDomain(Room room) {
    return RoomDto(
      id: room.id.value,
      creator: room.creator.value,
      type: room.type.toShortString(),
      name: room.name.getOrCrash(),
      dateMicroseconds: room.date.microsecondsSinceEpoch,
      from: [room.from.hour, room.from.minute],
      breakDuration: room.breakDuration.toShortString(),
      description: room.description.getOrCrash(),
      inviteOnly: room.inviteOnly,
      subscribers: room.subscribers.map((id) => id.value).toList(),
    );
  }

  Room toDomain() {
    return Room(
      id: UniqueId.fromUniqueString(id),
      creator: UniqueId.fromUniqueString(creator),
      type: RoomTypeHelper.toRoomType(type),
      date: DateTime.fromMicrosecondsSinceEpoch(dateMicroseconds),
      from: TimeOfDay(hour: from[0], minute: from[1]),
      breakDuration: BreakDurationHelper.toBreakDuration(breakDuration),
      name: RoomName(name),
      description: RoomDescription(description),
      inviteOnly: inviteOnly,
      subscribers: subscribers.map((e) => UniqueId.fromUniqueString(e)),
    );
  }

  factory RoomDto.fromJson(Map<String, dynamic> json) =>
      _$RoomDtoFromJson(json);

  factory RoomDto.fromFirestore(DocumentSnapshot doc) {
    return RoomDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

@freezed
abstract class RoomTimeDto implements _$RoomTimeDto {
  const RoomTimeDto._();

  const factory RoomTimeDto({
    @required int dateMicroseconds,
    @required List<int> from,
    @required List<int> to,
  }) = _RoomTimeDto;

  factory RoomTimeDto.fromDomain(RoomTime time) {
    return RoomTimeDto(
      dateMicroseconds: time.date.microsecondsSinceEpoch,
      from: [time.period.from.hour, time.period.to.minute],
      to: [time.period.to.hour, time.period.to.minute],
    );
  }

  RoomTime toDomain() {
    final fromTime = TimeOfDay(hour: from[0], minute: from[1]);
    final toTime = TimeOfDay(hour: to[0], minute: to[1]);
    return RoomTime(
      date: DateTime.fromMicrosecondsSinceEpoch(dateMicroseconds),
      period: Period(from: fromTime, to: toTime),
    );
  }

  factory RoomTimeDto.fromJson(Map<String, dynamic> json) =>
      _$RoomTimeDtoFromJson(json);
}
