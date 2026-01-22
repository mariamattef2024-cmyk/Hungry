import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/widgets/app_bar_widget.dart';
import 'package:hungry/features/card/presentation/widgets/success_dialog.dart';
import 'package:hungry/features/checkout/presentation/widgets/custom_bottom_sheet.dart';
import 'package:hungry/features/checkout/presentation/widgets/order_details_widget.dart';
import 'package:hungry/features/home/presentation/widgets/total_widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});
  static const String routeName = '/checkout-screen';

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String selectedMethod = 'cash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: AppBarWidget()),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: SingleChildScrollView(
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
                onTap: () => setState(() => selectedMethod = 'cash'),
                contentPadding: EdgeInsets.symmetric(vertical: 10.r),
                iconColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),

                tileColor: Theme.of(context).colorScheme.primary,
                title: Text(
                  'Cash on Delivery',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Radio<String>(
                  // fillColor: WidgetStateProperty.all(Colors.black),
                  activeColor: Theme.of(context).colorScheme.onPrimary,
                  value: 'cash',
                  groupValue: selectedMethod,
                  onChanged: (v) => setState(() => selectedMethod = v!),
                ),
                leading: Image.asset(
                  'assets/images/dollar Background Removed 1.png',
                ),
              ),
              Gap(30.r),
              ListTile(
                onTap: () => setState(() => selectedMethod = 'visa'),
                contentPadding: EdgeInsets.symmetric(vertical: 5.r),
                iconColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),

                tileColor: Colors.blue.shade900,
                title: Text(
                  'Debit card ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  '**** ***** 1234 ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Radio<String>(
                  activeColor: Theme.of(context).colorScheme.onPrimary,
                  // fillColor: WidgetStateProperty.all(Colors.black),
                  value: 'visa',
                  groupValue: selectedMethod,
                  onChanged: (v) => setState(() => selectedMethod = v!),
                ),
                leading: Image.asset('assets/images/visa1.png'),
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (v) {}),

                  Text(
                    'Save card details for future payments',
                    style: AppTextStyles.headingStyle16.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: CostomBottomSheet(),
    );
  }
}

// CG-U6bTmeXyaQfXQdV5zCWkh2mg    My APIKey
