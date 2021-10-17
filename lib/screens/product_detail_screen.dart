import 'package:flutter/material.dart';
import '../providers/all_products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!
    // ...

    final product = Provider.of<Products>(context)
        .findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              product.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            height: 16,
          ),

          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "\$${product.price}",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),

          SizedBox(
            height: 16,
          ),

          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              product.description,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
