import 'package:destion_innovations_task/core/customs/custom_back_button.dart';
import 'package:destion_innovations_task/core/customs/custom_row.dart';
import 'package:destion_innovations_task/core/utils/routes.dart';
import 'package:destion_innovations_task/core/utils/show_snack_bar.dart';
import 'package:destion_innovations_task/core/utils/styles.dart';
import 'package:destion_innovations_task/features/verification_screen/verification_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VerificationScreenBody extends StatefulWidget {
  const VerificationScreenBody({super.key});

  @override
  State<VerificationScreenBody> createState() => _VerificationScreenBodyState();
}

class _VerificationScreenBodyState extends State<VerificationScreenBody> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView(
          children: [
            const CustomBackButton(),
            const Gap(28),
            Text(
              'Verification',
              style: Styles.style30(context),
            ),
            const Gap(20),
            Text(
              'Check the verification link we just sent on your email address.',
              style: Styles.style16(context),
            ),
            const Gap(35),
            VerificationButton(
              isLoading: isLoading,
              onPressed: () {
                _verify();
              },
            ),
            CustomRow(
              title: 'Didn\'t received code? ',
              subTitle: 'Resend',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  void _verify() {
    Navigator.pushNamed(context, Routes.kLoginScreen);
    ShowSnackBar.show(context, 'Verified :)');
  }
}
