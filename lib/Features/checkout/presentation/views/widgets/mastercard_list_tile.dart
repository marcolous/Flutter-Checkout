import 'package:checkout/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MasterCardListTile extends StatelessWidget {
  const MasterCardListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: SvgPicture.asset('assets/images/mastercard.svg'),
        horizontalTitleGap: 30,
        title: const Text('Credit Card'),
        titleTextStyle: Styles.style18,
        subtitle: const Text('Mastercard **78'),
        subtitleTextStyle: Styles.style16,
      ),
    );
  }
}