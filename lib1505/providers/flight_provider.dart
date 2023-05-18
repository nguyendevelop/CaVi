import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../models/flight.dart';

class FlightProvider with ChangeNotifier {
  List<Flight> _flights = [];

  List<Flight> get flights => _flights;

  void setFlights(List<Flight> flights) {
    _flights = flights;
    notifyListeners();
  }

  Future<void> fetchFlights() async {
    try {
      final response =
          await http.get(Uri.parse('https://cavijs.vercel.app/flights'));
      final data = jsonDecode(response.body) as List<dynamic>;
      final flights = data.map((flight) => Flight.fromJson(flight)).toList();
      _flights.clear();
      _flights.addAll(flights);
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
