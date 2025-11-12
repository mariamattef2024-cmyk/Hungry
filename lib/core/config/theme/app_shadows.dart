import 'package:flutter/material.dart';
import 'package:hungry/core/config/theme/app_color.dart';

class AppShadows {
  const AppShadows._();

  static BoxShadow shadow1 = BoxShadow(
    offset: const Offset(0, 6),
    blurRadius: 17,
    spreadRadius: 0,
    color: AppColors.shadow1Color.withValues(alpha: 0.013),
  );
}
