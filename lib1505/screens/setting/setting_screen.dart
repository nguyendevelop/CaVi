import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/theme_provider.dart';
import '../../resources/utils/const.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Container(
        color: themeProvider.isDarkMode ? Constants.darkBG : Constants.lightBG,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Theme:',
              ),
              Text(
                themeProvider.isDarkMode ? 'Dark' : 'Light',
                style: Theme.of(context).textTheme.headline4?.copyWith(
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
                  primary: themeProvider.isDarkMode
                      ? Constants.lightAccent
                      : Constants.darkAccent,
                ),
                child: Text('Toggle Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
