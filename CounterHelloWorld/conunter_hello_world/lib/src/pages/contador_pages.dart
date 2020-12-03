import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

//Una clase StatefulWidget necesita de una clase que extienda de
class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    //Scaffold: Algo que cubre toda la pantalla
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
          elevation: 10.0,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                'Numero de clicks',
                style: _estiloTexto,
              ),
              Text(
                '$_conteo',
                style: _estiloTexto,
              )
            ])),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      //Nos permite ordenar o alinear internamente
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        //Caja transaparente que tiene un ancho
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _rest),
        //Abarca todo el ancho posible o flotante que tengamos en nuestro row
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _substraer),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
      ],
    );
  }

  void _add() {
    //Solo funciona dentro de los StatefulWidget
    setState(() => _conteo++);
  }

  void _substraer() {
    setState(() => _conteo--);
  }

  void _rest() {
    setState(() => _conteo = 0);
  }
}
