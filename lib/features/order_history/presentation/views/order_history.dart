import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/widgets/app_bar_widget.dart';
import 'package:hungry/core/widgets/custom_elevation_button.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});
  static const String routeName = '/order-history';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: AppBarWidget(), scrolledUnderElevation: 0),
      body: Padding(
        padding: EdgeInsets.only(right: 20.0.r, left: 20.r, bottom: 10.r),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.all(15.r),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/image 1.png',
                                    height: 80.h,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Hamburger",
                                    style: AppTextStyles.mMedium,
                                  ),
                                  Gap(5.r),
                                  Text(
                                    'Qty : 3x',
                                    style: AppTextStyles.sMedium,
                                  ),
                                  Gap(10.r),
                                  Text(
                                    'Price : 20 \$',
                                    style: AppTextStyles.sMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Gap(20.r),
                          //TODO the color gray in 3:30 minutes
                          CustomElevationButton(
                            padding: EdgeInsets.symmetric(
                              horizontal: 80.w,
                              vertical: 10.h,
                            ),
                            child: Text(
                              'Order Again',
                              style: AppTextStyles.mMedium,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
