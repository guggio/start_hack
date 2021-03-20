/*
 * room_repository.dart  
 *
 * Creator:
 * 3/20/21 10:25 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 10:25 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:start_hack/domain/core/loading_failure.dart';
import 'package:start_hack/domain/room/i_room_repository.dart';
import 'package:start_hack/domain/room/room.dart';
import 'package:start_hack/infrastructure/room/room_dto.dart';

@LazySingleton(as: IRoomRepository)
class RoomRepository implements IRoomRepository {
  final FirebaseFirestore _firestore;

  RoomRepository(this._firestore);

  @override
  Future<Either<LoadingFailure, Room>> loadRoom(String roomId) async {
    try {
      final roomDoc = _firestore.collection('rooms').doc(roomId);
      return roomDoc.get().then(
            (doc) => right<LoadingFailure, Room>(
              RoomDto.fromFirestore(doc).toDomain(),
            ),
          );
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const LoadingFailure.insufficientPermission());
      } else {
        return left(const LoadingFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<LoadingFailure, List<Room>>> loadRooms() async* {
    yield* _firestore
        .collection("rooms")
        .snapshots()
        .map((querySnapshot) => right<LoadingFailure, List<Room>>(querySnapshot
            .docs
            .map((doc) => RoomDto.fromFirestore(doc).toDomain()).toList()))
        .transform(StreamTransformer.fromHandlers(
      handleError: (error, stacktrace, sink) {
        if (error is FirebaseException &&
            error.message.contains('PERMISSION_DENIED')) {
          return left(const LoadingFailure.insufficientPermission());
        } else {
          return left(const LoadingFailure.unexpected());
        }
      },
    ));
  }

  @override
  Stream<Either<LoadingFailure, List<Room>>> loadRoomsForUser(String userId) {
    // TODO: implement loadRoomsForUser
    throw UnimplementedError();
  }

  @override
  Future<Either<LoadingFailure, Unit>> create(Room room) async {
    try {
      final roomDto = RoomDto.fromDomain(room);

      final roomCollection = _firestore.collection('rooms');
      await roomCollection.doc(roomDto.id).set(roomDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const LoadingFailure.insufficientPermission());
      } else {
        return left(const LoadingFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<LoadingFailure, Unit>> update(Room room) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<LoadingFailure, Unit>> delete(Room room) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
