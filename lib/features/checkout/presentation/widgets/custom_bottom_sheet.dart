import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/features/card/presentation/widgets/success_dialog.dart';
import 'package:hungry/features/home/presentation/widgets/total_widget.dart';

class CostomBottomSheet extends StatelessWidget {
  const CostomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 15.r),
      height: 120.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            blurRadius: 10.r,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: TotalWidget(
        total: 'Total Price',
        child: Text('Pay Now'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(child: SuccessDialog());
            },
          );
        },
      ),
    );
  }
}
