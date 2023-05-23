import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'item_navbar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  final int selectedIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ItemNavbar(
            isSelected: selectedIndex == 0,
            label: 'home',
            icon: Icons.home,
            onTap: () => onTap(0),
          ),
          ItemNavbar(
            isSelected: selectedIndex == 1,
            label: 'search',
            icon: Icons.search,
            onTap: () => onTap(1),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 5),
          ItemNavbar(
            isSelected: selectedIndex == 2,
            label: 'history',
            icon: Icons.history,
            onTap: () => onTap(2),
          ),
          ItemNavbar(
            isSelected: selectedIndex == 3,
            label: 'setting',
            icon: Icons.settings,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }
}
