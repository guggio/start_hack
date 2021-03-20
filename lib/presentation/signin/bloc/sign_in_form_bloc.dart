import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:start_hack/domain/authentication/auth_failure.dart';
import 'package:start_hack/domain/authentication/i_auth_facade.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(signInWithGooglePressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccess: some(failureOrSuccess),
      );
    });
  }
}
