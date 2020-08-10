import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();
}

class FetchMovies extends MoviesEvent {
  const FetchMovies();

  @override
  List<Object> get props => [];
}
