import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../providers/selected_provider.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedStep = Provider.of<SelectedStep>(context);

    return Card(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Row(
        children: [
          Expanded(
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Flight Code:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  selectedStep.flightCode ?? '',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "payment Method:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  selectedStep.paymentMethod ?? '',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "bankAccountId:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  selectedStep.bankAccountId ?? '',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "cardNumber:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  selectedStep.cardNumber ?? '',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "cardHolder:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  selectedStep.cardHolder ?? '',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "Departure Date:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  selectedStep.departureDate1 != null
                      ? DateFormat('dd-MM-yyyy')
                          .format(selectedStep.departureDate1!)
                      : '',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
