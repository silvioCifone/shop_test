import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String _id;
  final String _title;
  final String _imageUrl;

  ProductItem(this._id, this._title, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        this._imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black38,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        title: Text(
          this._title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
    );
  }
}