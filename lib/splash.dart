import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_color.dart';
import 'package:hungry/core/config/theme/utils/theme_functions.dart';
import 'package:hungry/core/config/theme/utils/theme_mapper.dart';
import 'package:hungry/core/widgets/logo_widget.dart';
import 'package:hungry/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:hungry/root.dart';

class Splash extends StatefulWidget {
  static const String routeName = '/splash';
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.pushReplacementNamed(context, Root.routeName);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

            /// LOGO animation
            ScaleTransition(
              scale: _scaleAnimation,
              child: const Center(child: LogoWidget()),
            ),

            Gap(20.h),

            /// Buttons animation
            SlideTransition(
              position: _slideAnimation,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      toggleMode(context);
                    },
                    child: const Text("Toggle Theme"),
                  ),
                  Gap(20.h),

                  Padding(
                    padding: EdgeInsets.all(5.r),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 6.w,
                      runSpacing: 8.h,
                      children: [
                        _themeButton(
                          ThemeNames.green,
                          AppColors.primaryLightGreen300,
                        ),
                        _themeButton(
                          ThemeNames.red,
                          AppColors.primaryLightRed300,
                        ),
                        _themeButton(
                          ThemeNames.blue,
                          AppColors.primaryLightBlue300,
                        ),
                        _themeButton(
                          ThemeNames.yellow,
                          AppColors.primaryLightYellow300,
                        ),
                        _themeButton(
                          ThemeNames.purple,
                          AppColors.primaryLightPurple300,
                        ),
                        _themeButton(ThemeNames.orange, AppColors.primaryColor),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            SlideTransition(
              position: _slideAnimation,
              child: Image.asset("assets/images/image 1.png"),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Root.routeName);
        },
      ),
    );
  }

  Widget _themeButton(ThemeNames theme, Color color) {
    return ElevatedButton(
      onPressed: () => toggleTheme(context, theme),
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: const SizedBox(),
    );
  }
}
