import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:start_hack/domain/core/loading_failure.dart';
import 'package:start_hack/domain/room/i_room_repository.dart';
import 'package:start_hack/domain/room/room.dart';

part 'room_view_bloc.freezed.dart';
part 'room_view_event.dart';
part 'room_view_state.dart';

@injectable
class RoomViewBloc extends Bloc<RoomViewEvent, RoomViewState> {
  final IRoomRepository _roomRepository;

  StreamSubscription<Either<LoadingFailure, List<Room>>>
      _roomStreamSubscription;

  RoomViewBloc(this._roomRepository) : super(RoomViewState.initial());

  @override
  Stream<RoomViewState> mapEventToState(
    RoomViewEvent event,
  ) async* {
    yield* event.map(
      loadStarted: (e) async* {
        yield const RoomViewState.loadInProgress();
        await _roomStreamSubscription?.cancel();
        await _roomRepository.loadRoom(e.roomId).then(
            (failureOrRoom) => add(RoomViewEvent.roomReceived(failureOrRoom)));
      },
      loadAllStarted: (e) async* {
        yield const RoomViewState.loadInProgress();
        await _roomStreamSubscription?.cancel();
        _roomStreamSubscription = _roomRepository.loadRooms().listen(
            (failureOrRooms) =>
                add(RoomViewEvent.multipleRoomsReceived(failureOrRooms)));
      },
      roomReceived: (e) async* {
        yield e.failureOrRoom.fold(
          (failure) => RoomViewState.loadFailure(failure),
          (gym) => RoomViewState.loadSuccess(gym),
        );
      },
      multipleRoomsReceived: (e) async* {
        yield e.failureOrRooms.fold(
          (failure) => RoomViewState.loadFailure(failure),
          (gyms) => RoomViewState.multipleLoadSuccess(gyms),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _roomStreamSubscription?.cancel();
    return super.close();
  }
}
