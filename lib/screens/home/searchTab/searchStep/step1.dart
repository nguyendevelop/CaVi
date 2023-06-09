import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../providers/selected_provider.dart';
import '../../../../providers/theme_provider.dart';
import '../../../../resources/widgets/inputs/custom_textfield.dart';

class Step1 extends StatelessWidget {
  final BuildContext context;

  const Step1({Key? key, required this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedStep = Provider.of<SelectedStep>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return buildDateTimePicker(
      label: 'Departure Date',
      initialValue: selectedStep.departureDate,
      onChanged: (date) => selectedStep.updateStep1(date!),
      themeProvider: themeProvider,
    );
  }

  Widget buildDateTimePicker({
    required String label,
    DateTime? initialValue,
    required void Function(DateTime?) onChanged,
    required ThemeProvider themeProvider,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: initialValue ?? DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365)),
            );
            if (selectedDate != null) {
              onChanged(selectedDate);
            }
          },
          child: AbsorbPointer(
            child: CustomTextField(
              controller: TextEditingController(
                text: initialValue != null
                    ? DateFormat('EEE, MMM d, yyy').format(initialValue!)
                    : '',
              ),
              hintText: 'Select a date',
            ),
          ),
        ),
      ],
    );
  }
}
