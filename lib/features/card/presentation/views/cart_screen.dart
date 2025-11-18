import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  int number = 1;
  void onAdd() {
    number++;
    setState(() {});
  }

  void onRemove() {
    number == 0;
    setState(() {});
  }

  void onMinus() {
    if (number < 1) return;
    number--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 20.0.r, left: 20.r, bottom: 10.r),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return CartItem(
                    image: 'assets/images/image 1.png',
                    title: "Hamburger",
                    subTitle: 'Veggie Burger',
                    onAdd: onAdd,
                    onRemove: onRemove,
                    onMinus: onMinus,
                    number: number,
                  );
                },
              ),
            ),

            TotalWidget(child: Text('Checkout')),
          ],
        ),
      ),
    );
  }
}
