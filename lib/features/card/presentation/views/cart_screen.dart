import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/widgets/app_bar_widget.dart';
import 'package:hungry/features/card/presentation/widgets/cart_item.dart'
    show CartItem;
import 'package:hungry/features/home/presentation/widgets/total_widget.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = '/cart-screen';
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final int itemCount = 10;
  late List<int> quantaties;
  int number = 1;

  @override
  void initState() {
    super.initState();
    quantaties = List.generate(itemCount, (index) => 1);
  }

  void onAdd(int index) {
    quantaties[index]++;
    setState(() {});
  }

  void onMinus(int index) {
    if (quantaties[index] < 1) return;
    quantaties[index]--;
    setState(() {});
  }

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
                itemCount: itemCount,
                itemBuilder: (context, index) {
                  return CartItem(
                    image: 'assets/images/image 1.png',
                    title: "Hamburger",
                    subTitle: 'Veggie Burger',
                    onAdd: () => onAdd(index),
                    onRemove: () {},
                    onMinus: () => onMinus(index),
                    number: quantaties[index],
                  );
                },
              ),
            ),
          ],
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
          onPressed: () {
            Navigator.pushNamed(context, '/checkout-screen');
          },
          child: Text('Checkout', style: AppTextStyles.mMedium),
        ),
      ),
    );
  }
}
