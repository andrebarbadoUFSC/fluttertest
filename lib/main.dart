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
  // criar uma variavel
  String buttonname = 'Click';
  int indexAtual = 0;


  @override
  Widget build(BuildContext context) {
    //tira o debug banner
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            color: Color.fromARGB(255, 26, 136, 16),
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
                    //avisa o flutter q mudo algo
                    setState(() {
                      buttonname = 'Clicked';
                    });
                  },
                  child: Text(buttonname),
                ),
              ],
            ),
          )
        : Image.network(
          'https://s2.glbimg.com/XyUa9fSiGGOOz269tQqVJhs7rL4=/0x0:550x638/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_f035dd6fd91c438fa04ab718d608bbaa/internal_photos/bs/2022/F/O/pQRBBKStecsmgbgEh0dA/capa-album-copa.jpg'),
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
      ),
    );
  }
}
