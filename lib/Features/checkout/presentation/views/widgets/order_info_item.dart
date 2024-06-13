import 'package:checkout/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.text, required this.price});
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.style18,
        ),
        Text(
          r'$' + price,
          style: Styles.style18,
        ),
      ],
    );
  }
}
