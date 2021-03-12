import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _statusComidaBrasileira = false;
  bool _statusComidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo!"),
                activeColor: Colors.pink,
                secondary: Icon(Icons.watch_later),
                value: _statusComidaBrasileira,
                onChanged: (bool valor){
                  setState(() {
                    _statusComidaBrasileira = valor;
                    _statusComidaMexicana = !valor;
                  });
                },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("Não é a melhor comida do mundo."),
              activeColor: Colors.pink,
              secondary: Icon(Icons.watch_later),
              value: _statusComidaMexicana,
              onChanged: (bool valor){
                setState(() {
                  _statusComidaMexicana = valor;
                  _statusComidaBrasileira = !valor;
                });
              },
            ),
            RaisedButton(
              color: Colors.pinkAccent,
              textColor: Colors.white,
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
                onPressed: (){
                  print("Comida Brasileira: ${_statusComidaBrasileira} - "
                      "Comida Mexicana: ${_statusComidaMexicana}");
                },
            ),
          ],
        ),
      ),
    );
  }
}
