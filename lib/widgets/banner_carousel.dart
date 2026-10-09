import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../data/product_data.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (banners.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: banners.length,
          itemBuilder: (context, index, realIndex) {
            final banner = banners[index];

            return Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Banner image
                    Image.network(
                      banner['image']!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.indigo,
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.image_not_supported_outlined,
                            size: 45,
                            color: Colors.white,
                          ),
                        );
                      },
                    ),

                    // Dark overlay for readable text
                    Container(
                      color: Colors.black.withValues(alpha: 0.42),
                    ),

                    // Banner title and subtitle
                    Positioned(
                      left: 20,
                      right: 20,
                      bottom: 22,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            banner['title']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            banner['subtitle']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 205,
            viewportFraction: 0.92,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlayAnimationDuration:
            const Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),

        const SizedBox(height: 12),

        // Page indicator dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            banners.length,
                (index) {
              final isSelected = index == _currentIndex;

              return AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 8,
                width: isSelected ? 22 : 8,
                decoration: BoxDecoration(
                  color: isSelected
                      ? Colors.indigo
                      : Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}