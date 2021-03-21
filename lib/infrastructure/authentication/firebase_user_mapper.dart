/*
 * firebase_user_mapper.dart  
 *
 * Creator:
 * 3/20/21 5:42 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 5:42 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:start_hack/domain/authentication/user.dart';
import 'package:start_hack/domain/core/unique_id.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
        id: UniqueId.fromUniqueString(uid));
  }
}
