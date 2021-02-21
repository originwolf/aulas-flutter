import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//stateless = widgets que não podem ser alterados; (constante)
//stateful = widgets que podem ser alterados; (variável)

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _texto = "Instagram";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_texto),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            RaisedButton(
                onPressed: (){
                  setState(() {
                    _texto = "Facebook";
                  });
                },
              color: Colors.purple,
              textColor: Colors.white,
              child: Text("Facebook"),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _texto = "Instagram";
                });
              },
              color: Colors.purple,
              textColor: Colors.white,
              child: Text("Instagram"),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _texto = "WhatsApp";
                });
              },
              color: Colors.purple,
              textColor: Colors.white,
              child: Text("WhatsApp"),
            ),
          ],
        ),
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var _titulo = "Instagram";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Conteúdo principal"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.pinkAccent,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text("Texto 1"),
              Text("Texto 2"),
            ],
          ),
        ),
      ),
    );
  }
}
