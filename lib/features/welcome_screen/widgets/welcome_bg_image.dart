import 'package:destion_innovations_task/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class WelcomeBGImage extends StatelessWidget {
  const WelcomeBGImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: AppImages.bgPng,
    );
  }
}
