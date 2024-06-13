import 'package:checkout/Features/checkout/presentation/views/widgets/custom_dots.dart';
import 'package:flutter/material.dart';

class CustomDashedLines extends StatelessWidget {
  const CustomDashedLines({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * .22,
      child: Row(
        children: List.generate(
          25,
          (index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: CustomDots(),
          ),
        ),
      ),
    );
  }
}
