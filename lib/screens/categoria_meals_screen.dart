import 'package:flutter/material.dart';
// criando a página em branco
class CategoriaMealsScreen extends StatelessWidget {
  const CategoriaMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: const Center(
        child:  Text('Receita por categoria'),
      ),
    );
  }
}
