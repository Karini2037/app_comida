import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';
//import '../main.dart';
//toda tela é um componente
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vamos Cozinhar?'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25), //para os elementos não ficarem grudados
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent( //area que tem scroll na posição horizontal.
          maxCrossAxisExtent: 200, //largura
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        
        children: dummyCategories.map((cat) { //importando as categorias, dpois disso registrar o componente como sendo principal no main 
          return CategoryItem(cat);
        }).toList(),
      ),
    );
  }
}
