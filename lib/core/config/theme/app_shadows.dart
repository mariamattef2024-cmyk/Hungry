import 'package:flutter/material.dart';

class AppShadows {
  const AppShadows._();

  static BoxShadow shadow1 = BoxShadow(
    color: Colors.white.withValues(alpha: 0.1),
    blurRadius: 17,
    offset: Offset(0, 6),
    spreadRadius: 0,
  );
}
