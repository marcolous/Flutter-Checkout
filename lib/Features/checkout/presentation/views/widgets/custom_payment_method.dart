import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomPaymentMethod extends StatelessWidget {
  const CustomPaymentMethod({
    super.key,
    required this.image,
    this.isActive = false,
  });
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 110,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border:
            Border.all(width: 2, color: isActive ? Colors.green : Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
