import 'package:collage_lecture7/product.dart';
import 'package:collage_lecture7/product_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ProductScreen(product: product);
              },
            ));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  product.imagePath,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 24),
              Text(product.name, style: const TextStyle(fontSize: 28)),
              Text("${product.price} \$", style: const TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
