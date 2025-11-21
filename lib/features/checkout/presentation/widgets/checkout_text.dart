import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutText extends StatelessWidget {
  const CheckoutText({
    super.key,
    required this.text,
    required this.price,
    this.isBold,
    this.isSmall,
  });
  final String text;
  final String price;
  final bool? isBold;
  final bool? isSmall;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: isSmall == true ? 14 : 18,
              fontWeight: isBold == true ? FontWeight.w600 : FontWeight.w400,
              color: isBold == true
                  ? Theme.of(context).textTheme.headlineMedium?.color
                  : Color(0xFF7D7D7D),
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: isSmall == true ? 14 : 18,
              fontWeight: isBold == true ? FontWeight.w600 : FontWeight.w400,
              color: isBold == true
                  ? Theme.of(context).textTheme.headlineMedium?.color
                  : Color(0xFF7D7D7D),
            ),
          ),
        ],
      ),
    );
  }
}
