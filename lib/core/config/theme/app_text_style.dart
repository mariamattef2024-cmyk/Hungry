import 'package:flutter/material.dart';
import 'package:hungry/core/config/theme/app_fonts.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const headingStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.robotoFont,
    // fontStyle: FontStyle(),
    color: Color(0xFF3C2F2F),
  );
  static const headingStyle18Po = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.poppinsFont,
  );
  static const headingStyle18Ro = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: AppFonts.robotoFont,
    color: Color(0xFF7D7D7D),
  );
  static const headingStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.poppinsFont,
  );

  static const TextStyle headingH6 = TextStyle(
    fontSize: 18,
    fontFamily: AppFonts.poppinsFont,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 1.4,
  );

  static const headingH5 = TextStyle(
    fontFamily: AppFonts.robotoFont,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 1.4,
  );

  static const headingH4 = TextStyle(
    fontFamily: AppFonts.robotoFont,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    height: 1.5,
  );

  static const headingH3 = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontWeight: FontWeight.w600,
    fontSize: 32,
    height: 1.4,
  );

  static const headingH2 = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontWeight: FontWeight.w600,
    fontSize: 40,
    height: 1.2,
  );

  static const headingH1 = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontWeight: FontWeight.w600,
    fontSize: 48,
    height: 1.2,
  );

  // body xs
  static const xsRegular = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 12,
    height: 1.55,
    letterSpacing: -0.24,
  );
  static const xsMedium = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.55,
    letterSpacing: -0.24,
  );

  static const xsSemiBold = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.55,
    letterSpacing: -0.24,
  );

  // body small
  static const sRegular = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 14,
    height: 1.55,
    letterSpacing: -0.28,
  );
  static const sMedium = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.55,
    letterSpacing: -0.28,
  );

  static const sSemiBold = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.55,
    letterSpacing: -0.28,
  );

  // body medium
  static const mRegular = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 16,
    height: 1.6,
    letterSpacing: -0.32,
  );
  static const mMedium = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: -0.32,
  );

  static const mSemiBold = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.6,
    letterSpacing: -0.32,
  );

  // body medium
  static const lRegular = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 18,
    height: 1.55,
  );
  static const lMedium = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.55,
  );

  static const lSemiBold = TextStyle(
    fontFamily: AppFonts.poppinsFont,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.55,
  );
}
