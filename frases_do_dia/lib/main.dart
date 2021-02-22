import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    home: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text("Frases do Dia"),
            backgroundColor: Colors.green,
          ),
          Padding(
              padding: EdgeInsets.only(top: 55),
            child: Image.asset("images/logo.png"),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(16, 50, 16, 50),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sapien lorem, egestas et eros at, hendrerit elementum odio. Curabitur vulputate ante scelerisque arcu cursus cursus. Sed at eros rhoncus est faucibus pharetra. Fusce lacinia odio libero, sed hendrerit nisl accumsan facilisis. Pellentesque eu suscipit nisi. Aliquam in vestibulum mi.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          FlatButton(
              onPressed: (){
                print("Estou funcionando!");
              },
            color: Colors.lightGreen,
            textColor: Colors.white,
              child: Text("Nova frase"),
          )
        ],
      ),
    ),
  ));
}