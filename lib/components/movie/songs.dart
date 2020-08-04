import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Songs extends StatelessWidget {
  final List<String> songs;
  Songs(this.songs);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 15),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'Songs',
            style: GoogleFonts.merriweather(
              fontSize: 19,
              fontStyle: FontStyle.normal,
            ),
          ),
          new ListView(
            children: <Widget>[
              ...songs.map(
                (e) => new SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: new Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      color: Colors.grey[100],
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              e,
                              style: GoogleFonts.merriweather(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            new SizedBox(
                              height: 35,
                              child: new Image.asset('assets/play-button.png'),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
