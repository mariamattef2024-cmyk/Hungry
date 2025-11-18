import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/features/home/presentation/views/product_details_screen.dart';

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
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ProductDetailsScreen.routeName),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, width: 150.h),
                Gap(15.r),
                Text(title, style: AppTextStyles.mSemiBold),
                Text(subtitle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('⭐  $rating', style: AppTextStyles.mMedium),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_rounded,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
