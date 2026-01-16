import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/widgets/custom_elevation_button.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      padding: EdgeInsets.symmetric(horizontal: 40.r, vertical: 20.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.r,
            child: Icon(
              Icons.check_circle,
              color: Theme.of(context).colorScheme.primary,
              size: 80.r,
            ),
          ),
          Gap(20.r),
          Text(
            'Success !',
            style: AppTextStyles.headingH3.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Gap(10.r),
          Text(
            textAlign: TextAlign.center,
            'Your payment was successful.A receipt for this purchase has been sent to your email.',
            style: TextStyle(
              fontSize: 14.sp,
              color: Color(0xffBCBBBB),
              letterSpacing: 0,
              height: 1.54,
              fontWeight: FontWeight.w400,
            ),
          ),
          Gap(40.r),
          CustomElevationButton(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
            child: Text(
              'Close',
              style: AppTextStyles.headingStyle18Ro.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
