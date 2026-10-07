import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../widgets/banner_card.dart';
import '../widgets/category_item.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MyShop',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Cart will be added later.'),
                ),
              );
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 15),

            // Banners
            SizedBox(
              height: 200,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                scrollDirection: Axis.horizontal,
                itemCount: banners.length,
                itemBuilder: (context, index) {
                  final banner = banners[index];

                  return BannerCard(
                    title: banner['title']!,
                    subtitle: banner['subtitle']!,
                    image: banner['image']!,
                  );
                },
              ),
            ),

            const SizedBox(height: 25),

            // Categories
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              height: 100,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];

                  return CategoryItem(
                    category: category,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$category selected'),
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Products
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Popular Products',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: GridView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.68,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: products[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}