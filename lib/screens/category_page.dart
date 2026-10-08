import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../widgets/product_card.dart';
import 'product_details_page.dart';

class CategoryPage extends StatelessWidget {
  final String category;

  const CategoryPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final categoryProducts = products
        .where((product) => product.category == category)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),

      body: categoryProducts.isEmpty
          ? const Center(
        child: Text(
          'No products found.',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      )
          : GridView.builder(
        padding: const EdgeInsets.all(14),
        itemCount: categoryProducts.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          final product = categoryProducts[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProductDetailsPage(
                      product: product,
                    );
                  },
                ),
              );
            },
            child: ProductCard(
              product: product,
            ),
          );
        },
      ),
    );
  }
}