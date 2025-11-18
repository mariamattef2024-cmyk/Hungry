import 'package:flutter/material.dart';
import 'package:hungry/core/screens/not_found.dart';
import 'package:hungry/features/home/presentation/views/home_screen.dart';
import 'package:hungry/features/home/presentation/views/product_details_screen.dart';
import 'package:hungry/root.dart';
import 'package:hungry/splash.dart';

class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    Root.routeName: (context) => const Root(),
    Splash.routeName: (context) => const Splash(),
    HomeScreen.routeName: (context) => const HomeScreen(),
    ProductDetailsScreen.routeName: (context) => const ProductDetailsScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final builder = routes[settings.name];
    if (builder != null) {
      return MaterialPageRoute(builder: builder);
    }
    return MaterialPageRoute(builder: (context) => const NotFound());
  }
}

