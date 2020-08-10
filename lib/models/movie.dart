import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String url;
  final String trailer;
  final String name;
  final DateTime releaseDate;
  final String rating;
  final String plot;
  final List<String> genre;
  final List<String> role;
  final List<String> streaming;
  const Movie(
      {this.url,
      this.trailer,
      this.name,
      this.releaseDate,
      this.rating,
      this.plot,
      this.genre,
      this.role,
      this.streaming});
  @override
  List<Object> get props =>
      [url, trailer, name, releaseDate, rating, plot, genre, role, streaming];

  static Movie fromJson(dynamic json) {
    return Movie(
        url: json['url'],
        trailer: json['trailer'],
        name: json['name'],
        releaseDate: json['releaseDate'],
        rating: json['rating'],
        plot: json['plot'],
        genre: json['genre'],
        role: json['role'],
        streaming: json['streaming']);
  }

  @override
  String toString() => 'Movie { url: $url }';
}
