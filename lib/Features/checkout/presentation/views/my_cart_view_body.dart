import 'package:checkout/Features/checkout/data/models/repos/checkout_repo_impl.dart';
import 'package:checkout/Features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_divider.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/order_info_total_price.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/payment_methods_buttom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/images/basket_image.png')),
          const OrderInfoItem(text: 'Order Subtotal', price: '42.97'),
          const Gap(3),
          const OrderInfoItem(text: 'Discount', price: '0'),
          const Gap(3),
          const OrderInfoItem(text: 'Shipping', price: '8'),
          const Gap(15),
          const CustomDivider(),
          const Gap(15),
          const OrderInfoTotalPrice(text: 'Total', price: '50.97'),
          const Gap(15),
          CustomButton(
            text: 'Complete Payment',
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BlocProvider(
                    create: (context) => PaymentCubit(CheckoutRepoImpl()),
                    child: const PaymentMethodsButtomSheet(),
                  );
                },
              );
            },
          ),
          const Gap(15),
        ],
      ),
    );
  }
}
