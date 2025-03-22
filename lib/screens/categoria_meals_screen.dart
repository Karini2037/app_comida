import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
// criando a página em branco
class CategoriaMealsScreen extends StatelessWidget {
  const CategoriaMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: Image.network('https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg'),
    );
  }
}
