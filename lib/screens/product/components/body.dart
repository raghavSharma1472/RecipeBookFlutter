import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book_flutter/components/search_box.dart';
import 'package:recipe_book_flutter/constants.dart';
import 'package:recipe_book_flutter/models/product.dart';
import 'package:recipe_book_flutter/screens/details/details_screen.dart';
import 'package:recipe_book_flutter/waiting_page.dart';
import 'category_list.dart';
import 'product_card.dart';




String dishName;

class Body extends StatefulWidget {


  @override
  _BodyState createState() => _BodyState();
}



class _BodyState extends State<Body> {





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) async {
                setState(() {
                  dishName=value;
                });
          },onEditingComplete: (){
              if(dishName.isNotEmpty){
                Navigator.push(context, MaterialPageRoute(builder: (c){
                  return WaitingPage(dishName);
                }));
              }
          },),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
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
                  // here we use our demo products list
                  itemCount:10,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product:products[index],
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
    );
  }
}
