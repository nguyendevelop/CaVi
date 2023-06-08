import 'package:flutter/material.dart';

import '../models/flight.dart';

class SelectedProvider with ChangeNotifier {
  Flight? _selectedFlight;

  Flight? get selectedFlight => _selectedFlight;

  void setSelectedFlight(Flight? flight) {
    _selectedFlight = flight;
    notifyListeners();
  }
}
