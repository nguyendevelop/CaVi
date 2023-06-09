import 'package:flutter/material.dart';

class MainController with ChangeNotifier {
  final PageController pageController = PageController();
  final ValueNotifier<int> selectedPage = ValueNotifier<int>(0);

  void navigation(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    selectedPage.value = index;
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
