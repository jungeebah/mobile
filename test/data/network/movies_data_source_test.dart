import 'dart:io';

import 'package:hernucha/data/model/movies/movies_item_error.dart';
import 'package:hernucha/data/model/network/api_key.dart';
import 'package:matcher/matcher.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hernucha/data/model/movies/movies_list_result.dart';
import 'package:hernucha/data/model/network/movies_data_source.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock implements http.Client {}

void main() {
  String fixture(String name) =>
      File('test/data/fixtures/$name.json').readAsStringSync();

  MockClient mockClient;
  MoviesDataSource dataSource;

  setUp(() {
    mockClient = MockClient();
    dataSource = MoviesDataSource(mockClient);
  });

  group(
    'moviesListResults',
    () {
      test(
        'should give the list of movies list',
        () async {
          when(
            mockClient.get(
              argThat(
                startsWith(
                    'https://healthy-system-267921.uc.r.appspot.com/api/movies'),
              ),
              headers: {'Authorization': 'Token ' + '$API_KEY'},
            ),
          ).thenAnswer(
            (_) async => http.Response(
              fixture('movies_list_results'),
              200,
              headers: {'content-type': 'application/json; charset=utf-8'},
            ),
          );
          MoviesListResult result = await dataSource.getMovies();
          // ignore: deprecated_member_use
          expect(result, TypeMatcher<MoviesListResult>());
          expect(result.results.length, 10);
        },
      );
      test(
        'should contain one result',
        () async {
          when(
            mockClient.get(
              argThat(
                startsWith(
                    'https://healthy-system-267921.uc.r.appspot.com/api/movies'),
              ),
              headers: {'Authorization': 'Token ' + '$API_KEY'},
            ),
          ).thenAnswer(
            (_) async => http.Response(
              fixture('one_result'),
              200,
              headers: {'content-type': 'application/json; charset=utf-8'},
            ),
          );
          MoviesListResult result = await dataSource.getMovies();
          // ignore: deprecated_member_use
          expect(result, TypeMatcher<MoviesListResult>());
          expect(result.results.length, 1);
          expect(result.results[0].name,
              startsWith('16 Barse Yoban Salala Bage Jasto'));
        },
      );
      test(
        'should give error if apiKey is invalid',
        () async {
          when(
            mockClient.get(
              argThat(
                startsWith(
                    'https://healthy-system-267921.uc.r.appspot.com/api/movies'),
              ),
              headers: {'Authorization': 'Token ' + '$API_KEY'},
            ),
          ).thenAnswer(
            (_) async => http.Response(
              fixture('error'),
              401,
              headers: {'content-type': 'application/json; charset=utf-8'},
            ),
          );

          expect(
            () => dataSource.getMovies(),
            throwsA(TypeMatcher<MoviesItemError>()),
          );
        },
      );
    },
  );
}
