import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';

import '../../../../models/flight.dart';
import '../../../../providers/selected_provider.dart';
import '../../../../service/flight_provider.dart';

class Step2 extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final flightProvider = Provider.of<FlightProvider>(context);
    final selectedProvider = Provider.of<SelectedProvider>(context);

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
      children: [
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
          itemBuilder: (context, Flight suggestion) {
            return ListTile(
              title:
                  Text('${suggestion.airlineCode} - ${suggestion.airlineName}'),
            );
          },
          onSuggestionSelected: (Flight? suggestion) {
            selectedProvider.setSelectedFlight(suggestion);
            _textEditingController.text =
                '${suggestion?.airlineCode} - ${suggestion?.airlineName}';
            print(
                'Selected flight: ${suggestion?.airlineCode} - ${suggestion?.airlineName}');
          },
        ),
      ],
    );
  }
}
