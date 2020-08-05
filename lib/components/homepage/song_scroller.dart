import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SongScroller extends StatelessWidget {
  final movieList = [
    {'name': 'Loot', 'image': 'assets/Loot.jpg'},
    {'name': 'White Sun', 'image': 'assets/whiteSun.jpg'},
    {'name': 'Chadke', 'image': 'assets/chadke.jpg'},
    {'name': 'Sambodhan', 'image': 'assets/sambodhan.jpg'},
    {'name': 'Sano Sansar', 'image': 'assets/sano sansar.jpg'},
    {'name': 'Basudev', 'image': 'assets/basudev.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ...movieList.map((e) => _SongDisplay(e['name'], e['image'])).toList(),
        ],
      ),
    );
  }
}

class _SongDisplay extends StatelessWidget {
  final String movieName;
  final String movieImage;

  _SongDisplay(this.movieName, this.movieImage);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.0,
      width: 160.0,
      child: Container(
        height: 200.0,
        margin: const EdgeInsets.symmetric(
          vertical: 1.0,
          horizontal: 1.0,
        ),
        child: new Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                _SongCard(movieImage),
                new Align(
                  alignment: Alignment.center,
                  child: _SongInfo(movieName),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _SongInfo extends StatelessWidget {
  _SongInfo(this.movieName);
  final String movieName;
  @override
  Widget build(BuildContext context) {
    return Text(
      movieName,
      style: GoogleFonts.merriweather(
        fontSize: 17,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class _SongCard extends StatelessWidget {
  _SongCard(this.movieImage);
  final String movieImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      width: 120.0,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.asset(
          movieImage,
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(4),
      ),
    );
  }
}
