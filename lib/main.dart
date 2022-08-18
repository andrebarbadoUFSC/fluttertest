import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatefulWidget {
  MyApp2({Key? key}) : super(key: key);
  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    //tira o debug banner
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp2Ext()
    );
  }
}


class Myapp2Ext extends StatefulWidget {
  Myapp2Ext({super.key});
  @override
  State<Myapp2Ext> createState() => _Myapp2ExtState();
}

class _Myapp2ExtState extends State<Myapp2Ext> {
  
  String buttonname = 'Click';
  int indexAtual = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // scaffold eh a parte principal do app a pag principal
        appBar: AppBar(
          // criei barra de cima
          title: const Text('FigurIt'),
        ),
        body: Center(
          //se o index atual for 0 ele ativa o container
          child: indexAtual == 0 ? Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromARGB(255, 26, 136, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.orange,
                  ),
                  onPressed: () {
                    //avisa o flutter q mudo algo
                    setState(() {
                      buttonname = 'Clicked';
                    });
                  },
                  child: Text(buttonname),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => 
                        const NextPage(),
                      ),
                    );
                  },
                  child: const Text('Next page'),
                ),
              ],
            ),
          )
        : Image.asset(
          'images/imagetest.jpg'
          ),
        ), // mandandi para o meio, botao direito -> refactor

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            )
          ],
          currentIndex: indexAtual,
          onTap: (int index){
            setState(() {
              indexAtual = index;
            });
          },
        ),
      );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}