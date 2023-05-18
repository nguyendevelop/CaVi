import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../models/flight.dart';

class ApiProvider extends ChangeNotifier {
  // Future<List<Flight>> getFlights() async {
  //   final response =
  //       await http.get(Uri.parse('https://cavijs.vercel.app/flights'));
  //   if (response.statusCode == 200) {
  //     final List<dynamic> data = jsonDecode(response.body);
  //     final flights = data.map((item) => Flight.fromJson(item)).toList();
  //     return flights;
  //   } else {
  //     throw Exception('Failed to load flights');
  //   }
  // }

  Future<List<Flight>> getFlights() async {
    final now = DateTime.now();
    final formattedDate = DateFormat('dd-MM-yyyy').format(now);
    final url = 'https://cavijs.vercel.app/flights?date=$formattedDate';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      final flights = data.map((item) => Flight.fromJson(item)).toList();
      return flights;
    } else {
      throw Exception('Failed to load flights');
    }
  }
}
