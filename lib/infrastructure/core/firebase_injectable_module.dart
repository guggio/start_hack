/*
 * firebase_injectable_module.dart  
 *
 * Creator:
 * 3/20/21 11:14 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 11:14 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}
