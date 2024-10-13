import 'package:destion_innovations_task/core/utils/app_images.dart';
import 'package:destion_innovations_task/core/utils/styles.dart';
import 'package:destion_innovations_task/features/home_screen/home_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: const [
            HomeScreenAppBar(),
          ],
        ),
      ),
    );
  }
}
