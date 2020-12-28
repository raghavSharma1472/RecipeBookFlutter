import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_book_flutter/search_result.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe_book_flutter/services/jsonToClassData.dart';

class WaitingPage extends StatefulWidget {
  final dishName;
  WaitingPage(this.dishName);

  @override
  _WaitingPageState createState() => _WaitingPageState();
}

class _WaitingPageState extends State<WaitingPage> {
  void getData() async {
    var productList = await SearchData().funForSearchData(widget.dishName);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (c) => SearchResult(productList),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Lottie.asset(
                  'assets/loading.json',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
