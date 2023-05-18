import 'package:flutter/material.dart';

class SearchProvider with ChangeNotifier {
  DateTime? departureDate;
  DateTime? arrivalDate;
  String? departureAirport;
  String? arrivalAirport;
  String? selectedFlightCode;

  void setDepartureDate(DateTime date) {
    departureDate = date;
    notifyListeners();
  }

  void setArrivalDate(DateTime date) {
    arrivalDate = date;
    notifyListeners();
  }

  void setDepartureAirport(String airport) {
    departureAirport = airport;
    notifyListeners();
  }

  void setArrivalAirport(String airport) {
    arrivalAirport = airport;
    notifyListeners();
  }

  void setSelectedFlightCode(String flightCode) {
    selectedFlightCode = flightCode;
    notifyListeners();
  }
}
