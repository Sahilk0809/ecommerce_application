import 'dart:async';
import 'package:ecommerce_application/home/component/colors/color.dart';
import 'package:flutter/material.dart';

import '../homeScreen/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 832,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colorBlack1,
                    colorBlack2,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Container(
                height: 400,
                width: 400,
                child: Image.asset('assets/mobileImg/logo1.png', fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
