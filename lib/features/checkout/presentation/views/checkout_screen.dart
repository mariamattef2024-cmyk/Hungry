import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/widgets/app_bar_widget.dart';
import 'package:hungry/features/checkout/presentation/widgets/order_details_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  static const String routeName = '/checkout-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: AppBarWidget()),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order summary', style: AppTextStyles.xlSemiBold),
            Gap(20.r),
            OrderDetailsWidget(
              order: '\$16.48',
              taxes: '\$0.3',
              fees: '\$1.5',
              total: '\$18.19',
            ),
            Gap(40.r),
            Text('Payment methods', style: AppTextStyles.xlSemiBold),
            Gap(30.r),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 5.r),
              iconColor: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),

              tileColor: Theme.of(context).colorScheme.primary,
              title: Text(
                'Cash on Delivery',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Radio<String>(
                activeColor: Theme.of(context).colorScheme.onPrimary,
                value: 'value',
                groupValue: 'value',
                onChanged: (v) {},
              ),
              leading: Image.asset(
                'assets/images/dollar Background Removed 1.png',
              ),

              // SvgPicture.asset(
              //   'assets/svg/dollar Background Removed 1.svg',
              //   colorFilter: ColorFilter.mode(
              //     Theme.of(context).colorScheme.onPrimary,
              //     BlendMode.srcIn,
              //   ),
              // ),

              // Container(child: SvgPicture('assets/svg/dollar Background Removed 1.svg'),),
            ),
          ],
        ),
      ),
    );
  }
}

// CG-U6bTmeXyaQfXQdV5zCWkh2mg    My APIKey
