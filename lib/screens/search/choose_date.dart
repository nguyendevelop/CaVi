import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/search_provider.dart';

class ChooseDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SearchProvider flightSearchData = Provider.of<SearchProvider>(context);

    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(Duration(days: 365)),
            );
            if (selectedDate != null) {
              flightSearchData.setDepartureDate(selectedDate);
            }
          },
          child: Card(
            child: ListTile(
              title: Text('Select Departure Date'),
              trailing: Text(
                flightSearchData.departureDate != null
                    ? flightSearchData.departureDate.toString()
                    : 'Select',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(Duration(days: 365)),
            );
            if (selectedDate != null) {
              flightSearchData.setArrivalDate(selectedDate);
            }
          },
          child: Card(
            child: ListTile(
              title: Text('Select Return Date'),
              trailing: Text(
                flightSearchData.arrivalDate != null
                    ? flightSearchData.arrivalDate.toString()
                    : 'Select',
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
}
