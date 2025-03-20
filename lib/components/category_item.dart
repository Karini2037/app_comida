import 'package:flutter/material.dart';
import 'package:meals/screens/categoria_meals_screen.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

 // const CategoryItem(this.category, {Key? key})
     // : super(key: key); // a categoria recebendo a categoria (import)

     const CategoryItem(this.category);
     void _selectCategoria(BuildContext context){
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return CategoriaMealsScreen();
          }
        ),
        );
     }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategoria(context),
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(
            15), //para o texto de cada banner não ficar grudado.
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), //borda arredondada
          gradient: LinearGradient(
            colors: [
              category.color.withValues(
                  alpha: 0.5), //uma cor recebendo uma opacidade (1 cor)
              category.color, //segunda cor recebendo
            ],
            begin: Alignment.topLeft, //onde começa o gradiente
            end: Alignment.bottomRight, //onde termina o gradiente
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
