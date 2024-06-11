import 'package:checkout/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: Styles.style18,
        ),
        Text(
          text2,
          style: Styles.styleBold18,
        ),
      ],
    );
  }
}
