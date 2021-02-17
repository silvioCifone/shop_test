import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_test/providers/product.dart';
import 'package:shop_test/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  //final String _id;
  //final String _title;
  //final String _imageUrl;

  //ProductItem(this._id, this._title, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    final itemProduct = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: itemProduct.id,
          ),
          child: Image.network(
            itemProduct.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(itemProduct.isFavorite
                ? Icons.favorite
                : Icons.favorite_border),
            onPressed: () {
              itemProduct.onFavoriteStatusChange();
            },
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            itemProduct.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}

//8.15
