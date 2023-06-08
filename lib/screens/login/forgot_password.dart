import 'package:flutter/material.dart';

import '../../service/firebase_auth_methods.dart';
import '../../resources/widgets/inputs/custom_textfield.dart';

class ForgotPassword extends StatefulWidget {
  static const routeName = '/forgot-password';
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  //   void resetPassword() {
  //   FirebaseAuthMethods(FirebaseAuth.instance)
  //       .resetPassword(context, emailController.text);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: emailController,
              hintText: 'Enter email',
            ),
            const SizedBox(height: 20),
            // CustomButton(
            //   onTap: () {
            //     context
            //         .read<FirebaseAuthMethods>()
            //         .emailController(context, emailController.text);
            //   },
            //   // onTap: phoneSignIn,
            //   text: 'Reset Password',
            // ),
          ],
        ),
      ),
    );
  }
}
