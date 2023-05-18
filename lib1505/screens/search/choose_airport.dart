import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/search_provider.dart';

class ChooseAirport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SearchProvider flightSearchData = Provider.of<SearchProvider>(context);
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _showAirportSelectionDialog(context, flightSearchData);
          },
          child: Card(
            child: ListTile(
              title: Text('Select Departure Airport'),
              trailing: Text(
                flightSearchData.departureAirport ?? 'Select',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            _showAirportSelectionDialog(context, flightSearchData);
          },
          child: Card(
            child: ListTile(
              title: Text('Select Arrival Airport'),
              trailing: Text(
                flightSearchData.arrivalAirport ?? 'Select',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showAirportSelectionDialog(
      BuildContext context, SearchProvider flightSearchData) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Airport'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text('Airport 1'),
                  onTap: () {
                    flightSearchData.setDepartureAirport('Airport 1');
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Airport 2'),
                  onTap: () {
                    flightSearchData.setDepartureAirport('Airport 2');
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Airport 3'),
                  onTap: () {
                    flightSearchData.setArrivalAirport('Airport 3');
                    Navigator.pop(context);
                  },
                ),
// Add more airports as needed
              ],
            ),
          ),
        );
      },
    );
  }
}
