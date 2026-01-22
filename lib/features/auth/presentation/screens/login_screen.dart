import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/network/api_error.dart';
import 'package:hungry/core/widgets/custom_snack.dart';
import 'package:hungry/features/auth/data/auth_repo.dart';
import 'package:hungry/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:hungry/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:hungry/root.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  AuthRepo authRepo = AuthRepo();
  bool isLoading = false;
  Future<void> login() async {
    try {
      setState(() {
        isLoading = true;
      });
      final user = await authRepo.login(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
      if (user != null) {
        Navigator.pushReplacementNamed(context, Root.routeName);
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      String eMessage = "Unhandeled Login Error";
      if (e is ApiError) {
        eMessage = e.message!;
      }
      ScaffoldMessenger.of(context).showSnackBar(customSnack(eMessage));
    }
  }

  @override
  Widget build(BuildContext context) {
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
              'Welcome back ,Discover the fast food',
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
                        isLoading
                            ? CircularProgressIndicator(
                                color: Theme.of(context).colorScheme.onPrimary,
                              )
                            : ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(double.infinity, 50.h),
                                ),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    login();
                                  }
                                },
                                child: Text('Login'),
                              ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don,t have an account?',
                              style: AppTextStyles.headingStyle16.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  SignUpScreen.routeName,
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: AppTextStyles.headingStyle18Po.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Root.routeName);
                          },
                          child: Text(
                            "Continue as Guest?",
                            style: AppTextStyles.headingStyle16.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
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
