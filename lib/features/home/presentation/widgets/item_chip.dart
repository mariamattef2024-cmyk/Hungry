import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';

class ItemChip extends StatelessWidget {
  const ItemChip({
    super.key,
    required this.categorys,
    required this.selectedIndex,
    required this.index,
    this.onTap,
  });

  final List<String> categorys;
  final int selectedIndex;
  final int index;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Chip(
        backgroundColor: selectedIndex == index
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).cardTheme.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        label: Text(
          categorys[index],
          style: selectedIndex == index
              ? AppTextStyles.mSemiBold.copyWith(color: Colors.white)
              : AppTextStyles.mRegular.copyWith(color: Color(0xFF7D7D7D)),
        ),
      ),
    );
  }
}
