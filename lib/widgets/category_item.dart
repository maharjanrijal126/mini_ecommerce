import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String category;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.category,
    required this.onTap,
  });

  IconData get icon {
    switch (category) {
      case 'Electronics':
        return Icons.devices_outlined;
      case 'Fashion':
        return Icons.checkroom_outlined;
      case 'Shoes':
        return Icons.directions_run_outlined;
      case 'Beauty':
        return Icons.spa_outlined;
      case 'Home':
        return Icons.home_outlined;
      default:
        return Icons.category_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 82,
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(
              height: 62,
              width: 62,
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.indigo,
                size: 29,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              category,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}