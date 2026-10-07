import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyShopApp());
}

class MyShopApp extends StatelessWidget {
  const MyShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF7F7FB),
      ),
      home: const HomePage(),
    );
  }
}