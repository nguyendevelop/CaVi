import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/flight.dart';
import 'flight_provider.dart';

// class RecommendationProvider with ChangeNotifier {
//   List<dynamic> _flights = [];
//   List<dynamic> get flights => _flights;

//   Future<void> fetchFlights() async {
//     final apiUrl = 'https://cavijs.vercel.app/flights';

//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       _flights = jsonDecode(response.body);
//       notifyListeners();
//     } else {
//       throw Exception('Failed to fetch flights data');
//     }
//   }

//   List<List<double>> convertDataToVectors() {
//     List<List<double>> vectors = [];

//     for (dynamic flight in _flights) {
//       List<double> vector = [
//         1, // Match departure airport
//         double.parse(
//             flight['departureDate'].split('-')[2]), // Extract day from date
//         1, // Match arrival airport
//         flight['availableSeats'].toDouble(),
//         flight['ticketPrice'].toDouble(),
//         double.parse(flight['airlineCode']),
//         1, // Match airline name
//         1, // Match aircraft type
//       ];

//       vectors.add(vector);
//     }

//     return vectors;
//   }

//   List<double> getSimilarities(
//       List<double> queryVector, List<List<double>> vectors) {
//     List<double> similarities = [];

//     for (int i = 0; i < vectors.length; i++) {
//       List<double> vector = vectors[i];
//       double dotProduct = getDotProduct(queryVector, vector);
//       double queryVectorMagnitude = getVectorMagnitude(queryVector);
//       double vectorMagnitude = getVectorMagnitude(vector);
//       double similarity = dotProduct / (queryVectorMagnitude * vectorMagnitude);
//       similarities.add(similarity);
//     }

//     return similarities;
//   }

//   double getDotProduct(List<double> vector1, List<double> vector2) {
//     double dotProduct = 0;
//     for (int i = 0; i < vector1.length; i++) {
//       dotProduct += vector1[i] * vector2[i];
//     }
//     return dotProduct;
//   }

//   double getVectorMagnitude(List<double> vector) {
//     double sumOfSquares = 0;
//     for (int i = 0; i < vector.length; i++) {
//       sumOfSquares += pow(vector[i], 2);
//     }
//     return sqrt(sumOfSquares);
//   }

//   Future<List<dynamic>> getRecommendedFlights(List<double> queryVector) async {
//     if (_flights.isEmpty) {
//       await fetchFlights();
//     }

//     List<List<double>> vectors = convertDataToVectors();

//     List<double> similarities = getSimilarities(queryVector, vectors);

//     List<int> indices =
//         List<int>.generate(similarities.length, (int index) => index);
//     indices.sort((a, b) => similarities[b].compareTo(similarities[a]));

//     List<dynamic> recommendedFlights = [
//       for (int i = 0; i < min(10, indices.length); i++) _flights[indices[i]]
//     ];

//     return recommendedFlights;
//   }
// }

class RecommendationProvider with ChangeNotifier {
  double cosineSimilarity(List<double> vector1, List<double> vector2) {
    if (vector1.length != vector2.length) {
      throw Exception("Vector dimensions don't match");
    }

    double dotProduct = 0.0;
    double magnitude1 = 0.0;
    double magnitude2 = 0.0;

    for (int i = 0; i < vector1.length; i++) {
      dotProduct += vector1[i] * vector2[i];
      magnitude1 += pow(vector1[i], 2);
      magnitude2 += pow(vector2[i], 2);
    }

    magnitude1 = sqrt(magnitude1);
    magnitude2 = sqrt(magnitude2);

    if (magnitude1 == 0.0 || magnitude2 == 0.0) {
      throw Exception("One of the vectors has zero magnitude");
    }

    return dotProduct / (magnitude1 * magnitude2);
  }

  List<Map<String, dynamic>> getSimilarFlights(String departureAirport) {
    FlightProvider flightProvider = FlightProvider();
    List<Flight> flights = flightProvider.flights;

    List<List<double>> vectors = [];
    for (int i = 0; i < flights.length; i++) {
      Map<String, dynamic> flight = flights[i].toJson();
      List<double> vector = [
        flight['departureAirport'] == departureAirport ? 1.0 : 0.0,
        double.parse(flight['departureDate'].split('-')[2]),
        flight['arrivalAirport'] == departureAirport ? 1.0 : 0.0,
        flight['availableSeats'].toDouble(),
        flight['ticketPrice'].toDouble(),
        flight['airlineCode'].toDouble(),
        flight['airlineName'] == departureAirport ? 1.0 : 0.0,
        flight['aircraftType'] == departureAirport ? 1.0 : 0.0
      ];
      vectors.add(vector);
      print("Vector: $vector");
    }

    List<double> queryVector = [
      1.0, // Match departure airport
      0.0, // Ignore departure date for now
      0.0, // Ignore arrival airport for now
      0.0, // Ignore available seats for now
      0.0, // Ignore ticket price for now
      0.0, // Ignore airline code for now
      0.0, // Ignore airline name for now
      0.0 // Ignore aircraft type for now
    ];

    List<double> similarities = [];
    try {
      for (int i = 0; i < vectors.length; i++) {
        List<double> vector = vectors[i];
        double similarity = cosineSimilarity(queryVector, vector);
        similarities.add(similarity);
        print("Flight ${i + 1}: $similarity");
      }
    } catch (error) {
      print('Error calculating cosine similarity: $error');
    }

    List<int> indices = [];
    for (int i = 0; i < similarities.length; i++) {
      indices.add(i);
    }
    indices.sort((a, b) => similarities[b].compareTo(similarities[a]));
    print("Indices: $indices");

    List<Map<String, dynamic>> similarFlights = [];
    for (int i = 0; i < min(10, indices.length); i++) {
      similarFlights.add(flights[indices[i]] as Map<String, dynamic>);
    }

    return similarFlights;
  }

// API endpoint for recommending similar flights
  Future<List<Map<String, dynamic>>> recommendFlights(
      String departureAirport) async {
    List<Map<String, dynamic>> similarFlights =
        getSimilarFlights(departureAirport);
    // Implement the code to send the similarFlights data to your API endpoint
    return similarFlights;
  }
}
