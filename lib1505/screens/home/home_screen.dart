import 'package:cavi_app/screens/home/recommend_card.dart';
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

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 58,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 24),
                    icon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
            ),
          ),
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
