import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CastPage extends StatelessWidget {
  final cast = [
    'assets/Loot.jpg',
    'assets/whiteSun.jpg',
    'assets/chadke.jpg',
    'assets/sambodhan.jpg',
    'assets/sano sansar.jpg'
  ];
  final Map<String, Object> actor;
  CastPage(this.actor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: new CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                new SizedBox(
                  height: 400,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Hero(
                      tag: actor['image'],
                      child: new Image.asset(
                        this.actor['image'],
                        fit: BoxFit.fill,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                  ),
                ),
                new SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: new Text(
                    actor['name'],
                    style: GoogleFonts.merriweather(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                new SizedBox(height: 15),
                new Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: new Text(
                    'Movies',
                    style: GoogleFonts.merriweather(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                new SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ...cast.map(
                          (e) => Row(
                            children: <Widget>[
                              SizedBox(
                                height: 150.0,
                                width: 120.0,
                                child: new Card(
                                  semanticContainer: true,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: new Image.asset(e, fit: BoxFit.fill),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 5,
                                  margin: EdgeInsets.all(4),
                                ),
                              ),
                              new SizedBox(width: 8)
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
