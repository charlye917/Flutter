import 'package:flutter/material.dart';

//StatelessWidget no cambian sus parametros
class HomePage extends StatelessWidget {
  final estiloTexto = TextStyle(fontSize: 25.0);
  final conteo = 10;

  //El metodo build es usado cuado usamos redibujar el widget
  @override
  Widget build(BuildContext context) {
    //Scaffold: Encargado de cubrir toda la pantalla
    return Scaffold(
        appBar:
            AppBar(title: Text('Titulo'), centerTitle: true, elevation: 10.0),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                'Numero de clicks',
                style: estiloTexto,
              ),
              Text(
                '$conteo',
                style: estiloTexto,
              )
            ])),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              print('Hola mundo');
            }));
  }
}
