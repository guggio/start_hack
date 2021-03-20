/*
 * user.dart  
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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:start_hack/domain/core/unique_id.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
  }) = _User;
}