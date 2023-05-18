class InternationalBooking {
  String bookingCode;
  String flightCode;
  String passengerId;
  double totalAmount;
  PaymentMethod paymentMethod;
  String seatNumber;
  String passportNumber;
  String visaNumber;

  InternationalBooking({
    required this.bookingCode,
    required this.flightCode,
    required this.passengerId,
    required this.totalAmount,
    required this.paymentMethod,
    required this.seatNumber,
    required this.passportNumber,
    required this.visaNumber,
  });
}

class PaymentMethod {
  String paymentMethod;
  String bankAccountId;
  String cardNumber;
  String cardHolder;

  PaymentMethod({
    required this.paymentMethod,
    required this.bankAccountId,
    required this.cardNumber,
    required this.cardHolder,
  });
}
