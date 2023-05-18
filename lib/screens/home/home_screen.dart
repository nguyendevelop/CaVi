import 'package:cavi_app/screens/home/recommend_card.dart';
import 'package:cavi_app/screens/home/search_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/flight.dart';
import '../../providers/flight_provider.dart';
import '../../providers/theme_provider.dart';
import '../../resources/utils/const.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flightProvider = Provider.of<FlightProvider>(context);
    final flights = flightProvider.flights;

    // Kiểm tra nếu danh sách chuyến bay trống, gọi phương thức fetchFlights()
    if (flights.isEmpty) {
      flightProvider.fetchFlights();
    }

    final TextEditingController _searchControl = new TextEditingController();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchCard(searchControl: _searchControl),
          Expanded(
            child: ListView.builder(
              itemCount: flights.length,
              itemBuilder: (context, index) {
                final flight = flights[index];
                return RecommendCard(flight: flight);
              },
            ),
          ),
        ],
      ),
    );
  }
}
