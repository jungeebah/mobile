import 'package:flutter/material.dart';
import 'package:hernucha/individual_page/movies/movie_page.dart';

class MovieScroller extends StatelessWidget {
  final movieList = [
    {
      'name': 'Loot',
      'image': 'assets/Loot.jpg',
      'year': '2012',
      'length': '2h 1m',
      'genre': ['action', 'comedy'],
      'rating': 'PG-13',
      'actor': [
        'assets/saugat.jpg',
        'assets/bipin.jpg',
        'assets/aruna.jpg',
        'assets/dayahang.jpg',
        'assets/srijana.jpg',
        'assets/reecha.jpg',
      ],
      'streaming': [
        'assets/amazonPrime.png',
        'assets/netflix.png',
      ],
      'songs': [
        'Dui Rupaiyaa',
        'Kutu Ma Kutu',
        'Talkyo Jawani',
      ]
    },
    {
      'name': 'White Sun',
      'image': 'assets/whiteSun.jpg',
      'year': '2016',
      'length': '1h 27m',
      'genre': ['Drama,', 'Adventure'],
      'rating': 'PG-13',
      'actor': [
        'assets/saugat.jpg',
        'assets/bipin.jpg',
        'assets/aruna.jpg',
        'assets/dayahang.jpg',
        'assets/srijana.jpg',
        'assets/reecha.jpg',
      ],
      'streaming': [
        'assets/amazonPrime.png',
        'assets/netflix.png',
      ],
      'songs': [
        'Dui Rupaiyaa',
        'Kutu Ma Kutu',
        'Talkyo Jawani',
      ]
    },
    {
      'name': 'Chadke',
      'image': 'assets/chadke.jpg',
      'year': '2013',
      'length': '2h 18m',
      'genre': ['action', 'Thriller', 'Drama'],
      'rating': 'PG-13',
      'actor': [
        'assets/saugat.jpg',
        'assets/bipin.jpg',
        'assets/aruna.jpg',
        'assets/dayahang.jpg',
        'assets/srijana.jpg',
        'assets/reecha.jpg',
        'assets/srijana.jpg',
        'assets/reecha.jpg',
      ],
      'streaming': [
        'assets/amazonPrime.png',
        'assets/netflix.png',
      ],
      'songs': [
        'Dui Rupaiyaa',
        'Kutu Ma Kutu',
        'Talkyo Jawani',
      ]
    },
    {
      'name': 'Sambodhan',
      'image': 'assets/sambodhan.jpg',
      'year': '2015',
      'length': '2h 18m',
      'genre': ['action', 'drama'],
      'rating': 'PG-13',
      'actor': [
        'assets/saugat.jpg',
        'assets/bipin.jpg',
        'assets/aruna.jpg',
        'assets/dayahang.jpg',
        'assets/srijana.jpg',
        'assets/reecha.jpg',
      ],
      'streaming': [
        'assets/amazonPrime.png',
        'assets/netflix.png',
      ],
      'songs': [
        'Dui Rupaiyaa',
        'Kutu Ma Kutu',
        'Talkyo Jawani',
      ]
    },
    {
      'name': 'Sano Sansar',
      'image': 'assets/sano sansar.jpg',
      'year': '1984',
      'length': '2h 18m',
      'genre': ['Drama', 'comedy', 'Family'],
      'rating': 'PG-13',
      'actor': [
        'assets/saugat.jpg',
        'assets/bipin.jpg',
        'assets/aruna.jpg',
        'assets/dayahang.jpg',
        'assets/srijana.jpg',
        'assets/reecha.jpg',
      ],
      'streaming': [
        'assets/amazonPrime.png',
        'assets/netflix.png',
      ],
      'songs': [
        'Dui Rupaiyaa',
        'Kutu Ma Kutu',
        'Talkyo Jawani',
      ]
    },
    {
      'name': 'Basudev',
      'image': 'assets/basudev.jpg',
      'year': '2012',
      'length': '2h 1m',
      'genre': ['action', 'comedy'],
      'rating': 'PG-13',
      'actor': [
        'assets/saugat.jpg',
        'assets/bipin.jpg',
        'assets/aruna.jpg',
        'assets/dayahang.jpg',
        'assets/srijana.jpg',
        'assets/reecha.jpg',
      ],
      'streaming': [
        'assets/amazonPrime.png',
        'assets/netflix.png',
      ],
      'songs': [
        'Dui Rupaiyaa',
        'Kutu Ma Kutu',
        'Talkyo Jawani',
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ...movieList
              .map(
                (e) => _MovieDisplay(
                    e['name'],
                    e['image'],
                    e['year'],
                    e['length'],
                    e['genre'],
                    e['rating'],
                    e['actor'],
                    e['streaming'],
                    e['songs']),
              )
              .toList(),
        ],
      ),
    );
  }
}

class _MovieDisplay extends StatelessWidget {
  final String movieName;
  final String movieImage;
  final String movieYear;
  final String movieLength;
  final List<String> movieGenre;
  final String movieRating;
  final List<String> movieActor;
  final List<String> streaming;
  final List<String> songs;

  _MovieDisplay(
    this.movieName,
    this.movieImage,
    this.movieYear,
    this.movieLength,
    this.movieGenre,
    this.movieRating,
    this.movieActor,
    this.streaming,
    this.songs,
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
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
                _MovieCard(
                  movieImage,
                  movieName,
                  movieYear,
                  movieLength,
                  movieGenre,
                  movieRating,
                  movieActor,
                  streaming,
                  songs,
                ),
                new Align(
                  alignment: Alignment.center,
                  child: _MovieInfo(movieName),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _MovieCard extends StatelessWidget {
  _MovieCard(
    this.movieImage,
    this.movieName,
    this.movieYear,
    this.movieLength,
    this.movieGenre,
    this.movieRating,
    this.movieActor,
    this.streaming,
    this.songs,
  );
  final String movieImage;
  final String movieName;
  final String movieYear;
  final String movieLength;
  final List<String> movieGenre;
  final String movieRating;
  final List<String> movieActor;
  final List<String> streaming;
  final List<String> songs;
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MoviePage(
            movieImage,
            movieName,
            movieYear,
            movieLength,
            movieGenre,
            movieRating,
            movieActor,
            streaming,
            songs,
          ),
        ))
      },
      child: SizedBox(
        height: 160.0,
        width: 120.0,
        child: Hero(
          tag: movieImage,
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
        ),
      ),
    );
  }
}

class _MovieInfo extends StatelessWidget {
  _MovieInfo(this.movieName);
  final String movieName;
  @override
  Widget build(BuildContext context) {
    return Text(
      movieName,
      style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          fontSize: 20.0),
    );
  }
}
