import 'package:checkout/Features/checkout/presentation/views/widgets/custom_dashed_lines.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_white_circle.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const CustomDashedLines(),
          const CustomWhiteCircle(left: -20),
          const CustomWhiteCircle(right: -20),
          Positioned(
            right: 0,
            left: 0,
            top: -45,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -35,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green,
              child: Icon(
                size: 70,
                Icons.check_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
