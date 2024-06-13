import 'dart:developer';

import 'package:checkout/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout/Features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:checkout/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ThankYouView()),
          );
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            // PaymentIntentInputModel paymentIntentInputModel =
            //     PaymentIntentInputModel(
            //   amount: '9.99',
            //   currency: 'USD',
            //   customerId: 'cus_QHlWqHlmTYCKxk',
            // );
            // BlocProvider.of<PaymentCubit>(context)
            //     .makePayment(paymentIntentInputModel: paymentIntentInputModel);

            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: "YOUR CLIENT ID",
                secretKey: "YOUR SECRET KEY",
                transactions: const [
                  {
                    "amount": {
                      "total": "100",
                      "currency": "USD",
                      "details": {
                        "subtotal": "100",
                        "shipping": "0",
                        "shipping_discount": 0
                      }
                    },
                    "description": "The payment transaction description.",
                    // "payment_options": {
                    //   "allowed_payment_method":
                    //       "INSTANT_FUNDING_SOURCE"
                    // },
                    "item_list": {
                      "items": [
                        {
                          "name": "Apple",
                          "quantity": 4,
                          "price": '10',
                          "currency": "USD"
                        },
                        {
                          "name": "Pineapple",
                          "quantity": 5,
                          "price": '12',
                          "currency": "USD"
                        }
                      ],

                      // Optional
                      //   "shipping_address": {
                      //     "recipient_name": "Tharwat samy",
                      //     "line1": "tharwat",
                      //     "line2": "",
                      //     "city": "tharwat",
                      //     "country_code": "EG",
                      //     "postal_code": "25025",
                      //     "phone": "+00000000",
                      //     "state": "ALex"
                      //  },
                    }
                  }
                ],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) async {
                  log("onSuccess: $params");
                  Navigator.pop(context);
                },
                onError: (error) {
                  log("onError: $error");
                  Navigator.pop(context);
                },
                onCancel: () {
                  // ignore: avoid_print
                  print('cancelled:');
                  Navigator.pop(context);
                },
              ),
            ));
          },
          isLoading: state is PaymentLoading ? true : false,
          text: 'Payment',
        );
      },
    );
  }
}
