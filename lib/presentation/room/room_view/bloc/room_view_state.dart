part of 'room_view_bloc.dart';

@freezed
abstract class RoomViewState with _$RoomViewState {
  const factory RoomViewState.initial() = _Initial;

  const factory RoomViewState.loadInProgress() = _LoadInProgress;

  const factory RoomViewState.loadSuccess(Room room) = _LoadSuccess;

  const factory RoomViewState.multipleLoadSuccess(List<Room> rooms) =
      _MultipleLoadSuccess;

  const factory RoomViewState.loadFailure(LoadingFailure loadingFailure) =
      _LoadFailure;
}
