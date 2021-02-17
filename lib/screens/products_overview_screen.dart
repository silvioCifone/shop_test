import 'package:flutter/material.dart';
import 'package:shop_test/models/product.dart';
import 'package:shop_test/widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: "p1",
      title: "Red Shirt",
      description: "A red shirt - It is pretty red!",
      price: 29.99,
      imageUrl:
          "https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg",
    ),
    Product(
      id: "p2",
      title: "Trousers",
      description: "A nice pair of trousers.",
      price: 59.99,
      imageUrl:
          "https://assets.ajio.com/medias/sys_master/root/h08/h23/13583211724830/-473Wx593H-460438818-khaki-MODEL.jpg",
    ),
    Product(
      id: "p3",
      title: "Yellow Scarf",
      description: "Warm and cozy - Exactly what you need for the winter.",
      price: 19.99,
      imageUrl:
          "https://i.etsystatic.com/16173007/r/il/422a03/1664716452/il_570xN.1664716452_dkjx.jpg",
    ),
    Product(
      id: "p4",
      title: "A Pan",
      description: "Prepare any meal you want.",
      price: 49.99,
      imageUrl:
          "https://www.schneider-gmbh.com/assets/produktbilder/531076-9f4e44ef315e685e75f59a6a251843f05b28d46ce7e281a295a7e2e29a8577e3.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BioRubino"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (context, index) => ProductItem(loadedProducts[index].id,
            loadedProducts[index].title, loadedProducts[index].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
