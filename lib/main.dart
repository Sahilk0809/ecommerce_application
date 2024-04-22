import 'package:ecommerce_application/checkOutScreen/check_out.dart';
import 'package:ecommerce_application/screens/cartScreen/cart.dart';
import 'package:ecommerce_application/screens/detailScreen/detail_screen.dart';
import 'package:ecommerce_application/screens/homeScreen/homeScreen.dart';
import 'package:ecommerce_application/screens/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/check',
      routes: {
        '/': (context) => SplashScreen(),
        '/home':(context) => HomeScreen(),
        '/detail' : (context) => DetailScreen(),
        '/cart' : (context) => CartScreen(),
        '/check': (context) => CheckOutScreen(),
      },

    );
  }
}
