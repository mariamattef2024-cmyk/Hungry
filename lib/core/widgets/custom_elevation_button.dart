import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevationButton extends StatelessWidget {
  final Size? maximumSize;
  final void Function()? onPressed;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  const CustomElevationButton({
    super.key,
    this.onPressed,
    required this.child,
    this.maximumSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        maximumSize: maximumSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
