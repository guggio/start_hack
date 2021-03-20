part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: none(),
      );
}
