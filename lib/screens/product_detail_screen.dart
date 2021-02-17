import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_test/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  /*final String _title;
  final double _price;*/

  //ProductDetailScreen(this._title, this._price);

  static const routeName = "/product-detail";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final selectedProduct =
        Provider.of<Products>(context).findProductById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedProduct.title),
      ),
    );
  }
}
