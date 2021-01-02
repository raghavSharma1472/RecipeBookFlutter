import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe_book_flutter/screens/product/products_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 3000),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ProductsScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Lottie.asset('assets/cooking.json')),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'RECIPE BOOK',
            style: TextStyle(
              fontSize: 56.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}