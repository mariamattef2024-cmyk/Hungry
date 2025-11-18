import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/features/home/presentation/widgets/toping_card.dart';

class TopingsList extends StatelessWidget {
  final Function()? onPressed;
  const TopingsList({super.key, required this.categorys, this.onPressed});

  final List<String> categorys;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categorys.length, (index) {
          return Padding(
            padding: EdgeInsets.all(5.0.r),
            child: TopingCard(
              categorys: categorys,
              image: 'assets/images/pngwing 15.png',
              title: categorys[index],
              onPressed: onPressed,
            ),
          );
        }),
      ),
    );
  }
}
