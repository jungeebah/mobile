// GENERATED CODE - DO NOT MODIFY BY HAND

part of movies_list_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoviesListResult> _$moviesListResultSerializer =
    new _$MoviesListResultSerializer();

class _$MoviesListResultSerializer
    implements StructuredSerializer<MoviesListResult> {
  @override
  final Iterable<Type> types = const [MoviesListResult, _$MoviesListResult];
  @override
  final String wireName = 'MoviesListResult';

  @override
  Iterable<Object> serialize(Serializers serializers, MoviesListResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'previous',
      serializers.serialize(object.previous,
          specifiedType: const FullType(String)),
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MovieItem)])),
    ];
    if (object.next != null) {
      result
        ..add('next')
        ..add(serializers.serialize(object.next,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MoviesListResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoviesListResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MoviesListResult extends MoviesListResult {
  @override
  final String next;
  @override
  final String previous;
  @override
  final BuiltList<MovieItem> results;

  factory _$MoviesListResult(
          [void Function(MoviesListResultBuilder) updates]) =>
      (new MoviesListResultBuilder()..update(updates)).build();

  _$MoviesListResult._({this.next, this.previous, this.results}) : super._() {
    if (previous == null) {
      throw new BuiltValueNullFieldError('MoviesListResult', 'previous');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('MoviesListResult', 'results');
    }
  }

  @override
  MoviesListResult rebuild(void Function(MoviesListResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoviesListResultBuilder toBuilder() =>
      new MoviesListResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoviesListResult &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, next.hashCode), previous.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoviesListResult')
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class MoviesListResultBuilder
    implements Builder<MoviesListResult, MoviesListResultBuilder> {
  _$MoviesListResult _$v;

  String _next;
  String get next => _$this._next;
  set next(String next) => _$this._next = next;

  String _previous;
  String get previous => _$this._previous;
  set previous(String previous) => _$this._previous = previous;

  ListBuilder<MovieItem> _results;
  ListBuilder<MovieItem> get results =>
      _$this._results ??= new ListBuilder<MovieItem>();
  set results(ListBuilder<MovieItem> results) => _$this._results = results;

  MoviesListResultBuilder();

  MoviesListResultBuilder get _$this {
    if (_$v != null) {
      _next = _$v.next;
      _previous = _$v.previous;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoviesListResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MoviesListResult;
  }

  @override
  void update(void Function(MoviesListResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MoviesListResult build() {
    _$MoviesListResult _$result;
    try {
      _$result = _$v ??
          new _$MoviesListResult._(
              next: next, previous: previous, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MoviesListResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
