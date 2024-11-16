import 'package:collage_lecture7/product.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        children: [
          Image.asset(
              width: double.infinity, product.imagePath, fit: BoxFit.fill),
          const SizedBox(height: 24),
          Text(product.name, style: const TextStyle(fontSize: 28)),
          Text("${product.price} \$", style: const TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}
