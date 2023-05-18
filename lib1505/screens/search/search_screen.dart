import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/search_provider.dart';
import '../../providers/theme_provider.dart';
import '../../resources/utils/const.dart';
import 'choose_airport.dart';
import 'choose_date.dart';
import 'ticket_confirm.dart';
import 'ticket_order.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('SearchScreen'),
        ),
        body: Container(
            color:
                themeProvider.isDarkMode ? Constants.darkBG : Constants.lightBG,
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text(
                    'SearchScreen Text',
                  ),
                ]))));
  }
}
