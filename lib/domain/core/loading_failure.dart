/*
 * loading_failure.dart  
 *
 * Creator:
 * 3/20/21 10:16 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 10:16 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_failure.freezed.dart';

@freezed
abstract class LoadingFailure with _$LoadingFailure {
  const factory LoadingFailure.unexpected() = _Unexpected;

  const factory LoadingFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory LoadingFailure.unableToUpdate() = _UnableToUpdate;

  const factory LoadingFailure.unableToDelete() = _UnableToDelete;

  const factory LoadingFailure.fileNotFound() = _FileNotFound;

  const factory LoadingFailure.canceled() = _Canceled;
}
