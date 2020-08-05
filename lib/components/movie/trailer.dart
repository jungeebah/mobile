import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Trailer extends StatelessWidget {
  Trailer(this.movieImage);
  final String movieImage;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10, left: 15),
        alignment: Alignment.centerLeft,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              'Trailer',
              style: GoogleFonts.merriweather(
                fontSize: 19,
                fontStyle: FontStyle.normal,
              ),
            ),
            new Stack(
              children: <Widget>[
                SizedBox(
                  width: 196.0,
                  height: 105.0,
                  child: new Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: new Image.asset(
                      movieImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 0,
                  right: 0,
                  child: new SizedBox(
                    height: 50,
                    child: new IconButton(
                      iconSize: 60,
                      padding: new EdgeInsets.all(0.0),
                      color: Colors.blueGrey,
                      icon: new Icon(
                        IconData(57400, fontFamily: 'MaterialIcons'),
                      ),
                      onPressed: () => print('pressed'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
