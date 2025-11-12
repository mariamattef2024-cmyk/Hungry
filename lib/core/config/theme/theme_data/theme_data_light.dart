import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/config/theme/app_color.dart';
import 'package:hungry/core/config/theme/app_fonts.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';

ThemeData getLightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorLight,
    brightness: Brightness.light,
    fontFamily: AppFonts.robotoFont,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.textColorLight,
      displayColor: AppColors.textColorLight,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.grey0,
        disabledBackgroundColor: AppColors.grey100,
        disabledForegroundColor: AppColors.grey0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: AppTextStyles.lSemiBold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(color: AppColors.cardColorLight),
      ),
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.cardColorLight;
        }
        return AppColors.grey0;
      }),
      filled: true,
      hintStyle: AppTextStyles.lMedium.copyWith(
        color: AppColors.textColorLight,
      ),
    ),
  );
}
