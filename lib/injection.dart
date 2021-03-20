/*
 * injection.dart  
 *
 * Creator:
 * 3/20/21 10:44 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 10:44 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}