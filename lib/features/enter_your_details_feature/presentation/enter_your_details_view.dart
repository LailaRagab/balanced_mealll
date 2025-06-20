import 'package:balanced_meal/core/utils/assets/colors/app_colors.dart';
import 'package:balanced_meal/core/widgets/custom_app_bar_shared.dart';
import 'package:balanced_meal/features/enter_your_details_feature/presentation/widgets/gender_drop_down_button.dart';
import 'package:balanced_meal/features/enter_your_details_feature/presentation/widgets/next_button.dart';
import 'package:balanced_meal/features/enter_your_details_feature/presentation/widgets/shared_enter_column.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterYourDetailsView extends StatelessWidget {
  const EnterYourDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBgNextButtonColor,
        appBar: AppBarShared(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          title: 'Enter Your Details',
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 31, left: 24, right: 24),
          child: SingleChildScrollView(
            // lets the user drag to dismiss keyboard on iOS/Android
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GenderDropDownButton(),
                const SharedEnterColumn(
                  text: 'Weight',
                  textFieldHint: 'Enter your weight',
                  suffixText: 'Kg',
                ),
                const SharedEnterColumn(
                  text: 'Height',
                  textFieldHint: 'Enter your Height',
                  suffixText: 'Cm',
                ),
                const SharedEnterColumn(
                  text: 'Age',
                  textFieldHint: 'Enter your Age',
                  suffixText: '',
                ),
                const SizedBox(height: 169),
                NextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
