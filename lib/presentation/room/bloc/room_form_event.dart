part of 'room_form_bloc.dart';

@freezed
abstract class RoomFormEvent with _$RoomFormEvent {
  const factory RoomFormEvent.initialized(Option<Room> initialRoom) =
      _Initialized;

  const factory RoomFormEvent.typeChanged(RoomType type) = _TypeChanged;

  const factory RoomFormEvent.nameChanged(String name) = _NameChanged;

  const factory RoomFormEvent.timeChanged(RoomTime time) = _TimeChanged;

  const factory RoomFormEvent.descriptionChanged(String description) =
      _DescriptionChanged;

  const factory RoomFormEvent.inviteOnlyChanged(bool inviteOnly) =
      _InviteOnlyChanged;

  const factory RoomFormEvent.saved() = _Saved;
}
