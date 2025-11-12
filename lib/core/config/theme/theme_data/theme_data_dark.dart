import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/config/theme/app_color.dart';
import 'package:hungry/core/config/theme/app_fonts.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorDark,
    brightness: Brightness.dark,
    fontFamily: AppFonts.poppinsFont,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.textColorDark,
      displayColor: AppColors.textColorDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.grey0,
        disabledBackgroundColor: AppColors.grey800,
        disabledForegroundColor: AppColors.grey400,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        textStyle: AppTextStyles.lSemiBold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.primaryColor),
      ),
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.primaryColor;
        }
        return AppColors.grey800;
      }),
      filled: true,
      hintStyle: AppTextStyles.lMedium.copyWith(color: AppColors.textColorDark),
    ),
  );
}
