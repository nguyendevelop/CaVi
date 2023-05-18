import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/search_provider.dart';

class TicketOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SearchProvider flightSearchData = Provider.of<SearchProvider>(context);
    return GestureDetector(
      onTap: () {
        _showTicketSelectionDialog(context, flightSearchData);
      },
      child: Card(
        child: ListTile(
          title: Text('Select Ticket Order'),
          trailing: Text(
            flightSearchData.selectedFlightCode ?? 'Select',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void _showTicketSelectionDialog(
      BuildContext context, SearchProvider flightSearchData) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Ticket'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text('Ticket 1'),
                  onTap: () {
                    flightSearchData.setSelectedFlightCode('Ticket 1');
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Ticket 2'),
                  onTap: () {
                    flightSearchData.setSelectedFlightCode('Ticket 2');
                    Navigator.pop(context);
                  },
                ),
// Add more tickets as needed
              ],
            ),
          ),
        );
      },
    );
  }
}
