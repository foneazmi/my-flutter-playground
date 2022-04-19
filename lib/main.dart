import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/ui/screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/home', page: () => const DashboardScreen()),
        GetPage(name: '/cart', page: () => const CartScreen()),
        GetPage(name: '/wishlist', page: () => const WishlistScreen()),
      ],
    );
  }
}
