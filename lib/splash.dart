import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4E3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: SvgPicture.asset(
              'assets/svg/Hungry_.svg',
              colorFilter: ColorFilter.mode(Color(0xFFC85B2E), BlendMode.srcIn),
            ),
          ),
          Spacer(),
          Image.asset("assets/images/image 1.png"),
        ],
      ),
    );
  }
}
// F8F4E3  خلفية
// 4A3C32  نصوص وايقونات
// 0xFF08431D
// A5A666  ازرار ثانوية
// C85B2E  لون مميز رئيسي 