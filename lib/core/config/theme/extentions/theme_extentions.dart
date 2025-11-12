import 'package:flutter/material.dart';
import 'package:hungry/core/config/theme/extentions/custom_colors_extentions.dart';

extension ContextExt on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  CustomColors get customColors {
    return Theme.of(this).customColors;
  }
}
