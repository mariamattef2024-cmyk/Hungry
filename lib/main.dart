import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/features/home/presentation/views/home_screen.dart';
import 'package:smart_appbar/demo_smart_appbar.dart' hide HomeScreen;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
     
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
