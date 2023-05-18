import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/search_provider.dart';
import './search/choose_airport.dart';
import './search/choose_date.dart';
import './search/ticket_confirm.dart';
import './search/ticket_order.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SearchProvider>(
      create: (_) => SearchProvider(),
      child: Stepper(
        physics: ClampingScrollPhysics(),
        type: StepperType.horizontal,
        steps: [
          Step(
            title: const Text('Departure Date'),
            content: ChooseDate(),
          ),
          Step(
            title: const Text('Airports'),
            content: ChooseAirport(),
          ),
          Step(
            title: const Text('Ticket Information'),
            content: TicketOrder(),
          ),
          Step(
            title: const Text('Confirm Ticket'),
            content: TicketConfirm(),
          ),
        ],
      ),
    );
  }
}
