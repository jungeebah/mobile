import 'package:equatable/equatable.dart';

class MoviesList extends Equatable {
  final String count;
  final String next;
  final String previous;
  final List<List<Object>> results;
  const MoviesList({
    this.count,
    this.next,
    this.previous,
    this.results,
  });
  @override
  List<Object> get props => [
        count,
        next,
        previous,
        results,
      ];

  static MoviesList fromJson(dynamic json) {
    return MoviesList(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: json['results'],
    );
  }

  @override
  String toString() => 'MoviesList { next: $next }';
}
