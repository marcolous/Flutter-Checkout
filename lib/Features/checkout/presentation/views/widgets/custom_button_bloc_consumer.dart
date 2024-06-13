import 'dart:developer';

import 'package:checkout/Features/checkout/data/models/amount_model/amount_model.dart';
import 'package:checkout/Features/checkout/data/models/amount_model/details.dart';
import 'package:checkout/Features/checkout/data/models/item_list_model/item.dart';
import 'package:checkout/Features/checkout/data/models/item_list_model/item_list_model.dart';
import 'package:checkout/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout/Features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:checkout/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:checkout/core/utils/api_keys.dart';
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
            var dataTransaction = getDataTransactions();
            excutePaypalPayment(context, dataTransaction);
          },
          isLoading: state is PaymentLoading ? true : false,
          text: 'Payment',
        );
      },
    );
  }

  void excutePaypalPayment(BuildContext context,
      ({AmountModel amount, ItemListModel itemList}) dataTransaction) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.clientId,
        secretKey: ApiKeys.paypalSecretKey,
        transactions: [
          {
            "amount": dataTransaction.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": dataTransaction.itemList.toJson(),
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ThankYouView()));
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
  }

  ({AmountModel amount, ItemListModel itemList}) getDataTransactions() {
    var amount = AmountModel(
        total: '100',
        currency: 'USD',
        details: Details(shipping: '0', shippingDiscount: 0, subtotal: '100'));

    List<OrderItemModel> orders = [
      OrderItemModel(
        currency: 'USD',
        name: 'Apple',
        quantity: 4,
        price: '10',
      ),
      OrderItemModel(
        currency: 'USD',
        name: "Pineapple",
        quantity: 5,
        price: '12',
      ),
    ];
    var itemList = ItemListModel(orders: orders);

    return (amount: amount, itemList: itemList);
  }
}
