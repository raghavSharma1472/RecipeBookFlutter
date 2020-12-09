import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    Key key,
  }) : super(key: key);

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
          onPressed: () {},
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
