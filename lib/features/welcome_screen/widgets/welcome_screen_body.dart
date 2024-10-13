import 'package:destion_innovations_task/features/welcome_screen/widgets/welcome_bg_image.dart';
import 'package:destion_innovations_task/features/welcome_screen/widgets/welcome_screen_buttons.dart';
import 'package:flutter/material.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        WelcomeBGImage(),
        WelocmeScreenButtons(),
      ],
    );
  }
}



