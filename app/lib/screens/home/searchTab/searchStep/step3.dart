import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/flight.dart';
import '../../../../models/similar_flights.dart';
import '../../../../providers/selected_provider.dart';
import '../../../../service/flight_provider.dart';
import '../../../../service/recommendation_provider.dart';
import '../../homeTab/recommend_card.dart';

class Step3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedStep>(
      builder: (context, selectedStep, _) {
        final flightProvider = Provider.of<FlightProvider>(context);
        final flights = flightProvider.flights;

        //
        List<Flight> similarFlights = [];

        if (selectedStep.departureDate1 != null &&
            selectedStep.airlineCode1 != null) {
          final selectedFlight = flights.firstWhere(
            (flight) =>
                flight.departureDate == selectedStep.departureDate1 &&
                flight.airlineCode == selectedStep.airlineCode1,
            orElse: () => Flight(
              flightCode: '',
              departureDate: DateTime.now(),
              departureTime: '',
              arrivalDate: DateTime.now(),
              arrivalTime: '',
              departureAirport: '',
              arrivalAirport: '',
              availableSeats: 0,
              ticketPrice: 0,
              airlineName: '',
              airlineCode: '',
              aircraftType: '',
            ),
          );

          similarFlights = getSimilarFlights(selectedFlight, flights);
        }

        // TODO: Lọc danh sách chuyến bay dựa trên lựa chọn của Step 1 và Step 2
        // Ví dụ:
        final filteredFlights = flights.where((flight) {
          final departureDate = selectedStep.departureDate1;
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
            const SizedBox(height: 8.0),
            Text("Recommendation:"),
            if (similarFlights.isNotEmpty)
              ListView.builder(
                shrinkWrap: true,
                itemCount: similarFlights.length,
                itemBuilder: (context, index) {
                  final flight = similarFlights[index];
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






// class Recoomendation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final selectedStep = Provider.of<SelectedStep>(context);
//     final flightProvider = Provider.of<FlightProvider>(context);
//     final flights = flightProvider.flights;

//     List<Flight> similarFlights = [];

//     if (selectedStep.departureDate1 != null &&
//         selectedStep.airlineCode1 != null) {
//       // Lọc danh sách chuyến bay dựa trên lựa chọn của Step 1 và Step 2
//       similarFlights = flights.where((flight) {
//         final departureDate = selectedStep.departureDate1;
//         final airlineCode = selectedStep.airlineCode1;
//         return flight.departureDate == departureDate &&
//             flight.airlineCode != airlineCode;
//       }).toList();

//       if (similarFlights.isNotEmpty) {
//         // Tính độ tương tự cosine similarity và lấy kết quả tương tự nhất
//         final selectedFlight = flights.firstWhere(
//             (flight) =>
//                 flight.departureDate == selectedStep.departureDate1 &&
//                 flight.airlineCode == selectedStep.airlineCode1,
//             orElse: () => Flight(
//                 flightCode: '',
//                 departureDate: DateTime.now(),
//                 departureTime: '',
//                 arrivalDate: DateTime.now(),
//                 arrivalTime: '',
//                 departureAirport: '',
//                 arrivalAirport: '',
//                 availableSeats: 0,
//                 ticketPrice: 0,
//                 airlineName: '',
//                 airlineCode: '',
//                 aircraftType: ''));

//         final vector1 = Vector.fromList([
//           selectedFlight.availableSeats.toDouble(),
//           selectedFlight.ticketPrice.toDouble()
//         ]);

//         final cosineSimilarities = <double>[];
//         final indices = <int>[];

//         for (var i = 0; i < similarFlights.length; i++) {
//           final vector2 = Vector.fromList([
//             similarFlights[i].availableSeats.toDouble(),
//             similarFlights[i].ticketPrice.toDouble()
//           ]);

//           final cosineSimilarity = vector1.distanceTo(
//             vector2,
//             distance: Distance.cosine,
//           );
//           cosineSimilarities.add(cosineSimilarity);
//           indices.add(i);
//         }

//         print('Similarities: $cosineSimilarities');
//         print('Indices: $indices');

//         // Lấy tối đa 5 chuyến bay tương tự có độ tương tự cao nhất
//         final sortedIndices = indices.sublist(0, 5).toList()
//           ..sort((a, b) =>
//               -cosineSimilarities[a].compareTo(cosineSimilarities[b]));
//         final similarFlightIndices =
//             sortedIndices.map((index) => indices[index]).toList();
//         final similarFlightsList =
//             similarFlightIndices.map((index) => similarFlights[index]).toList();

//         // Hiển thị thông tin các chuyến bay tương tự
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Similar Flights',
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 8.0),
//             ListView.builder(
//               shrinkWrap: true,
//               itemCount: similarFlightsList.length,
//               itemBuilder: (context, index) {
//                 final flight = similarFlightsList[index];
//                 return ListTile(
//                   title: Text('Flight Code: ${flight.flightCode}'),
//                   subtitle: Text(
//                     'Departure: ${flight.departureAirport} - ${flight.departureTime}\n'
//                     'Arrival: ${flight.arrivalAirport} - ${flight.arrivalTime}\n'
//                     'Available Seats: ${flight.availableSeats}\n'
//                     'Ticket Price: ${flight.ticketPrice}\n'
//                     'Aircraft Type: ${flight.aircraftType}',
//                   ),
//                 );
//               },
//             ),
//           ],
//         );
//       }
//     }

//     return SizedBox.shrink();
//   }
// }
