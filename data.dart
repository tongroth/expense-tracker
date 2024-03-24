import 'package:flutter/material.dart';

class Category {
  final String title;
  final IconData icon;
  final String amount;

  Category({required this.title, required this.icon, required this.amount});
}

class ExpansesCategory {
  static List categories = [
    {'icon': Icons.fastfood, 'label': 'Food'},
    {'icon': Icons.local_drink, 'label': 'Drinks'},
    {'icon': Icons.movie, 'label': 'Entertain'},
    {'icon': Icons.school, 'label': 'Education'},
    {'icon': Icons.directions_car, 'label': 'Transport'},
    {'icon': Icons.shopping_cart, 'label': 'Shopping'},
    {'icon': Icons.home, 'label': 'Housing'},
    {'icon': Icons.healing, 'label': 'Healthcare'},
    {'icon': Icons.fitness_center, 'label': 'Fitness'},
    {'icon': Icons.pets, 'label': 'Pets'},
    {'icon': Icons.more_horiz, 'label': 'Other'},
    // You can add more categories as needed
  ];
}

class Shadow {
  static List<BoxShadow> shadow = [
    BoxShadow(
      color: Colors.grey.shade500,
      offset: Offset(4.0, 4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(-4.0, -4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0,
    ),
  ];
}
