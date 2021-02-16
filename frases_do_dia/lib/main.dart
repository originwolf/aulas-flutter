import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() { //obrigatório para a aplicação
  runApp(MaterialApp( //necessária após main para ser o app, aqui vai o conteúdo
    title: "Frases do dia", //título como se fosse html
    home: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
              "Lorem ipsum ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.normal,
              letterSpacing: 0,
              wordSpacing: 0,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Colors.purple
            ),
          )
        ], //children: pode conter vários itens
      ), //child = pode conter apenas um item (column/row);
    ),
  ));
}