import 'package:destion_innovations_task/core/utils/routes.dart';
import 'package:destion_innovations_task/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.kForgotPasswordScreen);
      },
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text('Forgot Password?', style: Styles.style14(context)),
      ),
    );
  }
}
