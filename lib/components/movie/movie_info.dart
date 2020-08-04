import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieInfo extends StatelessWidget {
  MovieInfo(
    this.movieName,
    this.movieYear,
    this.movieLength,
    this.movieGenre,
    this.movieRating,
  );
  final String movieName;
  final String movieYear;
  final String movieLength;
  final List<String> movieGenre;
  final String movieRating;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 15),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            movieName,
            style: GoogleFonts.merriweather(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 2),
            child: Row(
              children: <Widget>[
                Text(
                  movieYear,
                  style: GoogleFonts.merriweather(
                    fontSize: 11,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(width: 13),
                Text(
                  movieLength,
                  style: GoogleFonts.merriweather(
                    fontSize: 11,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  movieRating,
                  style: GoogleFonts.merriweather(
                    fontSize: 11,
                    fontStyle: FontStyle.normal,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              ...movieGenre.map(
                (e) => Row(
                  children: <Widget>[
                    new MaterialButton(
                      height: 30.0,
                      minWidth: 30.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)),
                      color: Colors.white,
                      textColor: Colors.black,
                      child: new Text(e,
                          style: GoogleFonts.merriweather(
                            fontSize: 13,
                            fontStyle: FontStyle.normal,
                          )),
                      onPressed: () => {},
                      splashColor: Colors.blueAccent,
                    ),
                    SizedBox(width: 20)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
