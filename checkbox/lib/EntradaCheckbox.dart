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
            Text("Comida Brasileira:"),
            Checkbox(
                value: _statusComidaBrasileira, //checkbox inicia com um valor booleano, e repassa esse booleano na função onchanged
                onChanged: (bool valor){
                  setState(() {
                    _statusComidaBrasileira = valor;
                    _statusComidaMexicana = !valor;
                  });
                }
            ),
            Text("Comida Mexicana:"),
            Checkbox(
                value: _statusComidaMexicana,
                onChanged: (bool valor){
                  setState(() {
                    _statusComidaMexicana = valor;
                    _statusComidaBrasileira = !valor;
                  });
                },
            ),
          ],
        ),
      ),
    );
  }
}
