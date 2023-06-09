import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../providers/selected_provider.dart';
import '../../../../resources/widgets/cards/ticket_separator.dart';
import '../../../../resources/widgets/inputs/custom_textfield.dart';
import '../../../../service/flight_provider.dart';
import '../../homeTab/recommend_card.dart';

class Step3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedStep>(
      builder: (context, selectedStep, _) {
        final flightProvider = Provider.of<FlightProvider>(context);
        final flights = flightProvider.flights;

        // TODO: Lọc danh sách chuyến bay dựa trên lựa chọn của Step 1 và Step 2
        // Ví dụ:
        final filteredFlights = flights.where((flight) {
          final departureDate = selectedStep.departureDate;
          final airlineCode = selectedStep.airlineCode1;
          return flight.departureDate == departureDate &&
              flight.airlineCode == airlineCode;
        }).toList();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: filteredFlights.length,
              itemBuilder: (context, index) {
                final flight = filteredFlights[index];
                return InkWell(
                  onTap: () {
                    // Xử lý khi RecommendCard được nhấn bên ngoài
                    // Ví dụ: Hiển thị thông báo khi RecommendCard được nhấn bên ngoài
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Notification'),
                          content: Text(
                              'Bạn đã chọn mã chuyến bay ${flight.flightCode}.'),
                          actions: [
                            TextButton(
                              child: Text('Confirm'),
                              onPressed: () {
                                selectedStep.updateStep3(flight.flightCode);
                                print("Confirm: ${flight.flightCode}");
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: RecommendCard(flight: flight),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
