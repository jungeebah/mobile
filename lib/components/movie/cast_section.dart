import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cast extends StatelessWidget {
  final List<String> movieActor;
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
                      SizedBox(
                        height: 90.0,
                        width: 70.0,
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            e,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(4),
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
