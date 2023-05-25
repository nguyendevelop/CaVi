import 'package:caviapp/screens/login/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../service/firebase_auth_methods.dart';
import '../../resources/widgets/buttons/custom_button.dart';
import '../signup/signup_email_password_screen.dart';
import './login_email_password_screen.dart';
import '../signup/phone_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, EmailPasswordSignup.routeName);
              },
              text: 'Email/Password Sign Up',
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, EmailPasswordLogin.routeName);
              },
              text: 'Email/Password Login',
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, ForgotPassword.routeName);
              },
              text: 'Forgot Password',
            ),
            CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, PhoneScreen.routeName);
                },
                text: 'Phone Sign In'),
            CustomButton(
              onTap: () {
                context.read<FirebaseAuthMethods>().signInWithGoogle(context);
                // FirebaseAuthMethods(FirebaseAuth.instance)
                //     .signInWithGoogle(context);
              },
              text: 'Google Sign In',
            ),
            // CustomButton(
            //   onTap: () {
            //     context.read<FirebaseAuthMethods>().signInWithFacebook(context);
            //   },
            //   text: 'Facebook Sign In',
            // ),
            CustomButton(
              onTap: () {
                // FirebaseAuthMethods(FirebaseAuth.instance)
                //     .signInAnonymously(context);
                context.read<FirebaseAuthMethods>().signInAnonymously(context);
              },
              text: 'Anonymous Sign In',
            ),
          ],
        ),
      ),
    );
  }
}
