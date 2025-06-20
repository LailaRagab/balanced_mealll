import 'package:balanced_meal/core/utils/assets/colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/assets/app_styles/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.onPressed});

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        fixedSize: Size(327, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Text("Order Food", style: AppStyles.font16White),
    );
  }
}
