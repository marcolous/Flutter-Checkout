import 'package:checkout/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:checkout/core/utils/api_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const Checkout());
}

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCartView(),
    );
  }
}
