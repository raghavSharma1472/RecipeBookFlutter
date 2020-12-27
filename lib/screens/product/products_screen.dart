import 'package:flutter/material.dart';
import "package:flutter_svg/svg.dart";
import 'package:recipe_book_flutter/constants.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: custom_grey,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF000000),
      elevation: 0,
      centerTitle: false,
      title: Text('Recipe Book'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
