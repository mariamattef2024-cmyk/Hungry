import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/checkout/presentation/widgets/checkout_text.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    super.key,
    required this.order,
    required this.taxes,
    required this.fees,
    required this.total,
  });
  final String order, taxes, fees, total;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckoutText(text: 'Order', price: order),
          Gap(20.r),
          CheckoutText(text: 'Taxes', price: taxes),
          Gap(20.r),
          CheckoutText(text: 'Delivery fees', price: fees),
          Gap(10.r),
          Divider(color: Color.fromARGB(255, 233, 229, 229)),
          Gap(10.r),
          CheckoutText(text: 'Total', price: total, isBold: true),
          Gap(20.r),
          CheckoutText(
            text: 'Estimated delivery time:',
            price: '15 - 30 mins',
            isBold: true,
            isSmall: true,
          ),
        ],
      ),
    );
  }
}
