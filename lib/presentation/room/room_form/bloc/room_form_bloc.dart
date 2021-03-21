import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:start_hack/domain/authentication/i_auth_facade.dart';
import 'package:start_hack/domain/core/loading_failure.dart';
import 'package:start_hack/domain/core/unique_id.dart';
import 'package:start_hack/domain/core/value_failure.dart';
import 'package:start_hack/domain/room/break_duration.dart';
import 'package:start_hack/domain/room/i_room_repository.dart';
import 'package:start_hack/domain/room/room.dart';
import 'package:start_hack/domain/room/room_description.dart';
import 'package:start_hack/domain/room/room_name.dart';
import 'package:start_hack/domain/room/room_type.dart';
import 'package:start_hack/injection.dart';

part 'room_form_bloc.freezed.dart';
part 'room_form_event.dart';
part 'room_form_state.dart';

@injectable
class RoomFormBloc extends Bloc<RoomFormEvent, RoomFormState> {
  final IRoomRepository _roomRepository;

  RoomFormBloc(this._roomRepository) : super(RoomFormState.initial());

  @override
  Stream<RoomFormState> mapEventToState(
    RoomFormEvent event,
  ) async* {
    yield* event.map(
        initialized: (e) async* {
          final userOption = await getIt<IAuthFacade>().getSignedInUser();
      yield e.initialRoom.fold(
        () => state.copyWith(
          room: state.room.copyWith(
            creator: UniqueId.fromUniqueString(userOption.isSome()
                ? userOption.getOrElse(null).id
                : ""),
          ),
        ),
        (editedRoom) => state.copyWith(
          room: editedRoom,
          isEditing: true,
        ),
      );
    }, typeChanged: (e) async* {
      yield state.copyWith.room(type: e.type);
    }, nameChanged: (e) async* {
      var newName = RoomName(e.name);
      yield state.copyWith(
        room: state.room.copyWith(name: newName),
        saveFailureOrSuccessOption: none(),
        informationComplete:
            newName.isNotEmpty() && state.room.description.isNotEmpty(),
      );
    }, descriptionChanged: (e) async* {
      var newDescription = RoomDescription(e.description);
      yield state.copyWith(
        room: state.room.copyWith(description: newDescription),
        saveFailureOrSuccessOption: none(),
        informationComplete:
            newDescription.isNotEmpty() && state.room.name.isNotEmpty(),
      );
    }, dateChanged: (e) async* {
      yield state.copyWith.room(date: e.date);
    }, fromChanged: (e) async* {
      yield state.copyWith.room(from: e.from);
    }, breakDurationChanged: (e) async* {
      yield state.copyWith.room(breakDuration: e.breakDuration);
    }, inviteOnlyChanged: (e) async* {
      yield state.copyWith.room(inviteOnly: e.inviteOnly);
    }, saved: (e) async* {
      Either<LoadingFailure, Unit> failureOrSuccess;

      yield state.copyWith(
        isSaving: true,
        valueFailureOrOk: state.room.failureOption,
        saveFailureOrSuccessOption: none(),
      );
      if (state.room.failureOption.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _roomRepository.update(state.room)
            : await _roomRepository.create(state.room);
      }

      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        valueFailureOrOk: none(),
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
