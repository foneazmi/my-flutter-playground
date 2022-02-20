import 'package:flutter/material.dart';
import 'package:hello/ui/screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const DashboardScreen(),
        /////
        '/cart': (context) => const CartScreen(),
        '/wishlist': (context) => const WishlistScreen(),
      },
    );
  }
}
