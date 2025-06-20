import 'package:balanced_meal/core/utils/assets/app_styles/app_styles.dart';
import 'package:balanced_meal/core/utils/assets/colors/app_colors.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kBgNextButtonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        fixedSize: Size(327, 60),
      ),
      onPressed: () {},
      child: Text(
        "Next",
        style: AppStyles.font16LightGrey.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
