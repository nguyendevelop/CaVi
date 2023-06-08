import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../resources/widgets/inputs/custom_textfield.dart';

class Step1 extends StatelessWidget {
  final ValueNotifier<DateTime?> longDateSub = ValueNotifier(null);

  Step1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          'Choose Departure Date',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 18.0),
        ),
        ValueListenableBuilder<DateTime?>(
          valueListenable: longDateSub,
          builder: (context, dateVal, child) {
            return InkWell(
                onTap: () async {
                  DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2050),
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context),
                          child: child!,
                        );
                      });
                  longDateSub.value = date;
                },
                child: buildDateTimePicker(
                    dateVal != null ? longDate(dateVal) : ''));
          },
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  String longDate(DateTime dateTime) {
    return DateFormat('EEE, MMM d, yyy').format(dateTime);
  }

  Widget buildDateTimePicker(String data) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Colors.red, width: 1.5),
      ),
      title: Text(data),
      trailing: const Icon(
        Icons.calendar_today,
        color: Colors.red,
      ),
    );
  }
}
