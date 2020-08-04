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
      appBar: AppBar(
        title: Text('Hernucha'),
      ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                new Poster(image),
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: new Align(
                    alignment: Alignment.bottomCenter,
                    child: new Image.asset(
                      'assets/play-button.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
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
    );
  }
}
