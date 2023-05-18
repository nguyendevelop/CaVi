import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../resources/utils/app_asset.dart';
import '../../../resources/widgets/others/custom_bottom_navbar.dart';
import '../controllers/home_controller.dart';
import '../tab/tab_home.dart';
import '../tab/tab_search.dart';
import '../tab/tab_setting.dart';
import '../tab/tab_ticket.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<Widget> pageList = [
    TabHome(),
    TabSearch(),
    TabTicket(),
    TabSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, MainScreenNotifier, child) {
        return Scaffold(
          extendBody: true,
          backgroundColor: const Color(0xFFFAFAFA),
          body: pageList[MainScreenNotifier.pageIndex],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Image.asset(
              AppAsset.icon('ic_topup.png'),
              width: 30,
              color: Colors.white,
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            color: Colors.white,
            elevation: 10,
            notchMargin: 10,
            child: (Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBottomNavBar(
                  isSelected: MainScreenNotifier.pageIndex == 0,
                  onTap: () {
                    MainScreenNotifier.pageIndex = 0;
                  },
                  label: 'home',
                  assetIcon: AppAsset.icon('ic_home.png'),
                ),
                CustomBottomNavBar(
                  isSelected: MainScreenNotifier.pageIndex == 1,
                  onTap: () {
                    MainScreenNotifier.pageIndex = 1;
                  },
                  label: 'search',
                  assetIcon: AppAsset.icon('ic_ticket.png'),
                ),
                CustomBottomNavBar(
                  isSelected: MainScreenNotifier.pageIndex == 2,
                  onTap: () {
                    MainScreenNotifier.pageIndex = 2;
                  },
                  label: 'history',
                  assetIcon: AppAsset.icon('ic_history.png'),
                ),
                CustomBottomNavBar(
                  isSelected: MainScreenNotifier.pageIndex == 3,
                  onTap: () {
                    MainScreenNotifier.pageIndex = 3;
                  },
                  label: 'setting',
                  assetIcon: AppAsset.icon('ic_setting.png'),
                ),
              ],
            )),
          ),
        );
      },
    );
  }
}
