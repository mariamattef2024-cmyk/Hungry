import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';

class SpicySlider extends StatelessWidget {
  final double value;
  final void Function(double)? onChanged;
  const SpicySlider({super.key, required this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/pngwing 12.png', height: 270.h),
        Gap(20.r),
        Expanded(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    'Customize Your Burger to Your Tastes. Ultimate Experience',
                    style: AppTextStyles.mSemiBold,
                  ),
                ],
              ),
              Slider(value: value, onChanged: onChanged, min: 10, max: 100),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('😩'), Gap(90.r), Text('🌶')],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
