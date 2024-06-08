import 'package:checkout/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderInfoTotalPrice extends StatelessWidget {
  const OrderInfoTotalPrice(
      {super.key, required this.text, required this.price});
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.style24,
        ),
        Text(
          r'$' + price,
          style: Styles.style24,
        ),
      ],
    );
  }
}
