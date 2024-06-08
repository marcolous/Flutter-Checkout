import 'package:checkout/Features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/order_info_total_price.dart';
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
          const OrderInfoItem(text: 'Order Subtotal', price: '42.97'),
          const Gap(3),
          const OrderInfoItem(text: 'Discount', price: '0'),
          const Gap(3),
          const OrderInfoItem(text: 'Shipping', price: '8'),
          const Gap(15),
          const Divider(thickness: 2, indent: 15, endIndent: 15),
          const Gap(15),
          const OrderInfoTotalPrice(text: 'Total', price: '50.97'),
          const Gap(15),
          const CustomButton()
        ],
      ),
    );
  }
}
