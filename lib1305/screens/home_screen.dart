import 'package:flutter/material.dart';

import '../models/flight.dart';

class HomeScreen extends StatelessWidget {
  final List<Flight> flights;

  const HomeScreen({Key? key, required this.flights}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: flights.length,
        itemBuilder: (context, index) {
          final flight = flights[index];
          return ListTile(
            title: Text(flight.flightCode),
            subtitle:
                Text('${flight.departureAirport} - ${flight.arrivalAirport}'),
            // Hiển thị các thông tin khác của chuyến bay tại đây
          );
        },
      ),
    );
  }
}
