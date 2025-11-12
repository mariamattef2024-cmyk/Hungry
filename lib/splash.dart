import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/config/theme/app_color.dart';
import 'package:hungry/core/config/theme/utils/theme_functions.dart';
import 'package:hungry/core/config/theme/utils/theme_mapper.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFF8F4E3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: SvgPicture.asset(
              'assets/svg/Hungry_.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(height: 20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  toggleTheme(context, ThemeNames.green);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryLightGreen300,
                ),
                child: const SizedBox(),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  toggleTheme(context, ThemeNames.red);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryLightRed300,
                ),
                child: const SizedBox(),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  toggleTheme(context, ThemeNames.blue);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryLightBlue300,
                ),
                child: const SizedBox(),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  toggleTheme(context, ThemeNames.yellow);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryLightYellow300,
                ),
                child: const SizedBox(),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  toggleTheme(context, ThemeNames.purple);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryLightPurple300,
                ),
                child: const SizedBox(),
              ),
              const SizedBox(width: 10),
            ],
          ),
          // ElevatedButton(onPressed: () {}, child: Text('Get Started')),
          Spacer(),
          Image.asset("assets/images/image 1.png"),
        ],
      ),
    );
  }
}
// F8F4E3  خلفية
// 4A3C32  نصوص وايقونات
// 0xFF08431D
// A5A666  ازرار ثانوية
// C85B2E  لون مميز رئيسي 