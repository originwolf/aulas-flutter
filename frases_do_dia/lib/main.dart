import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() { //obrigatório para a aplicação
  runApp(MaterialApp( //necessária após main para ser o app, aqui vai o conteúdo
    //debugShowCheckedModeBanner: false, //ocultar faixa escrito debug
    title: "Frases do dia", //título como se fosse html
    home: Container(
      //color: Colors.white,
      //padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
      margin: EdgeInsets.fromLTRB(30, 50, 30, 30),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Column(
        children: <Widget>[
          Text("T1"),

          Padding(
              padding: EdgeInsets.all(30),
              child: Text("T2"),
          ),

          Text("T3")
          /*Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed vestibulum est. Nulla dapibus neque erat",
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              decoration: TextDecoration.none
            ),
          )*/
        ], //children: pode conter vários itens
      ), //child = pode conter apenas um item (column/row);
    ),
  ));
}