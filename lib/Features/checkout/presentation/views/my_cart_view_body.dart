import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(25),
        Image.asset('assets/images/basket_image.png'),
      ],
    );
  }
}
