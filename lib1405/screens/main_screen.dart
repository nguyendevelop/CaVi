import 'package:flutter/material.dart';
import '../providers/api_provider.dart';
import '../routers.dart';
import './qr_screen.dart';
import './home_screen.dart';
import './setting_screen.dart';
import './search_screen.dart';
import './history_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int _page = 0;

  List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.qr_code,
    Icons.history,
    Icons.settings,
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    loadFlights(); // Thêm hàm để tải danh sách chuyến bay khi màn hình được khởi tạo
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigateToPage(int page) {
    setState(() {
      _page = page;
      _pageController.jumpToPage(page);
    });
  }

  Future<void> loadFlights() async {
    final apiProvider = ApiProvider();
    final flights = await apiProvider.getFlights();
    setState(() {
      Routers.flights = flights;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          HomeScreen(flights: Routers.flights),
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
            buildTabIcon(0),
            buildTabIcon(1),
            SizedBox(
                width:
                    5.0), // Khoảng cách để tạo không gian cho FloatingActionButton
            buildTabIcon(3),
            buildTabIcon(4),
          ],
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(
          Icons.qr_code,
        ),
        onPressed: () => navigateToPage(2),
      ),
    );
  }

  Widget buildTabIcon(int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        index == 3 ? 30 : 0,
        0,
        index == 1 ? 30 : 0,
        0,
      ),
      child: IconButton(
        icon: Icon(
          icons[index],
          size: 24.0,
        ),
        color: _page == index
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).textTheme.caption?.color,
        onPressed: () => _pageController.jumpToPage(index),
      ),
    );
  }
}
