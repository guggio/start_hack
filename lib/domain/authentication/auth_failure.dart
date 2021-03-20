/*
 * auth_failure.dart  
 *
 * Creator:
 * 3/20/21 5:38 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 5:38 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  const factory AuthFailure.serverError() = ServerError;

  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
}
