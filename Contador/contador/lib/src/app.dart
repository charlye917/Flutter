import 'package:contador/src/pages/home_pages.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var homePage = HomePage;
    return MaterialApp(
        home: Center(
      child: HomePage(),
    ));
  }
}
