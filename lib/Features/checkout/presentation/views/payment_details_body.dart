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
          PaymentMethodsListView(),
        ],
      ),
    );
  }
}

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});
  final List<String> paymentMethodsItems = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
    'assets/images/apple_pay.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItems.length,
        itemBuilder: (context, index) {
          return CustomPaymentMethod(
            isActive: false,
            image: paymentMethodsItems[index],
          );
        },
      ),
    );
  }
}

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
      duration: const Duration(milliseconds: 600),
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
