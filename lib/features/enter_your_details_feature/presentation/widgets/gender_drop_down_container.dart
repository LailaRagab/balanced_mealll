import 'package:flutter/material.dart';

import '../../../../core/utils/assets/app_styles/app_styles.dart';
import '../../../../core/utils/assets/colors/app_colors.dart';

class GenderDropDownContainer extends StatefulWidget {
  const GenderDropDownContainer({super.key});

  @override
  State<GenderDropDownContainer> createState() =>
      _GenderDropDownContainerState();
}

class _GenderDropDownContainerState extends State<GenderDropDownContainer> {
  String? selectedValue;

  final List<String> genderOptions = ['male', 'female'];

  String getDisplayText(String value) {
    return value == 'male' ? 'Male' : 'Female';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        border: Border.all(color: AppColors.kBorderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: AppColors.kWhite,
          value: selectedValue,
          isExpanded: true,
          hint: Text("Choose your gender", style: AppStyles.font16LightGrey),
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
          selectedItemBuilder: (context) {
            return genderOptions.map((gender) {
              return Align(
                alignment: Alignment.centerLeft,
                child: Text(getDisplayText(gender)),
              );
            }).toList();
          },
          items:
              genderOptions.map((gender) {
                final bool isSelected = gender == selectedValue;
                return DropdownMenuItem(
                  value: gender,
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          isSelected
                              ? AppColors.primaryColor.withOpacity(0.1)
                              : AppColors.kWhite,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(getDisplayText(gender)),
                        if (isSelected)
                          Icon(
                            Icons.check,
                            color: AppColors.primaryColor,
                            size: 18,
                          ),
                      ],
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
