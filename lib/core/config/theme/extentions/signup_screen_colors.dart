import 'package:flutter/material.dart';

class SignupScreenColors extends ThemeExtension<SignupScreenColors> {
  final Color? topBackgroundColor;

  const SignupScreenColors({required this.topBackgroundColor});

  @override
  ThemeExtension<SignupScreenColors> copyWith({Color? topBackgroundColor}) {
    return SignupScreenColors(
      topBackgroundColor: topBackgroundColor ?? this.topBackgroundColor,
    );
  }

  @override
  ThemeExtension<SignupScreenColors> lerp(
    ThemeExtension<SignupScreenColors>? other,
    double t,
  ) {
    if (other is! SignupScreenColors) {
      return this;
    }
    return SignupScreenColors(
      topBackgroundColor: Color.lerp(
        topBackgroundColor,
        other.topBackgroundColor,
        t,
      ),
    );
  }
}
