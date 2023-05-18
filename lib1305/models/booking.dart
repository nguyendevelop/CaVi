class Booking {
  String bookingCode;
  String flightCode;
  String passengerId;
  double totalAmount;
  PaymentMethod paymentMethod;
  String seatNumber;
  String seatClass;
  String seatType;
  String seatStatus;
  double seatPrice;
  Flight flight;

  Booking({
    required this.bookingCode,
    required this.flightCode,
    required this.passengerId,
    required this.totalAmount,
    required this.paymentMethod,
    required this.seatNumber,
    required this.seatClass,
    required this.seatType,
    required this.seatStatus,
    required this.seatPrice,
    required this.flight,
  });
}

class PaymentMethod {
  String name;
  String accountInfo;

  PaymentMethod({
    required this.name,
    required this.accountInfo,
  });
}

class Flight {
  String flightCode;
  DateTime departureDate;
  String departureTime;
  DateTime arrivalDate;
  String arrivalTime;
  Location departureAirport;
  Location arrivalAirport;
  int availableSeats;
  double ticketPrice;
  String airline;
  String aircraftType;
  String travelClass;

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
    required this.airline,
    required this.aircraftType,
    required this.travelClass,
  });
}

class Location {
  String name;
  String code;

  Location({
    required this.name,
    required this.code,
  });
}
