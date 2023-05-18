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
