import 'package:cavi_app/providers/index_provider.dart';
import 'package:cavi_app/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './resources/utils/const.dart';
import './screens/main_screen.dart';
import './providers/flight_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
        ChangeNotifierProvider<IndexProvider>(create: (_) => IndexProvider()),
        ChangeNotifierProvider<FlightProvider>(create: (_) => FlightProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeProvider.isDarkMode
                ? Constants.darkTheme
                : Constants.lightTheme,
            home: Consumer<IndexProvider>(
              builder: (context, indexProvider, _) {
                final currentIndex = indexProvider.currentIndex;
                return MainScreen(currentIndex: currentIndex);
              },
            ),
          );
        },
      ),
    );
  }
}
