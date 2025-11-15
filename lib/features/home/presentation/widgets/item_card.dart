import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';

class ItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String rating;
  const ItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 150.h),
            Gap(15),
            Text(title, style: AppTextStyles.mSemiBold),
            Text(subtitle),
            Row(
              children: [
                SvgPicture.asset('assets/svg/star.svg'),
                Gap(5),
                Text(rating, style: AppTextStyles.mMedium),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
