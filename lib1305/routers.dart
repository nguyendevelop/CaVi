import 'package:flutter/material.dart';

import './screens/main_screen.dart';
import 'models/flight.dart';
import 'screens/history_screen.dart';
import 'screens/home_screen.dart';
import 'screens/qr_screen.dart';
import 'screens/search_screen.dart';
import 'screens/setting_screen.dart';
import './providers/api_provider.dart';

class Routers {
  static const int homeIndex = 0;
  static const int searchIndex = 1;
  static const int qrIndex = 2;
  static const int historyIndex = 3;
  static const int settingIndex = 4;
  static List<Flight> flights = [];

  static Future<Route<dynamic>?> generateRoute(RouteSettings settings) async {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MainScreen());
      case '/home':
      case '/home':
        final apiProvider = ApiProvider();
        final flights = await apiProvider.getFlights();
        Routers.flights = flights;
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            flights: Routers.flights,
          ),
        );
      case '/search':
        return MaterialPageRoute(builder: (_) => SearchScreen());
      case '/qr':
        return MaterialPageRoute(builder: (_) => QrScreen());
      case '/history':
        return MaterialPageRoute(builder: (_) => HistoryScreen());
      case '/setting':
        return MaterialPageRoute(builder: (_) => SettingScreen());
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

  static void navigateTo(BuildContext context, int index) {
    switch (index) {
      case homeIndex:
        Navigator.pushNamedAndRemoveUntil(context, '/home', (_) => false);
        break;
      case searchIndex:
        Navigator.pushNamedAndRemoveUntil(context, '/search', (_) => false);
        break;
      case qrIndex:
        Navigator.pushNamedAndRemoveUntil(context, '/qr', (_) => false);
        break;
      case historyIndex:
        Navigator.pushNamedAndRemoveUntil(context, '/history', (_) => false);
        break;
      case settingIndex:
        Navigator.pushNamedAndRemoveUntil(context, '/setting', (_) => false);
        break;
    }
  }
}
