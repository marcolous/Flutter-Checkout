import 'package:checkout/Features/checkout/presentation/views/payment_method_list_view.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentMethodsButtomSheet extends StatelessWidget {
  const PaymentMethodsButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(20),
          PaymentMethodsListView(),
          Gap(20),
          CustomButtonBlocConsumer(),
          Gap(20),
        ],
      ),
    );
  }
}


