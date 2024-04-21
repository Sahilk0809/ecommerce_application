import 'package:flutter/material.dart';
import 'cart.dart';
import 'detail_screen.dart';
import 'homeScreen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         initialRoute: '/cart',
      routes: {
         '/':(context) => HomeScreen(),
         '/detail' : (context) => DetailScreen(),
        '/cart' : (context) => CartScreen(),
       },
    );
  }
}