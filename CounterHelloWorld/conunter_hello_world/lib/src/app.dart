import 'package:conunter_hello_world/src/pages/contador_pages.dart';
//import 'package:conunter_hello_world/src/pages/home_page.dart';
import 'package:flutter/material.dart';

//StatelessWidges lo que hace es construir el MaterialApp
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        //para quitar el banner que indica que es modo depuracion
        debugShowCheckedModeBanner: false,
        home: Center(
          //child: HomePage(),
          child: ContadorPage(),
        ));
  }
}
