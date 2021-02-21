import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      margin: EdgeInsets.only(top: 60),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Image.asset(
        "images/mesa.jpg",
        fit: BoxFit.fitWidth,
      ),
    ),
  ));
}