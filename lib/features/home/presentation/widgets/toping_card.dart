import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';

class TopingCard extends StatelessWidget {
  final String image;
  final void Function()? onPressed;
  final List<String> categorys;
  final String title;
  const TopingCard({
    super.key,
    required this.categorys,
    required this.image,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5.0.r),
            height: 100,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.white,
            ),
            child: Image.asset(image, fit: BoxFit.contain),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0.r, right: 0),
            child: Row(
              children: [
                Text(
                  title,
                  style: AppTextStyles.mRegular.copyWith(color: Colors.white),
                ),
                Gap(15),
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.add_circle,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
