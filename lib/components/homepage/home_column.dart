import 'package:flutter/material.dart';
import 'package:hernucha/components/homepage/movie_scroller.dart';
import 'package:hernucha/components/homepage/song_scroller.dart';
import 'package:hernucha/components/homepage/trailer_scroller.dart';

class HomeColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 5),
            child: new Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Movies',
                style: const TextStyle(
                    color: Colors.deepOrange,
                    fontFamily: 'GalleryIcons',
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0),
              ),
            ),
          ),
          MovieScroller(),
          Container(
            padding: EdgeInsets.only(left: 20, top: 5),
            child: new Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Songs',
                style: const TextStyle(
                    color: Colors.deepOrange,
                    fontFamily: 'GalleryIcons',
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0),
              ),
            ),
          ),
          SongScroller(),
          Container(
            padding: EdgeInsets.only(left: 20, top: 0),
            child: new Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Trailers',
                style: const TextStyle(
                    color: Colors.deepOrange,
                    fontFamily: 'GalleryIcons',
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0),
              ),
            ),
          ),
          TrailerScroller(),
        ],
      ),
    );
  }
}
