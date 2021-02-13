import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() { //obrigatório para a aplicação
  runApp(MaterialApp( //necessária após main para ser o app, aqui vai o conteúdo
    title: "Frases do dia", //título como se fosse html
    home: Row(children: <Widget>[
      Text("T1"),
      Text(" T2"),
      Text(" T3")
    ],), //faça a inserção com children
    //home: Container(color: Colors.white,), // container como no bootstrap
  ));
}