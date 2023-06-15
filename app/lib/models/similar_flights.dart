import 'package:ml_linalg/distance.dart';
import 'package:ml_linalg/vector.dart';

import 'flight.dart';

List<Flight> getSimilarFlights(
  Flight selectedFlight,
  List<Flight> flights,
) {
  final vector1 = Vector.fromList([
    selectedFlight.availableSeats.toDouble(),
    selectedFlight.ticketPrice.toDouble(),
  ]);

  final similarFlights = flights.where((flight) {
    return flight.departureDate == selectedFlight.departureDate &&
        flight.airlineCode != selectedFlight.airlineCode;
  }).toList();

  if (similarFlights.isNotEmpty) {
    final cosineSimilarities = <double>[];
    final indices = <int>[];

    for (var i = 0; i < similarFlights.length; i++) {
      final vector2 = Vector.fromList([
        similarFlights[i].availableSeats.toDouble(),
        similarFlights[i].ticketPrice.toDouble(),
      ]);

      final cosineSimilarity = vector1.distanceTo(
        vector2,
        distance: Distance.cosine,
      );
      cosineSimilarities.add(cosineSimilarity);
      indices.add(i);
    }

    final sortedIndices = indices.sublist(0, 5).toList()
      ..sort((a, b) => -cosineSimilarities[a].compareTo(cosineSimilarities[b]));
    final similarFlightIndices =
        sortedIndices.map((index) => indices[index]).toList();
    final similarFlightsList =
        similarFlightIndices.map((index) => similarFlights[index]).toList();

    print('Similarities: $cosineSimilarities');
    print('Indices: $indices');

    return similarFlightsList;
  }

  return [];
}
