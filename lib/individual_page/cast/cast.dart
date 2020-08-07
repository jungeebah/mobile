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
      body: SafeArea(
        child: new CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              floating: true,
              pinned: true,
              snap: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 6,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(actor['image'])),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
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
                  new SizedBox(height: 20),
                  new Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 5),
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
      ),
    );
  }
}
