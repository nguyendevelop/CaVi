import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';

import '../../../../models/flight.dart';
import '../../../../providers/selected_provider.dart';
import '../../../../providers/theme_provider.dart';
import '../../../../service/flight_provider.dart';

class Step2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flightProvider = Provider.of<FlightProvider>(context);
    final selectedStep = Provider.of<SelectedStep>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final TextEditingController _textEditingController =
        TextEditingController();

    if (flightProvider.flights.isEmpty) {
      flightProvider.fetchFlights();
    }

    final uniqueAirlineCodes = <String>{};

    final dropdownItems = flightProvider.flights.where((flight) {
      final isUnique = !uniqueAirlineCodes.contains(flight.airlineCode);
      uniqueAirlineCodes.add(flight.airlineCode);
      return isUnique;
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Airline',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        TypeAheadFormField<Flight>(
          textFieldConfiguration: TextFieldConfiguration(
            controller: _textEditingController,
            decoration: InputDecoration(
              labelText: 'Flight',
              border: OutlineInputBorder(),
            ),
          ),
          suggestionsCallback: (pattern) {
            return dropdownItems.where((flight) =>
                flight.airlineCode.contains(pattern) ||
                flight.airlineName.contains(pattern));
          },
          itemBuilder: (context, suggestion) {
            final flight = suggestion as Flight;
            return ListTile(
              title: Text('${flight.airlineCode} - ${flight.airlineName}'),
            );
          },
          onSuggestionSelected: (suggestion) {
            final flight = suggestion as Flight;
            selectedStep.updateStep2(flight.airlineCode, flight.airlineName);
            _textEditingController.text =
                '${flight.airlineCode} - ${flight.airlineName}';
            print(
                'Selected flight: ${flight.airlineCode} - ${flight.airlineName}');
          },
        ),
      ],
    );
  }
}
