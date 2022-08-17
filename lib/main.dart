import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) :super(key: key);

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(                                       // scaffold eh a parte principal do app a pag principal
        appBar: AppBar(
          title: Text('FigurItaas'),
        ),                                   // criei barra de cima 
      ),
    );
  } 

}