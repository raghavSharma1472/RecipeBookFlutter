import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe_book_flutter/models/product.dart';
import 'package:recipe_book_flutter/screens/product/products_screen.dart';
import 'package:recipe_book_flutter/services/jsonToClassData.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     getData();
    Timer(
        Duration(milliseconds: 4000),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ProductsScreen())));
  }


  void getData ( )async{
    var productList = await SearchData().funForSearchData(' ');
      setState(() {
        products=productList;
      });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset('assets/cooking.json',fit: BoxFit.contain),
          ),
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
