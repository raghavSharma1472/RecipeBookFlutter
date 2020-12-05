import 'package:flutter/material.dart';
import 'package:recipe_book_flutter/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      home: SplashScreen(),
    );
  }
}
