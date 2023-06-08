import 'package:caviapp/screens/login/forgot_password.dart';
import 'package:flutter/material.dart';

import 'screens/home/historyTab/history_screen.dart';
import 'screens/home/homeTab/home_screen.dart';
import 'screens/home/qrTab/qr_screen.dart';
import 'screens/home/searchTab/search_screen.dart';
import 'screens/home/settingTab/setting_screen.dart';
import 'screens/login/login_email_password_screen.dart';
import 'screens/signup/phone_screen.dart';
import 'screens/signup/signup_email_password_screen.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case EmailPasswordSignup.routeName:
        return MaterialPageRoute(builder: (_) => const EmailPasswordSignup());
      case EmailPasswordLogin.routeName:
        return MaterialPageRoute(builder: (_) => const EmailPasswordLogin());
      case ForgotPassword.routeName:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case PhoneScreen.routeName:
        return MaterialPageRoute(builder: (_) => const PhoneScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case SearchScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case QrScreen.routeName:
        return MaterialPageRoute(builder: (_) => const QrScreen());
      case HistoryScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HistoryScreen());
      case SettingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SettingScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Screen does not exist!'),
            ),
          ),
        );
    }
  }
}
