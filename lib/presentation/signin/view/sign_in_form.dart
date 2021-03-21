/*
 * sign_in_form.dart  
 *
 * Creator:
 * 3/20/21 5:50 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 5:50 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start_hack/presentation/signin/auth/auth_bloc.dart';
import 'package:start_hack/presentation/signin/bloc/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
            () {},
            (either) => either.fold(
                  (failure) {
                    final snackBar = SnackBar(
                      content: Text(failure.map(
                        cancelledByUser: (_) => 'Canelled',
                        serverError: (_) => 'Server Error',
                        emailAlreadyInUse: (_) => 'Email already in use',
                      )),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  (_) {
                    // Navigator.of(context).
                    // ExtendedNavigator.of(context).pushNotesOverviewPage();

                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.authCheckRequested());
                  },
                ));
      },
      builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Stack(
              children: [
                SvgPicture.asset("assets/images/home-page-illustration.svg",
                    width: 1000),
                Positioned(
                  left: 50,
                  top: 100,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/espressout-logo-large.png",
                        width: 50,
                      ),
                      SizedBox(width: 24),
                      Text(
                        "Esspressout",
                        style: TextStyle(
                          fontSize: 36,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 240,
                  child: Text(
                    "Looks like your employer signed you up!",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return Color(0xff7500C0);
                        },
                      ),
                    ),
                    onPressed: () {
                      context
                          .read<SignInFormBloc>()
                          .add(const SignInFormEvent.signInWithGooglePressed());
                    },
                    // color: Colors.lightBlue,
                    child: const Text(
                      'SIGN IN WITH GOOGLE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (state.isSubmitting) ...[
              const SizedBox(height: 8),
              const LinearProgressIndicator(value: null),
            ]
          ],
        );
      },
    );
  }
}
