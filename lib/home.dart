import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text('Recipe Book'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    final body = Center(
      child: Text('Welcome to the Recipe Book'),
    );

    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
