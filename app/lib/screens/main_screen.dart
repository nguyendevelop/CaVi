import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/widgets/other/custom_bottom_navbar.dart';
import 'home/historyTab/history_screen.dart';
import 'home/homeTab/home_screen.dart';
import 'main_controller.dart';
import 'home/qrTab/qr_screen.dart';
import 'home/searchTab/search_screen.dart';
import 'home/settingTab/setting_screen.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
// final user = context.read<FirebaseAuthMethods>().user;

// return Scaffold(
//   body: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       // when user signs anonymously or with phone, there is no email
//       if (!user.isAnonymous && user.phoneNumber == null) Text(user.email!),
//       if (!user.isAnonymous && user.phoneNumber == null)
//         Text(user.providerData[0].providerId),
//       // display phone number only when user's phone number is not null
//       if (user.phoneNumber != null) Text(user.phoneNumber!),
//       // uid is always available for every sign in method
//       Text(user.uid),
//       // display the button only when the user email is not verified
//       // or isnt an anonymous user
//       if (!user.emailVerified && !user.isAnonymous)
//         CustomButton(
//           onTap: () {
//             context
//                 .read<FirebaseAuthMethods>()
//                 .sendEmailVerification(context);
//           },
//           text: 'Verify Email',
//         ),
//       CustomButton(
//         onTap: () {
//           context.read<FirebaseAuthMethods>().signOut(context);
//         },
//         text: 'Sign Out',
//       ),
//       CustomButton(
//         onTap: () {
//           context.read<FirebaseAuthMethods>().deleteAccount(context);
//         },
//         text: 'Delete Account',
//       ),
//     ],
//   ),
// );

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;

    return Consumer<MainController>(
      builder: (context, controller, _) {
        return Scaffold(
          // appBar: AppBar(
          //   title: const Text('Home'),
          // ),
          extendBody: true,
          backgroundColor: const Color(0xFFFAFAFA),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: keyboardIsOpened
              ? null
              : //or an empty container
              FloatingActionButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, QrScreen.routeName),
                  child: const Icon(Icons.qr_code),
                ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            color: Theme.of(context).primaryColor,
            elevation: 10,
            notchMargin: 10,
            child: CustomBottomNavBar(
              selectedIndex: controller.selectedPage.value,
              onTap: (index) {
                controller.navigation(index);
              },
            ),
          ),
          body: ValueListenableBuilder<int>(
            valueListenable: controller.selectedPage,
            builder: (context, value, _) {
              return PageView(
                controller: controller.pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  HomeScreen(),
                  SearchScreen(),
                  HistoryScreen(),
                  SettingScreen(),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
