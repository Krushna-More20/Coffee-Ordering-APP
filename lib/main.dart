import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/splash_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/home_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/customize_drink_screen.dart';
import 'screens/cafe_selection_screen.dart';
import 'screens/cafe_map_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/delivery_method_screen.dart';
import 'screens/payment_screen.dart';
import 'screens/order_review_screen.dart';
import 'screens/order_confirmation_screen.dart';
import 'screens/order_status_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const CupfulCanvasApp());
}

class CupfulCanvasApp extends StatelessWidget {
  const CupfulCanvasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CupfulCanvas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF220C02),
        scaffoldBackgroundColor: const Color(0xFFE3C9AD),
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/signin', page: () => SignInScreen()),
        GetPage(name: '/signup', page: () => SignUpScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/menu', page: () => MenuScreen()),
        GetPage(name: '/product-detail', page: () => ProductDetailScreen()),
        GetPage(name: '/customize', page: () => CustomizeDrinkScreen()),
        GetPage(name: '/cafe-selection', page: () => CafeSelectionScreen()),
        GetPage(name: '/cafe-map', page: () => CafeMapScreen()),
        GetPage(name: '/cart', page: () => CartScreen()),
        GetPage(name: '/delivery-method', page: () => DeliveryMethodScreen()),
        GetPage(name: '/payment', page: () => PaymentScreen()),
        GetPage(name: '/order-review', page: () => OrderReviewScreen()),
        GetPage(name: '/order-confirmation', page: () => OrderConfirmationScreen()),
        GetPage(name: '/order-status', page: () => OrderStatusScreen()),
        GetPage(name: '/profile', page: () => ProfileScreen()),
      ],
    );
  }
}