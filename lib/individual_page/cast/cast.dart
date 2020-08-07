import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CastPage extends StatelessWidget {
  static final cast = [
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
      body: new CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 500.0,
            floating: true,
            pinned: true,
            snap: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            actionsIconTheme: IconThemeData(opacity: 0.0),
            leading: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.arrowCircleLeft,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(actor['image'])),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
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
