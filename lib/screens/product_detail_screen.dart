import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  /*final String _title;
  final double _price;*/

  //ProductDetailScreen(this._title, this._price);

  static const routeName = "/product-detail";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("this._title"),
      ),
    );
  }
}
