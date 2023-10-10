import 'package:flutter/material.dart';
import 'package:shoppingcart_app/pages/shopping_cart_page.dart';
import 'package:shoppingcart_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}
