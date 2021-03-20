/*
 * i_auth_facade.dart  
 *
 * Creator:
 * 3/20/21 5:36 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 5:36 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:dartz/dartz.dart';
import 'package:start_hack/domain/authentication/auth_failure.dart';
import 'package:start_hack/domain/authentication/user.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
