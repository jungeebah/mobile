import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:hernucha/models/models.dart';

abstract class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

class MoviesEmpty extends MoviesState {}

class MoviesLoading extends MoviesState {}

class MoviesLoaded extends MoviesState {
  final MoviesList movie;

  const MoviesLoaded({@required this.movie}) : assert(movie != null);

  @override
  List<Object> get props => [movie];
}

class MoviesError extends MoviesState {}
