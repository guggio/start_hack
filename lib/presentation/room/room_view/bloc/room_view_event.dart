part of 'room_view_bloc.dart';

@freezed
abstract class RoomViewEvent with _$RoomViewEvent {
  const factory RoomViewEvent.loadStarted(String roomId) = _LoadStarted;

  const factory RoomViewEvent.loadAllStarted() = _LoadAllStarted;

  const factory RoomViewEvent.roomReceived(
      Either<LoadingFailure, Room> failureOrRoom) = _RoomReceived;

  const factory RoomViewEvent.multipleRoomsReceived(
          Either<LoadingFailure, List<Room>> failureOrRooms) =
      _MultipleRoomsReceived;
}
