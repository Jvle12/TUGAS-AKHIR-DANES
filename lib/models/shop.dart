import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Air J0rdan High 2nd",
      price: 900.20,
      description:
          "Sepatu Legenda NBA Michael Jordan. Minus dibagian sol yang semakin tipis. Lokasi di Cianjur",
      imagePath: 'assets/jordin.jpg',
    ),
    Product(
      name: "N1ke Lebron 20",
      price: 1209.000,
      description:
          "Sepatu Basket N1ke Lebron 20, seri terbaru. Masih BNIB. Lokasi COD di Tangerang",
      imagePath: 'assets/Nike-Lebron-20-Pink-Release-Date.jpeg',
    ),
    Product(
      name: "Jersey 3rspo Indonesia 2023/2024",
      price: 599.99,
      description: "Jersey Indonesia 2023/2024 2nd. Lokasi di Tangerang",
      imagePath: 'assets/ERSPO,jpg',
    ),
    Product(
      name: "Honda Civic 2020",
      price: 999.99,
      description:
          "Honda Civiv 2020. Penggunaan Normal, DP 9 JUTA angsuran tipis-tipis. Lokasi di Cibaduyut",
      imagePath: 'assets/civic 2nd',
    ),
  ];

  List<Product> _cart = [];
  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
