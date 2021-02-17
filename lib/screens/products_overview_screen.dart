import 'package:flutter/material.dart';
import 'package:shop_test/widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BioRubino"),
      ),
      body: ProductsGrid(),
    );
  }
}
