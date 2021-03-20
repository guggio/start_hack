/*
 * sign_in_form_page.dart  
 *
 * Creator:
 * 3/20/21 5:59 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 5:59 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/injection.dart';
import 'package:start_hack/presentation/signin/bloc/sign_in_form_bloc.dart';
import 'package:start_hack/presentation/signin/view/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}