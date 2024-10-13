import 'package:destion_innovations_task/core/customs/custom_progress_indicator.dart';
import 'package:destion_innovations_task/core/utils/styles.dart';
import 'package:flutter/material.dart';

class VerificationButton extends StatelessWidget {
  const VerificationButton({
    super.key,
    required this.onPressed,
    required this.isLoading,
  });
  final bool isLoading;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomProgressIndicator(
      isLoading: isLoading,
      child: AspectRatio(
        aspectRatio: 6,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: const Color(0xff1E232C),
            overlayColor: const Color(0xff1E232C),
            elevation: 0,
          ),
          child: Text('Verify', style: Styles.style15(context)),
        ),
      ),
    );
  }
}
