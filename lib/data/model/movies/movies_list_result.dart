library movies_list_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hernucha/data/model/movies/movie_item.dart';
import 'package:hernucha/data/model/serializer/serializers.dart';

part 'movies_list_result.g.dart';

abstract class MoviesListResult
    implements Built<MoviesListResult, MoviesListResultBuilder> {
  // fields go here
  @nullable
  String get next;
  String get previous;
  BuiltList<MovieItem> get results;

  MoviesListResult._();

  factory MoviesListResult([updates(MoviesListResultBuilder b)]) =
      _$MoviesListResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(MoviesListResult.serializer, this));
  }

  static MoviesListResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        MoviesListResult.serializer, json.decode(jsonString));
  }

  static Serializer<MoviesListResult> get serializer =>
      _$moviesListResultSerializer;
}
