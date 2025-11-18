import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/widgets/custom_elevation_button.dart';

class TotalWidget extends StatelessWidget {
  final Widget child;
  const TotalWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total', style: AppTextStyles.mMedium),
              Text('\$18.19', style: TextStyle(fontSize: 30.sp)),
            ],
          ),

          CustomElevationButton(
            onPressed: () {},
            maximumSize: Size(200.w, 70.h),
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
            child: child,
          ),
        ],
      ),
    );
  }
}
