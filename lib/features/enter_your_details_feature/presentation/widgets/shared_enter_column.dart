import 'package:balanced_meal/core/utils/assets/app_styles/app_styles.dart';
import 'package:balanced_meal/core/utils/assets/colors/app_colors.dart';
import 'package:balanced_meal/features/enter_your_details_feature/presentation/widgets/shared_enter_text.dart';
import 'package:flutter/material.dart';

class SharedEnterColumn extends StatelessWidget {
  const SharedEnterColumn({
    super.key,
    required this.text,
    required this.textFieldHint,
    required this.suffixText,
  });
  final String text;
  final String textFieldHint;
  final String suffixText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        SharedEnterText(text: text),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.kWhite,
            border: Border.all(color: AppColors.kBorderColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Text(
                  suffixText,
                  style: AppStyles.font16White.copyWith(
                    fontSize: 14,
                    color: AppColors.kBlack,
                  ),
                ),
                suffixIconConstraints: const BoxConstraints(
                  minWidth: 0,
                  minHeight: 0,
                ),
                hintText: textFieldHint,
                hintStyle: AppStyles.font16LightGrey,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
