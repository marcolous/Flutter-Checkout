import 'package:checkout/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Gap(25),
          Image.asset('assets/images/basket_image.png'),
          const Gap(25),
          const OrderInfoItem(
            text: 'Order Subtotal',
            price: '42.97',
          ),
          const Gap(3),
          const OrderInfoItem(
            text: 'Discount',
            price: '0',
          ),
          const Gap(3),
          const OrderInfoItem(
            text: 'Shipping',
            price: '8',
          ),
          //Divider()
        ],
      ),
    );
  }
}

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.text, required this.price});
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.style18,
        ),
        Text(
          r'$' + price,
          style: Styles.style18,
        ),
      ],
    );
  }
}
