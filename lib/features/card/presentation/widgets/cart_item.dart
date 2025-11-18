import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';

class CartItem extends StatelessWidget {
  final String image, title, subTitle;
  final void Function()? onRemove;
  final void Function()? onAdd;
  final void Function()? onMinus;
  final int number;

  const CartItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onRemove,
    this.onAdd,
    this.onMinus,
    required this.number
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(15.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(image, height: 80.h),
                Gap(10.r),
                Text(title, style: AppTextStyles.mMedium),
                Gap(5.r),
                Text(subTitle, style: AppTextStyles.sRegular),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      color: Theme.of(context).colorScheme.primary,

                      onPressed: onMinus,
                      icon: Icon(Icons.remove_circle, size: 40),

                      // color: Theme.of(context).colorScheme.primary,
                    ),

                    Gap(20.r),
                    Text(number.toString(), style: AppTextStyles.lMedium),
                    Gap(20.r),
                    IconButton(
                      color: Theme.of(context).colorScheme.primary,

                      onPressed: onAdd,
                      icon: Icon(Icons.add_circle, size: 40),

                      // color: Theme.of(context).colorScheme.primary,
                    ),
                    // CustomElevationButton(
                    //   child: Icon(Icons.add),
                    //   onPressed: () {},
                    // ),
                  ],
                ),
                Gap(20.r),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 35.w,
                      vertical: 10,
                    ),
                  ),
                  onPressed: onRemove,
                  child: Text('Remove'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
