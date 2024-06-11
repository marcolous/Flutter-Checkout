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
            //top: 50,
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

class CustomDots extends StatelessWidget {
  const CustomDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 3,
      decoration: ShapeDecoration(
        color: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
