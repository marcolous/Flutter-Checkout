import 'package:checkout/Features/checkout/presentation/views/widgets/custom_dashed_lines.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_divider.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_paid_button.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_text_row.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/custom_white_circle.dart';
import 'package:checkout/Features/checkout/presentation/views/widgets/mastercard_list_tile.dart';
import 'package:checkout/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const CustomDashedLines(),
          const CustomWhiteCircle(left: -20),
          const CustomWhiteCircle(right: -20),
          Positioned(
            right: 0,
            left: 0,
            top: -45,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -35,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green,
              child: Icon(
                size: 70,
                Icons.check_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(80),
                const Text('Thank You!', style: Styles.style25),
                Text('Your transaction was successful', style: Styles.style20),
                const Gap(42),
                const CustomTextRow(text1: 'Date', text2: '01/24/2023'),
                const Gap(30),
                const CustomTextRow(text1: 'Time', text2: '10:15 AM'),
                const Gap(30),
                const CustomTextRow(text1: 'To', text2: 'Sam Louis'),
                const Gap(30),
                const CustomDivider(),
                const Gap(30),
                const CustomTextRow(
                    text1: 'Total', text2: r'$50.97', style: Styles.style24),
                const Gap(30),
                const MasterCardListTile(),
                const Gap(88),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/qrcode.svg'),
                    const CustomPaidButton(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
