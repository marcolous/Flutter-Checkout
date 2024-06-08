import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomPaymentMethod(image: 'assets/images/card.svg'),
              CustomPaymentMethod(image: 'assets/images/paypal.svg'),
              CustomPaymentMethod(image: 'assets/images/apple_pay.svg'),
            ],
          )
        ],
      ),
    );
  }
}

class CustomPaymentMethod extends StatelessWidget {
  const CustomPaymentMethod({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 2, color: Colors.green),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
