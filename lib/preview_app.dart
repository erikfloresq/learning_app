import 'package:flutter/material.dart';
import 'bring_all_together.dart';

class PreviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PreviewApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Preview App'),
        ),
        body: Center(
          child: ShoppingList(
            products: [
              Product(name: 'Eggs'),
              Product(name: 'Flour'),
              Product(name: 'Chocolate chips'),
            ],
          ),
        ),
      ),
    );
  }
}
