import 'package:checkout/Features/checkout/presentation/views/payment_method_list_view.dart';
import 'package:checkout/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const PaymentMethodsListView(),
          CustomButton(
            text: 'Payment',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ThankYouView()),
              );
            },
          )
        ],
      ),
    );
  }
}
