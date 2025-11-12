import 'package:flutter/material.dart';
import 'package:hungry/core/config/theme/app_color.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';

import '../../app_fonts.dart';


ThemeData getDarkPurpleTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundDarkPurple,
    brightness: Brightness.dark,
    fontFamily: AppFonts.poppinsFont,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryDarkPurple300,
      brightness: Brightness.dark,
    ),
    textTheme: ThemeData.light().textTheme.apply(
          bodyColor: AppColors.grey0,
          displayColor: AppColors.grey0,
        ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDarkPurple300,
        foregroundColor: AppColors.grey0,
        disabledBackgroundColor: AppColors.grey800,
        disabledForegroundColor: AppColors.grey400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: AppTextStyles.mSemiBold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.grey100,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.grey100,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.primaryDarkPurple200,
        ),
      ),
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.darkFillColor;
        }
        return AppColors.grey800;
      }),
      filled: true,
      hintStyle: AppTextStyles.mRegular.copyWith(color: AppColors.grey400),
    ),
  );
}