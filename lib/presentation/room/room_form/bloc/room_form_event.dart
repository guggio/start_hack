part of 'room_form_bloc.dart';

@freezed
abstract class RoomFormEvent with _$RoomFormEvent {
  const factory RoomFormEvent.initialized(Option<Room> initialRoom) =
      _Initialized;

  const factory RoomFormEvent.typeChanged(RoomType type) = _TypeChanged;

  const factory RoomFormEvent.nameChanged(String name) = _NameChanged;

  const factory RoomFormEvent.dateChanged(DateTime date) = _DateChanged;

  const factory RoomFormEvent.fromChanged(TimeOfDay from) = _FromChanged;

  const factory RoomFormEvent.breakDurationChanged(BreakDuration breakDuration) = _BreakDurationChanged;

  const factory RoomFormEvent.descriptionChanged(String description) =
      _DescriptionChanged;

  const factory RoomFormEvent.inviteOnlyChanged(bool inviteOnly) =
      _InviteOnlyChanged;

  const factory RoomFormEvent.saved() = _Saved;
}
