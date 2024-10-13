import 'package:destion_innovations_task/core/utils/routes.dart';
import 'package:destion_innovations_task/core/utils/show_snack_bar.dart';
import 'package:destion_innovations_task/core/utils/styles.dart';
import 'package:flutter/material.dart';

class UnVerifiedEmailWidget extends StatelessWidget {
  const UnVerifiedEmailWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // if (await _checkVerifiedEmail(context: context)) {
        //   ShowSnackBar.show(context, 'Email Already Verified.');
        //   return;
        // } else {
        //   Navigator.pushNamed(context, Routes.kVerificationScreen);
        // }
      },
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text('Unverified Email?', style: Styles.style14(context)),
      ),
    );
  }

  // Future<bool> _checkVerifiedEmail({required BuildContext context}) async {}
}
