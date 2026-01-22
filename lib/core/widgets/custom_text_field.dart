import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomtTextfField extends StatelessWidget {
  final Widget? child;
  final String? hint;
  final TextEditingController? controller;
  const CustomtTextfField({super.key, this.child, this.hint, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.r),
          child: child,
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        hintText: hint,
        labelText: hint,
      ),
    );
  }
}
