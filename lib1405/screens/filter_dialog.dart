import 'package:flutter/material.dart';

class FilterDialog extends StatefulWidget {
  final Function(DateTime?, DateTime?, TimeOfDay?, TimeOfDay?) onApplyFilters;

  FilterDialog({required this.onApplyFilters});

  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  DateTime? selectedDepartureDate;
  DateTime? selectedArrivalDate;
  TimeOfDay? selectedDepartureTime;
  TimeOfDay? selectedArrivalTime;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Bộ lọc'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            // Giao diện cho bộ lọc
            // Chẳng hạn: TextFormField để chọn ngày giờ
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text('Hủy'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Áp dụng'),
          onPressed: () {
            widget.onApplyFilters(
              selectedDepartureDate,
              selectedArrivalDate,
              selectedDepartureTime,
              selectedArrivalTime,
            );
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
