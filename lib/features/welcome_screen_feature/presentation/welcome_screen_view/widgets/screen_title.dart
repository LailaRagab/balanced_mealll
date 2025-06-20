import 'package:flutter/material.dart';

import '../../../../../core/utils/assets/app_styles/app_styles.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 48,
      left: 48,
      right: 24,
      child: Text("Balanced Meal", style: AppStyles.font48White),
    );
  }
}
