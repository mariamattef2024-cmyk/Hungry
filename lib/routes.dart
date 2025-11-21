import 'package:flutter/material.dart';
import 'package:hungry/core/screens/not_found.dart';
import 'package:hungry/features/checkout/presentation/views/checkout_screen.dart';
import 'package:hungry/features/home/presentation/views/home_screen.dart';
import 'package:hungry/features/home/presentation/views/product_details_screen.dart';
import 'package:hungry/features/order_history/presentation/views/order_history.dart';
import 'package:hungry/features/test/presentation/views/buy_crypto_screen.dart';
import 'package:hungry/features/test/presentation/views/coin_details_screen.dart';
import 'package:hungry/features/test/presentation/views/home_test.dart';
import 'package:hungry/features/test/presentation/views/market_screen.dart';
import 'package:hungry/features/test/presentation/views/payment_method_screen.dart';
import 'package:hungry/root.dart';
import 'package:hungry/splash.dart';

class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    Root.routeName: (context) => const Root(),
    Splash.routeName: (context) => const Splash(),
    HomeScreen.routeName: (context) => const HomeScreen(),
    ProductDetailsScreen.routeName: (context) => const ProductDetailsScreen(),
    CheckoutScreen.routeName: (context) => const CheckoutScreen(),
    OrderHistory.routeName: (context) => const OrderHistory(),
    CryptoHomePage.routeName: (context) => const CryptoHomePage(),
    MarketScreen.routeName: (context) => const MarketScreen(),
    CoinDetailsScreen.routeName: (context) => const CoinDetailsScreen(),
    BuyCryptoScreen.routeName: (context) => const BuyCryptoScreen(),
    PaymentMethodScreen.routeName: (context) => const PaymentMethodScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final builder = routes[settings.name];
    if (builder != null) {
      return MaterialPageRoute(builder: builder);
    }
    return MaterialPageRoute(builder: (context) => const NotFound());
  }
}
