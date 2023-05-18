import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/search_provider.dart';

class TicketConfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SearchProvider flightSearchData = Provider.of<SearchProvider>(context);
    return Column(
      children: [
        Text(
            'Departure Date: ${flightSearchData.departureDate ?? 'Not selected'}'),
        SizedBox(height: 10),
        Text('Arrival Date: ${flightSearchData.arrivalDate ?? 'Not selected'}'),
        SizedBox(height: 10),
        Text(
            'Departure Airport: ${flightSearchData.departureAirport ?? 'Not selected'}'),
        SizedBox(height: 10),
        Text(
            'Arrival Airport: ${flightSearchData.arrivalAirport ?? 'Not selected'}'),
        SizedBox(height: 10),
        Text(
            'Selected Ticket: ${flightSearchData.selectedFlightCode ?? 'Not selected'}'),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
// Perform ticket confirmation logic here
          },
          child: Text('Confirm Ticket'),
        ),
      ],
    );
  }
}
