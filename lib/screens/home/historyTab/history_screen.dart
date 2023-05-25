import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/theme_provider.dart';
import '../../../resources/utils/const.dart';
import 'history_item.dart';

class HistoryScreen extends StatelessWidget {
  static const routeName = '/history';
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('HistoryScreen'),
        ),
        body: Container(
            color:
                themeProvider.isDarkMode ? Constants.darkBG : Constants.lightBG,
            child: const Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [HistoryItem()]))));
  }
}
