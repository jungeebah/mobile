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
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  ),
                ),
                backgroundColor: Colors.white,
                expandedHeight: 350.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: new NavBar('Hernucha'),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [new HomePage()],
                ),
              )
            ],
          ),
        ));
  }
}
