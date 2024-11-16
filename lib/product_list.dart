import 'package:collage_lecture7/product.dart';
import 'package:collage_lecture7/product_card.dart';
import 'package:flutter/cupertino.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ProductCard(product: products[index]));
  }
}
