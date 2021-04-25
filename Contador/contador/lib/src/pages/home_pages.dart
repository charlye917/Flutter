import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = TextStyle(fontSize: 25);
  final conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi First App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clicks',
              style: estiloTexto,
            ),
            Text(
              '$conteo',
              style: estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola');
          //conteo += 1;
        },
      ),
    );
  }
}
