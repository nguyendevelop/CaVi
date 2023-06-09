import 'package:flutter/material.dart';

class SelectedStep extends ChangeNotifier {
  DateTime? departureDate;
  String? airlineCode1;
  String? airlineName1;
  String? flightCode;

  void updateStep1(DateTime date) {
    departureDate = date;
    notifyListeners();
  }

  void updateStep2(String code, String name) {
    airlineCode1 = code;
    airlineName1 = name;
    notifyListeners();
  }

  void updateStep3(String code) {
    flightCode = code;
    notifyListeners();
  }

  void complete() {}
}
