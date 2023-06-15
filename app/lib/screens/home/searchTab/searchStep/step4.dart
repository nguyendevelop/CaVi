import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../providers/selected_provider.dart';
import '../../../../providers/theme_provider.dart';

class Step4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedStep = Provider.of<SelectedStep>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Departure Date',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          selectedStep.departureDate1 != null
              ? DateFormat('EEE, MMM d, yyy')
                  .format(selectedStep.departureDate1!)
              : '',
        ),
        const SizedBox(height: 16.0),
        Text(
          'Airline Code',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(selectedStep.airlineCode1 ?? ''),
        const SizedBox(height: 16.0),
        Text(
          'Airline Name',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(selectedStep.airlineName1 ?? ''),
        const SizedBox(height: 16.0),
        Text(
          'Flight Code',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(selectedStep.flightCode ?? ''),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
