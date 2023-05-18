import 'package:flutter/material.dart';
import 'package:barcode/barcode.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../models/flight.dart';
import '../../providers/theme_provider.dart';
import '../../resources/utils/const.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('QrScreen'),
        ),
        body: Container(
            color:
                themeProvider.isDarkMode ? Constants.darkBG : Constants.lightBG,
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text(
                    'QrScreen Text',
                  ),
                ]))));
  }
}
