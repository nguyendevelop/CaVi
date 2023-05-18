import 'dart:convert';

import 'package:intl/intl.dart';

List<Flight> flightFromJson(String str) =>
    List<Flight>.from(json.decode(str).map((x) => Flight.fromJson(x)));

String flightToJson(List<Flight> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Flight {
  final String flightCode;
  final DateTime departureDate;
  final String departureTime;
  final DateTime arrivalDate;
  final String arrivalTime;
  final String departureAirport;
  final String arrivalAirport;
  final int availableSeats;
  final int ticketPrice;
  final String airlineName;
  final String airlineCode;
  final String aircraftType;

  Flight({
    required this.flightCode,
    required this.departureDate,
    required this.departureTime,
    required this.arrivalDate,
    required this.arrivalTime,
    required this.departureAirport,
    required this.arrivalAirport,
    required this.availableSeats,
    required this.ticketPrice,
    required this.airlineName,
    required this.airlineCode,
    required this.aircraftType,
  });

  factory Flight.fromJson(Map<String, dynamic> json) => Flight(
        flightCode: json["flightCode"],
        departureDate: DateTime.parse(json["departureDate"]),
        departureTime: DateFormat('HH:mm')
            .format(DateFormat('HH:mm').parse(json["departureTime"])),
        arrivalDate: DateTime.parse(json["arrivalDate"]),
        arrivalTime: DateFormat('HH:mm')
            .format(DateFormat('HH:mm').parse(json["arrivalTime"])),
        departureAirport: json["departureAirport"],
        arrivalAirport: json["arrivalAirport"],
        availableSeats: json["availableSeats"],
        ticketPrice: json["ticketPrice"],
        airlineName: json["airlineName"],
        airlineCode: json["airlineCode"],
        aircraftType: json["aircraftType"],
      );

  Map<String, dynamic> toJson() => {
        "flightCode": flightCode,
        "departureDate":
            "${departureDate.year.toString().padLeft(4, '0')}-${departureDate.month.toString().padLeft(2, '0')}-${departureDate.day.toString().padLeft(2, '0')}",
        "departureTime":
            DateFormat('hh:mm a').format(DateTime.parse(departureTime)),
        "arrivalDate":
            "${arrivalDate.year.toString().padLeft(4, '0')}-${arrivalDate.month.toString().padLeft(2, '0')}-${arrivalDate.day.toString().padLeft(2, '0')}",
        "arrivalTime":
            DateFormat('hh:mm a').format(DateTime.parse(arrivalTime)),
        "departureAirport": departureAirport,
        "arrivalAirport": arrivalAirport,
        "availableSeats": availableSeats,
        "ticketPrice": ticketPrice,
        "airlineName": airlineName,
        "airlineCode": airlineCode,
        "aircraftType": aircraftType,
      };

  String getTotalDurationString() {
    DateTime departureDateTime = DateTime(
      departureDate.year,
      departureDate.month,
      departureDate.day,
      int.parse(departureTime.split(':')[0]),
      int.parse(departureTime.split(':')[1]),
    );
    DateTime arrivalDateTime = DateTime(
      arrivalDate.year,
      arrivalDate.month,
      arrivalDate.day,
      int.parse(arrivalTime.split(':')[0]),
      int.parse(arrivalTime.split(':')[1]),
    );

    final totalDuration = arrivalDateTime.difference(departureDateTime);

    final days = totalDuration.inDays;
    final hours = totalDuration.inHours.remainder(24);
    final minutes = totalDuration.inMinutes.remainder(60);

    if (days > 0) {
      return "$days ngày $hours tiếng $minutes phút";
    } else {
      return "$hours tiếng $minutes phút";
    }
  }
}
