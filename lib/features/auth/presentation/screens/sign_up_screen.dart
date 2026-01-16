import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/features/auth/presentation/screens/login_screen.dart';
import 'package:hungry/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:hungry/root.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign-up-screen';

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    final TextEditingController passwordController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gap(150),
            SvgPicture.asset(
              'assets/svg/Hungry_.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
            Gap(20),
            Text(
              'Welcome to Hungry App!',
              style: AppTextStyles.headingStyle18Ro,
            ),
            Gap(40),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.r),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Gap(40),
                        CustomTextFormField(
                          hint: 'Name',
                          controller: emailController,
                          isPassword: false,
                        ),
                        Gap(20),
                        CustomTextFormField(
                          hint: 'Email',
                          controller: emailController,
                          isPassword: false,
                        ),
                        Gap(20),
                        CustomTextFormField(
                          hint: 'Password',
                          isPassword: true,
                          controller: passwordController,
                        ),
                        Gap(60),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 50.h),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {}
                          },
                          child: Text('Sign Up'),
                        ),
                        Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Alreadt have an account?',
                              style: AppTextStyles.headingStyle16.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  LoginScreen.routeName,
                                );
                              },
                              child: Text(
                                'Login',
                                style: AppTextStyles.headingStyle18Po.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
