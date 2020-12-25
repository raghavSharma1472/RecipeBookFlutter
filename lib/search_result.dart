import 'package:flutter/material.dart';
import 'package:recipe_book_flutter/constants.dart';
import 'screens/product/components/category_list.dart';
import 'screens/product/components/product_card.dart';
import 'screens/details/details_screen.dart';

class SearchResult extends StatelessWidget {

  final products;

  SearchResult (this.products);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF000000),
        elevation: 0,
        centerTitle: false,
        title: Text('Result'),
      ),
      backgroundColor: custom_grey,
      body:SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            CategoryList(),
            SizedBox(height: kDefaultPadding / 2),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: custom_white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) => ProductCard(
                      itemIndex: index,
                      product: products[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
