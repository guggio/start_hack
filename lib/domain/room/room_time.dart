/*
 * room_time.dart  
 *
 * Creator:
 * 3/20/21 9:34 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 9:34 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:start_hack/domain/room/period.dart';

part 'room_time.freezed.dart';

@freezed
abstract class RoomTime implements _$RoomTime {
  const RoomTime._();

  const factory RoomTime({
    @required DateTime date,
    @required Period period,
  }) = _RoomTime;

  factory RoomTime.empty() => RoomTime(
        date: DateTime.now(),
        period: Period.empty(),
      );
}
