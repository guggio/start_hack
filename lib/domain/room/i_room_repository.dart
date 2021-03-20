/*
 * i_room_repository.dart  
 *
 * Creator:
 * 3/20/21 10:15 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 10:15 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:dartz/dartz.dart';
import 'package:start_hack/domain/core/loading_failure.dart';
import 'package:start_hack/domain/room/room.dart';

abstract class IRoomRepository {
  Future<Either<LoadingFailure, Room>> loadRoom(String roomId);

  Stream<Either<LoadingFailure, List<Room>>> loadRooms();

  Stream<Either<LoadingFailure, List<Room>>> loadRoomsForUser(String userId);

  Future<Either<LoadingFailure, Unit>> create(Room room);

  Future<Either<LoadingFailure, Unit>> update(Room room);

  Future<Either<LoadingFailure, Unit>> delete(Room room);
}
