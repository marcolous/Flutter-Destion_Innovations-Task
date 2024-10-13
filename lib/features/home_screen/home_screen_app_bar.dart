import 'package:destion_innovations_task/core/customs/custom_default_button.dart';
import 'package:destion_innovations_task/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Destion Innovations',
          style: Styles.style26(context),
          // textAlign: TextAlign.end,
        ),
        const Spacer(),
        CustomDefaultButton(
          iconData: Icons.search_rounded,
          onPressed: () {},
        ),
        const Gap(10),
        CustomDefaultButton(
          iconData: Icons.settings_rounded,
          onPressed: () {},
        ),
      ],
    );
  }
}
