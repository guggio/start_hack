/*
 * unique_id.dart  
 *
 * Creator:
 * 3/20/21 9:25 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 9:25 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:uuid/uuid.dart';

class UniqueId {
  final String value;

  factory UniqueId() {
    return UniqueId._(
      Uuid().v1(),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      uniqueId,
    );
  }

  UniqueId._(this.value);
}
