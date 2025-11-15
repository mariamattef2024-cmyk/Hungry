import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/auth/presentation/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0.r),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/Hungry_.svg',
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
                Gap(20),

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
                Gap(20),
                CustomTextFormField(
                  hint: 'Confirm Password',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
