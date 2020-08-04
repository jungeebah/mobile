import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Streaming extends StatelessWidget {
  Streaming(this.streaming);
  final List<String> streaming;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10, left: 15),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              'Streaming',
              style: GoogleFonts.merriweather(
                fontSize: 19,
                fontStyle: FontStyle.normal,
              ),
            ),
            new Row(
              children: <Widget>[
                ...streaming.map(
                  (e) => Row(
                    children: <Widget>[
                      new SizedBox(
                        width: 90.0,
                        height: 90.0,
                        child: new Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: new Image.asset(e),
                          margin: EdgeInsets.all(4),
                        ),
                      ),
                      new SizedBox(width: 10)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
