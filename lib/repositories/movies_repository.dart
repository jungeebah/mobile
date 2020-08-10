import 'dart:async';

import 'package:meta/meta.dart';

import 'package:hernucha/repositories/movies_api_client.dart';
import 'package:hernucha/models/models.dart';

class MoviesRepository {
  final MoviesApiClient moviesApiClient;

  MoviesRepository({@required this.moviesApiClient})
      : assert(moviesApiClient != null);

  Future<MoviesList> fetchQuote() async {
    return await moviesApiClient.fetchQuote();
  }
}
