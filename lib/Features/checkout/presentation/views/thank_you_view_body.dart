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
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
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
