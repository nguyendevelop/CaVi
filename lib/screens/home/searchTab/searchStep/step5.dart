import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../providers/selected_provider.dart';
import '../../../../providers/theme_provider.dart';

class Step5 extends StatelessWidget {
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
          selectedStep.departureDate != null
              ? DateFormat('EEE, MMM d, yyy')
                  .format(selectedStep.departureDate!)
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
        ElevatedButton(
          onPressed: () {
            // TODO: Lưu thông tin đã chọn và hoàn thành quá trình
            // Ví dụ:
            // final departureDate = selectedStep.departureDate;
            // final airlineCode = selectedStep.airlineCode;
            // final airlineName = selectedStep.airlineName;
            // final flightCode = selectedStep.flightCode;
            // saveSelectedData(departureDate, airlineCode, airlineName, flightCode);
            selectedStep.complete();
          },
          child: const Text('Confirm'),
        ),
      ],
    );
  }
}
