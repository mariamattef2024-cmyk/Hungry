import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/features/auth/presentation/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0.r),
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
              Text(
                'Welcome back ,Discover the fast food',
                style: AppTextStyles.headingStyle18Po,
              ),

              Gap(40),
              CustomTextFormField(
                hint: 'Email',
                controller: _emailController,
                isPassword: false,
              ),
              Gap(20),
              CustomTextFormField(
                hint: 'Password',
                isPassword: true,
                controller: _passwordController,
              ),
              Gap(20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50.h),
                ),
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   // Perform login action
                  // }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
