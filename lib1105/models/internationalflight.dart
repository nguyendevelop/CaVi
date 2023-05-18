class InternationalFlight {
  String flightCode;
  String departureDate;
  String departureTime;
  String arrivalDate;
  String arrivalTime;
  String departureAirport;
  String arrivalAirport;
  int availableSeats;
  double ticketPrice;
  String airline;
  String aircraftType;
  String passportNumber;
  String visaNumber;

  InternationalFlight({
    required this.flightCode,
    required this.departureDate,
    required this.departureTime,
    required this.arrivalDate,
    required this.arrivalTime,
    required this.departureAirport,
    required this.arrivalAirport,
    required this.availableSeats,
    required this.ticketPrice,
    required this.airline,
    required this.aircraftType,
    required this.passportNumber,
    required this.visaNumber,
  });
}
