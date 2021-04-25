import 'package:flutter/material.dart';
import 'package:contador/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var contadorPage = ContadorPage();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: contadorPage,
        ));
  }
}
