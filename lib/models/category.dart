import 'package:flutter/material.dart';
//construtor de categorias 
class Category {
  final String id;
  final String title;
  final Color color;
  final String imageUrl;

  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
    required this.imageUrl,
  });
}
