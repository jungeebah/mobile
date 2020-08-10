import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:hernucha/repositories/repository.dart';
import 'package:hernucha/models/models.dart';
import 'package:hernucha/bloc/bloc.dart';

class MovieBloc extends Bloc<MoviesEvent, MoviesState> {
  final MoviesRepository repository;

  MovieBloc({@required this.repository})
      : assert(repository != null),
        super(null);

  MoviesState get initialState => MoviesEmpty();

  @override
  Stream<MoviesState> mapEventToState(MoviesEvent event) async* {
    if (event is FetchMovies) {
      yield MoviesLoading();
      try {
        final MoviesList movie = await repository.fetchQuote();
        yield MoviesLoaded(movie: movie);
      } catch (_) {
        yield MoviesError();
      }
    }
  }
}
