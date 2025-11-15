import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_color.dart';
import 'package:hungry/core/config/theme/extentions/theme_extentions.dart';
import 'package:hungry/core/config/theme/utils/theme_functions.dart';
import 'package:hungry/core/config/theme/utils/theme_mapper.dart';
import 'package:hungry/core/widgets/logo_widget.dart';
import 'package:hungry/root.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Center(child: LogoWidget()),
          Gap(20.h),
          ElevatedButton(
            onPressed: () {
              if (context.isDarkMode) {
                toggleMode(context);
              } else {
                toggleMode(context);
              }
            },
            child: const Text("Toggle Theme"),
          ),
          Gap(20.h),
          Padding(
            padding: EdgeInsets.all(5.0.r),
            child: Row(
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
                Gap(3.w),
                ElevatedButton(
                  onPressed: () {
                    toggleTheme(context, ThemeNames.red);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryLightRed300,
                  ),
                  child: const SizedBox(),
                ),
                Gap(3.w),
                ElevatedButton(
                  onPressed: () {
                    toggleTheme(context, ThemeNames.blue);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryLightBlue300,
                  ),
                  child: const SizedBox(),
                ),
                Gap(3.w),
                ElevatedButton(
                  onPressed: () {
                    toggleTheme(context, ThemeNames.yellow);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryLightYellow300,
                  ),
                  child: const SizedBox(),
                ),
                Gap(3.w),
                ElevatedButton(
                  onPressed: () {
                    toggleTheme(context, ThemeNames.purple);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryLightPurple300,
                  ),
                  child: const SizedBox(),
                ),
                Gap(3.w),
                ElevatedButton(
                  onPressed: () {
                    toggleTheme(context, ThemeNames.orange);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                  ),
                  child: const SizedBox(),
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset("assets/images/image 1.png"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Root();
              },
            ),
          );
        },
      ),
    );
  }
}
