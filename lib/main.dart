import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Vamos Cozinhar?',
      theme: ThemeData( //configuração da AppBar
        appBarTheme:  const AppBarTheme(
          foregroundColor: Colors.amber,
          color: Colors.pink,
          centerTitle: true,),
        canvasColor: const Color.fromARGB(255, 29, 28, 1), //para a tela não ficar tão branco 
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      home: const CategoriesScreen(), //importando as categorias 
    );
  }
}
