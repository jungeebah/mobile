import 'package:flutter/material.dart';
import 'package:hernucha/components/general/navbar.dart';
import 'package:hernucha/individual_page/homepage/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent[200],
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            new NavBar("Hernucha"),
            new HomePage(),
          ],
        ),
      ),
    );
  }
}
