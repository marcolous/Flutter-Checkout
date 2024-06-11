import 'package:flutter/material.dart';

class CustomWhiteCircle extends StatelessWidget {
  const CustomWhiteCircle({
    super.key,
    this.left,
    this.right,
  });
  final double? left, right;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      bottom: MediaQuery.sizeOf(context).height * .2,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
