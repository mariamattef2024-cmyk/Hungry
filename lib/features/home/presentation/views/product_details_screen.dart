import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/features/home/presentation/widgets/spicy_slider.dart';
import 'package:hungry/features/home/presentation/widgets/topings_list.dart';
import 'package:hungry/features/home/presentation/widgets/total_widget.dart'
    show TotalWidget;

class ProductDetailsScreen extends StatefulWidget {
  static const String routeName = '/product-details-screen';
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  double value = 50;
  List<String> categorys = [
    'All',
    'Burger',
    'Pizza',
    'Dessert',
    'Drinks',
    'Salad',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpicySlider(
                value: value,
                onChanged: (v) {
                  value = v;
                  setState(() {});
                },
              ),
              Gap(30.r),
              Text('Toppings', style: AppTextStyles.headingStyle18Po),
              Gap(10.r),
              TopingsList(categorys: categorys),
              Gap(30.r),
              Text('Side options', style: AppTextStyles.headingStyle18Po),
              Gap(10.r),
              TopingsList(categorys: categorys),

              Gap(50.r),
              Gap(30.r),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
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
          total: 'Total',
          child: Text('Add to cart'),
          onPressed: () {},
        ),
      ),
    );
  }
}
