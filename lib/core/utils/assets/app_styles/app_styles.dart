import 'package:balanced_meal/core/utils/assets/app_fonts/app_fonts.dart';
import 'package:balanced_meal/core/utils/assets/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle font16White = TextStyle(
    fontSize: 16,
    color: AppColors.kWhite,
    fontFamily: AppFonts.poppinsFont,
  );
  static TextStyle font48White = TextStyle(
    fontSize: 48,
    color: AppColors.kWhite,
    fontWeight: FontWeight.w800,
    fontFamily: AppFonts.abhayaLibreFont,
  );
  static TextStyle font16LightGrey = TextStyle(
    fontSize: 16,
    color: AppColors.kLightGrey,
    fontFamily: AppFonts.questrialFont,
  );
}
