import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../service/firebase_auth_methods.dart';
import '../../../providers/theme_provider.dart';
import '../../../resources/utils/const.dart';
import '../../../resources/widgets/buttons/custom_button.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = '/setting';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final user = context.read<FirebaseAuthMethods>().user;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Container(
        color: themeProvider.isDarkMode ? Constants.darkBG : Constants.lightBG,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Current Theme:',
              ),
              Text(
                themeProvider.isDarkMode ? 'Dark' : 'Light',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: themeProvider.isDarkMode
                          ? Colors.white
                          : Colors.black,
                    ),
              ),
              ElevatedButton(
                onPressed: () {
                  themeProvider.toggleTheme();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeProvider.isDarkMode
                      ? Constants.lightAccent
                      : Constants.darkAccent,
                ),
                child: const Text('Toggle Theme'),
              ),

              //user information
              // when user signs anonymously or with phone, there is no email
              if (!user.isAnonymous && user.phoneNumber == null)
                Text(user.email!),
              if (!user.isAnonymous && user.phoneNumber == null)
                Text(user.providerData[0].providerId),
              // display phone number only when user's phone number is not null
              if (user.phoneNumber != null) Text(user.phoneNumber!),
              // uid is always available for every sign in method
              Text(user.uid),
              // display the button only when the user email is not verified
              // or isnt an anonymous user
              if (!user.emailVerified && !user.isAnonymous)
                CustomButton(
                  onTap: () {
                    context
                        .read<FirebaseAuthMethods>()
                        .sendEmailVerification(context);
                  },
                  text: 'Verify Email',
                ),
              CustomButton(
                onTap: () {
                  context.read<FirebaseAuthMethods>().signOut(context);
                },
                text: 'Sign Out',
              ),
              CustomButton(
                onTap: () {
                  context.read<FirebaseAuthMethods>().deleteAccount(context);
                },
                text: 'Delete Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
