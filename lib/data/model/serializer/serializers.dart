library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hernucha/data/model/movies/models_movies.dart';

part 'serializers.g.dart';

@SerializersFor(const [MoviesListResult, MovieItem])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
