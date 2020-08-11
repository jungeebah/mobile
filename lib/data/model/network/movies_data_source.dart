import 'dart:convert';

import 'package:hernucha/data/model/movies/movies_item_error.dart';
import 'package:hernucha/data/model/movies/movies_list_result.dart';
import 'package:hernucha/data/model/network/api_key.dart';
import 'package:http/http.dart' as http;

class MoviesDataSource {
  final http.Client client;
  final String _searchApi =
      'https://healthy-system-267921.uc.r.appspot.com/api/movies';

  MoviesDataSource(this.client);

  Future<MoviesListResult> getMovies() async {
    final url = _searchApi;
    final response = await client.get(
      url,
      headers: {'Authorization': 'Token ' + '$API_KEY'},
    );
    if (response.statusCode == 200) {
      return MoviesListResult.fromJson(response.body);
    } else {
      throw MoviesItemError(json.decode(response.body)['detail']);
    }
  }
}
