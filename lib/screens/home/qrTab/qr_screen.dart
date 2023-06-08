import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/theme_provider.dart';
import '../../../resources/utils/const.dart';

class QrScreen extends StatelessWidget {
  static const routeName = '/qr';
  const QrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('QrScreen'),
        ),
        body: Container(
            color:
                themeProvider.isDarkMode ? Constants.darkBG : Constants.lightBG,
            child: const Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text(
                    'QrScreen Text',
                  ),
                ]))));
  }
}
