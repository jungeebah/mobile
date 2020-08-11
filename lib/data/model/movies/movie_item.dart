library movie_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hernucha/data/model/serializer/serializers.dart';

part 'movie_item.g.dart';

abstract class MovieItem implements Built<MovieItem, MovieItemBuilder> {
  String get url;
  @nullable
  String get trailer;
  String get name;
  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;
  @nullable
  String get rating;
  @nullable
  String get plot;
  String get length;
  @nullable
  String get image;
  @nullable
  String get youtube;
  BuiltList<String> get genre;
  BuiltList<String> get role;
  BuiltList<String> get streaming;

  MovieItem._();

  factory MovieItem([updates(MovieItemBuilder b)]) = _$MovieItem;

  String toJson() {
    return json.encode(serializers.serializeWith(MovieItem.serializer, this));
  }

  static MovieItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        MovieItem.serializer, json.decode(jsonString));
  }

  static Serializer<MovieItem> get serializer => _$movieItemSerializer;
}
