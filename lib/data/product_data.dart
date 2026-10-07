import '../models/product.dart';

const List<String> categories = [
  'Electronics',
  'Fashion',
  'Shoes',
  'Beauty',
  'Home',
];

const List<Map<String, String>> banners = [
  {
    'title': 'Big Electronics Sale',
    'subtitle': 'Up to 30% off selected gadgets',
    'image':
    'https://images.unsplash.com/photo-1468495244123-6c6c332eeece?auto=format&fit=crop&w=1200&q=80',
  },
  {
    'title': 'Fresh Fashion Picks',
    'subtitle': 'New styles for your everyday look',
    'image':
    'https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=1200&q=80',
  },
  {
    'title': 'Home Essentials',
    'subtitle': 'Simple products for a better home',
    'image':
    'https://images.unsplash.com/photo-1556228720-195a672e8a03?auto=format&fit=crop&w=1200&q=80',
  },
];

const List<Product> products = [
  Product(
    name: 'Wireless Headphones',
    category: 'Electronics',
    image:
    'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=80',
    price: 3500,
    rating: 4.5,
    description: 'Comfortable wireless headphones with clear sound.',
  ),
  Product(
    name: 'Smart Watch',
    category: 'Electronics',
    image:
    'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=80',
    price: 5200,
    rating: 4.4,
    description: 'A modern smart watch for everyday use.',
  ),
  Product(
    name: 'Laptop',
    category: 'Electronics',
    image:
    'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=800&q=80',
    price: 85000,
    rating: 4.7,
    description: 'A laptop suitable for study and office work.',
  ),
  Product(
    name: 'Classic T-Shirt',
    category: 'Fashion',
    image:
    'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=800&q=80',
    price: 1200,
    rating: 4.3,
    description: 'A comfortable everyday T-shirt.',
  ),
  Product(
    name: 'Denim Jacket',
    category: 'Fashion',
    image:
    'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=800&q=80',
    price: 3200,
    rating: 4.5,
    description: 'A classic denim jacket.',
  ),
  Product(
    name: 'Running Sneakers',
    category: 'Shoes',
    image:
    'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80',
    price: 4500,
    rating: 4.6,
    description: 'Lightweight sneakers for everyday movement.',
  ),
  Product(
    name: 'Sunglasses',
    category: 'Fashion',
    image:
    'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=800&q=80',
    price: 1800,
    rating: 4.2,
    description: 'Modern sunglasses for outdoor use.',
  ),
  Product(
    name: 'Face Care Set',
    category: 'Beauty',
    image:
    'https://images.unsplash.com/photo-1556228578-8c89e6adf883?auto=format&fit=crop&w=800&q=80',
    price: 2400,
    rating: 4.4,
    description: 'A basic personal-care set.',
  ),
  Product(
    name: 'Desk Lamp',
    category: 'Home',
    image:
    'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=800&q=80',
    price: 2100,
    rating: 4.5,
    description: 'A compact desk lamp for study and work.',
  ),
  Product(
    name: 'Backpack',
    category: 'Fashion',
    image:
    'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=80',
    price: 2800,
    rating: 4.6,
    description: 'A practical backpack for everyday use.',
  ),
];