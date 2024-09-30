import 'package:flutter/material.dart';

class Products {
  final int id;
  final String name;
  final double price;
  final Color color;

  Products(
      {required this.id,
      required this.name,
      required this.price,
      required this.color});
}

final List<Products> PRODUCTS = [
  Products(id: 0, name: "Laptop", price: 999, color:Colors.amber),
  Products(id: 1, name: "Keyboard", price: 599, color:Colors.green),
  Products(id: 2, name: "Mounse", price: 115, color:Colors.red),
  Products(id: 3, name: "Monitor", price: 12000, color:Colors.blue),
  Products(id: 4, name: "RAM", price: 2000, color:Colors.lime),
];
