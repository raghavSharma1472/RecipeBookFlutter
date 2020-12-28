import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recipe_book_flutter/screens/product/products_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//  @override
//  void initState() {
//    super.initState();
//    Timer(
//        Duration(milliseconds: 2000),
//            () => Navigator.pushReplacement(context,
//            MaterialPageRoute(builder: (context) => ProductsScreen())));
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
                height: 80.0,
                width: 80.0,
                child: Image.asset('assets/icon.png')),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Recipe Book',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}