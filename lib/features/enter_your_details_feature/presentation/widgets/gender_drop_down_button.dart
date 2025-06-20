import 'package:balanced_meal/features/enter_your_details_feature/presentation/widgets/gender_drop_down_container.dart';
import 'package:balanced_meal/features/enter_your_details_feature/presentation/widgets/shared_enter_text.dart';
import 'package:flutter/material.dart';

class GenderDropDownButton extends StatelessWidget {
  const GenderDropDownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SharedEnterText(text: 'Gender'),
        const SizedBox(height: 10),
        GenderDropDownContainer(),
      ],
    );
  }
}
