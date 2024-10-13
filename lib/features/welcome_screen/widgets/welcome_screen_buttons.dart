import 'package:destion_innovations_task/core/customs/app_icon.dart';
import 'package:destion_innovations_task/core/customs/custom_button.dart';
import 'package:destion_innovations_task/core/utils/routes.dart';
import 'package:destion_innovations_task/core/utils/screen_size.dart';
import 'package:destion_innovations_task/features/welcome_screen/widgets/welcome_register_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelocmeScreenButtons extends StatelessWidget {
  const WelocmeScreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = ScreenSize.width(context);
    return Positioned(
      left: 0,
      right: 0,
      top: width * 1.2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppIcon(),
            const Gap(45),
            CustomButton(
              title: 'Login',
              onPressed: () =>
                  Navigator.pushNamed(context, Routes.kLoginScreen),
            ),
            const Gap(15),
            const WelcomeRegisterButton()
          ],
        ),
      ),
    );
  }
}
