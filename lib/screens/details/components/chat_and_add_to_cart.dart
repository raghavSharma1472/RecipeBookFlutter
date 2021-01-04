import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import 'package:recipe_book_flutter/saving/saving.dart';

import '../../../models/product.dart';
class ChatAndAddToCart extends StatefulWidget {
  const ChatAndAddToCart({
    Key key,
    this.product
  }) : super(key: key);

  final product;
  @override
  _ChatAndAddToCartState createState() => _ChatAndAddToCartState();
}

class _ChatAndAddToCartState extends State<ChatAndAddToCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: custom_black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: FlatButton.icon(
          onPressed: () async {
          Product v= await changing(widget.product);
          insertData(v);
          readData();
          },
          icon: SvgPicture.asset(
            "assets/icons/fast-food.svg",
            height: 18,
          ),
          label: Text(
            "Add to Menu",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
