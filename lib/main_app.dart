import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/config/theme/cubit/theme_cubit.dart';
import 'package:hungry/core/config/theme/utils/theme_mapper.dart';
import 'package:hungry/splash.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => ThemeCubit())],
          child: BlocBuilder<ThemeCubit, AppTheme>(
            builder: (context, state) {
              return MaterialApp(
                theme: state.theme,
                debugShowCheckedModeBanner: false,
                home: child,
              );
            },
          ),
        );
      },
      child: Splash(),
    );
  }
}
