
  import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';

SnackBar customSnack(String eMessage) {
    return SnackBar(
        behavior: SnackBarBehavior.floating,
        // clipBehavior: Clip.none,
        backgroundColor: Colors.red,
        content: Row(
          children: [
            Icon(Icons.info_outline_rounded, color: Colors.white),
            Gap(5),
            Text(
              eMessage,
              style: AppTextStyles.headingStyle16.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
  }
