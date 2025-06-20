import 'package:flutter/material.dart';

import '../../../../core/utils/assets/app_styles/app_styles.dart';
import '../../../../core/utils/assets/colors/app_colors.dart';

class SharedEnterText extends StatelessWidget {
  const SharedEnterText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.font16White.copyWith(
        fontSize: 14,
        color: AppColors.kGrey,
      ),
    );
  }
}
