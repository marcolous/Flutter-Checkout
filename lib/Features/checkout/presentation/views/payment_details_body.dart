import 'package:checkout/Features/checkout/presentation/views/payment_method_list_view.dart';
import 'package:flutter/material.dart';

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


