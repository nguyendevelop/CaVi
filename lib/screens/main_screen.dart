import 'package:cavi_app/providers/index_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/flight_provider.dart';
import '../providers/theme_provider.dart';
import 'qr/qr_screen.dart';
import 'home/home_screen.dart';
import 'setting/setting_screen.dart';
import 'search/search_screen.dart';
import 'history/history_screen.dart';

class MainScreen extends StatelessWidget {
  final List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.qr_code,
    Icons.history,
    Icons.settings,
  ];

  final int currentIndex;

  MainScreen({required this.currentIndex});

  void navigateToPage(BuildContext context, int index) {
    Provider.of<IndexProvider>(context, listen: false).setCurrentIndex(index);
  }

  Widget buildTabIcon(BuildContext context, int index) {
    final iconColor = currentIndex == index
        ? Theme.of(context).accentColor
        : Theme.of(context).textTheme.caption!.color;

    return IconButton(
      onPressed: () => navigateToPage(context, index),
      icon: Icon(icons[index], color: iconColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          ChangeNotifierProvider<FlightProvider>(
            create: (_) => FlightProvider(),
            child: HomeScreen(),
          ),
          SearchScreen(),
          QrScreen(),
          HistoryScreen(),
          SettingScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildTabIcon(context, 0),
            buildTabIcon(context, 1),
            SizedBox(width: 5.0),
            buildTabIcon(context, 3),
            buildTabIcon(context, 4),
          ],
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.qr_code),
        onPressed: () => navigateToPage(context, 2),
      ),
    );
  }
}
