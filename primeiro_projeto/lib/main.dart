import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frase do dia',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Frases do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _numeroAleatorio = 0;

  List _textoFrase = [
    'A pequena sereia é ruiva',
    'A pequena sereia é morena',
    'A pequena sereia é loira',
    'A pequena sereia é careca'
  ];

  //String _fraseUm = "A pequena sereia é ruiva";
  //String _fraseDois = "A pequena sereia é morena";
  //String _fraseTres = "A pequena sereia é loira";
  //String _fraseQuatro = "A pequena sereia é careca";
  //String _textoFrase = "";

  void _aleatoriza() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(4);



      /*switch (_numeroAleatorio){
        case 0: {
          _textoFrase = _fraseUm;
        }
        break;
        case 1: {
          _textoFrase = _fraseDois;
        }
        break;
        case 2: {
          _textoFrase = _fraseTres;
        }
        break;
        case 3: {
          _textoFrase = _fraseQuatro;
        }
        break;
        default: {
          _textoFrase = "Não tem pequena sereia hoje";
        }
        break;
      }*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressione o botão para gerar uma frase:',
            ),
            Text(
              _textoFrase[_numeroAleatorio],
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _aleatoriza,
        tooltip: 'Frase aleatória',
        child: Icon(Icons.wifi_protected_setup),
      ),
    );
  }
}
