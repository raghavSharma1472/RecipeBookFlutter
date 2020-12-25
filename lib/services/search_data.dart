import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_book_flutter/models/product.dart';
import 'networking.dart';
import 'package:recipe_book_flutter/search_result.dart';

const url = 'https://food2fork.ca/api/recipe/search/?page=2&query=';

class SearchData extends StatefulWidget {
  final dishName;
  SearchData(this.dishName);

  @override
  _SearchDataState createState() => _SearchDataState();
}

class _SearchDataState extends State<SearchData> {
  void getData() async {
    var productList = await funForSearchData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (c) => SearchResult(productList),
      ),
    );
  }

  Future<List<Product>> funForSearchData() async {
    Networking networking = Networking(url + widget.dishName);
    var jasonData = await networking.getData();
    print(jasonData['results'][0]['title']);
    List<Product> list = List<Product>();
    for (int i = 0; i < 30; i++) {
      Product product = Product(
        id: i,
        title: jasonData['results'][i]['title'],
        image: jasonData['results'][i]['featured_image'],
        description: jasonData['results'][i]['ingredients'],
      );
      list.add(product);
    }
    return list;
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
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'WAIT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 84.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
