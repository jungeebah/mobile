import 'package:flutter/material.dart';
import 'package:hernucha/components/movie/movie_poster.dart';
import 'package:hernucha/components/movie/movie_info.dart';
import 'package:hernucha/components/movie/cast_section.dart';
import 'package:hernucha/components/movie/songs.dart';
import 'package:hernucha/components/movie/streaming.dart';
import 'package:hernucha/components/movie/trailer.dart';

class MoviePage extends StatelessWidget {
  MoviePage(
    this.image,
    this.name,
    this.movieYear,
    this.movieLength,
    this.movieGenre,
    this.movieRating,
    this.movieActor,
    this.streaming,
    this.songs,
  );
  final String image;
  final String name;
  final String movieYear;
  final String movieLength;
  final List<String> movieGenre;
  final String movieRating;
  final List<String> movieActor;
  final List<String> streaming;
  final List<String> songs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blue[100],
            expandedHeight: 350.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: <Widget>[
                  new Poster(image),
                  Positioned(
                    top: 140,
                    left: 0,
                    right: 0,
                    child: new Align(
                      alignment: Alignment.bottomCenter,
                      child: new IconButton(
                        iconSize: 80,
                        padding: new EdgeInsets.all(0.0),
                        color: Colors.black,
                        icon: new Icon(
                          IconData(57400, fontFamily: 'MaterialIcons'),
                        ),
                        onPressed: () => print('pressed'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                new MovieInfo(
                  name,
                  movieYear,
                  movieLength,
                  movieGenre,
                  movieRating,
                ),
                new Cast(movieActor),
                new Streaming(streaming),
                new Trailer(image),
                new Songs(songs),
                new SizedBox(height: 30),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
