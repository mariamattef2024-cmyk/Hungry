import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/widgets/custom_elevation_button.dart';
import 'package:hungry/features/home/presentation/widgets/spicy_slider.dart';
import 'package:hungry/features/home/presentation/widgets/topings_list.dart';
import 'package:hungry/features/home/presentation/widgets/total_widget.dart' show TotalWidget;

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
              TotalWidget(child: Text('Add to cart')),
              Gap(30.r),
            ],
          ),
        ),
      ),
    );
  }
}

