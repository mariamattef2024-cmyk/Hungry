import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/widgets/logo_widget.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            LogoWidget(),
            Gap(10),
            Text(
              'Hello, Marioma!',
              style: AppTextStyles.lMedium.copyWith(color: Color(0xff6A6A6A)),
            ),
          ],
        ),

        Spacer(),
        CircleAvatar(
          radius: 25.r,
          child: Icon(Icons.person, size: 30.r),
        ),
      ],
    );
  }
}
