import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) :super(key: key);

  @override 
  Widget build(BuildContext context) {                      //tira o debug banner
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(                                       // scaffold eh a parte principal do app a pag principal
        appBar: AppBar(                                     // criei barra de cima 
          title: const Text('FigurIt'),
        ),                                                 
        body: const Text('body'),

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)
              ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
              )
          ],
        ),
      ),
    );
  } 
}