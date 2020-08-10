import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'package:hernucha/models/models.dart';

class MoviesApiClient {
  final _baseUrl = 'https://healthy-system-267921.uc.r.appspot.com/';
  final http.Client httpClient;
  MoviesApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);
  Future<MoviesList> fetchQuote() async {
    final url = '$_baseUrl/api/movies';
    final response = await this.httpClient.get(url);

    if (response.statusCode != 200) {
      throw new Exception('error getting quotes');
    }

    final json = jsonDecode(response.body);
    return MoviesList.fromJson(json);
  }
}
