class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  toJson() {
    return {
      'amount': (double.parse(amount) * 100).toStringAsFixed(0),
      'currency': currency,
    };
  }
}
