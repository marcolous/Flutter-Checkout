import 'package:checkout/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';

void main() {
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
