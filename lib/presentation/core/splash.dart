/*
 * splash.dart  
 *
 * Creator:
 * 3/20/21 5:57 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 5:57 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/presentation/core/homepage.dart';
import 'package:start_hack/presentation/signin/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage())),
            unauthenticated: (_) => Navigator.of(context)
                // .push(MaterialPageRoute(builder: (context) => SignInPage())));
            .push(MaterialPageRoute(builder: (context) => HomePage())));

      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
