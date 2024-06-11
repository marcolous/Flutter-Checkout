import 'package:checkout/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPaidButton extends StatelessWidget {
  const CustomPaidButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 113,
      height: 58,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.grey[300],
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.green,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        },
        child: Text(
          'PAID',
          style: Styles.style24.copyWith(color: Colors.green),
        ),
      ),
    );
  }
}




