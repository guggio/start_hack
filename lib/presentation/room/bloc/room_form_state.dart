part of 'room_form_bloc.dart';

@freezed
abstract class RoomFormState with _$RoomFormState {
  const factory RoomFormState({
    @required Room room,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<ValueFailure> valueFailureOrOk,
    @required Option<Either<LoadingFailure, Unit>> saveFailureOrSuccessOption,
    @required bool informationComplete,
  }) = _RoomFormState;

  factory RoomFormState.initial() => RoomFormState(
        room: Room.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        valueFailureOrOk: none(),
        saveFailureOrSuccessOption: none(),
        informationComplete: false,
      );
}
