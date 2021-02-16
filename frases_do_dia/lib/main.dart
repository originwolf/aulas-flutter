import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() { //obrigatório para a aplicação
  runApp(MaterialApp( //necessária após main para ser o app, aqui vai o conteúdo
    title: "Frases do dia", //título como se fosse html
    home: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          FlatButton(
              onPressed: (){
                print("Botão pressionado");
              },
              child: Text(
                  "Clique aqui",
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 20
                ),
              )
          )
        ], //children: pode conter vários itens
      ), //child = pode conter apenas um item (column/row);
    ),
  ));
}