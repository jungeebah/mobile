import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hernucha/individual_page/cast/cast.dart';

class Cast extends StatelessWidget {
  final List<Map<String, Object>> movieActor;
  Cast(this.movieActor);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 15),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'Cast',
            style: GoogleFonts.merriweather(
              fontSize: 19,
              fontStyle: FontStyle.normal,
            ),
          ),
          new SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: new Row(
              children: <Widget>[
                ...movieActor.map(
                  (e) => Row(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CastPage(e),
                            ),
                          ),
                        },
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 150.0,
                              width: 120.0,
                              child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Hero(
                                  tag: e,
                                  child: Image.asset(
                                    e['image'],
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
                            new Text(e['name'],
                                style: GoogleFonts.merriweather(
                                  fontSize: 13,
                                  fontStyle: FontStyle.normal,
                                )),
                          ],
                        ),
                      ),
                      new SizedBox(width: 10)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
