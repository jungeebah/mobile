// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieItem> _$movieItemSerializer = new _$MovieItemSerializer();

class _$MovieItemSerializer implements StructuredSerializer<MovieItem> {
  @override
  final Iterable<Type> types = const [MovieItem, _$MovieItem];
  @override
  final String wireName = 'MovieItem';

  @override
  Iterable<Object> serialize(Serializers serializers, MovieItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
      'length',
      serializers.serialize(object.length,
          specifiedType: const FullType(String)),
      'genre',
      serializers.serialize(object.genre,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'role',
      serializers.serialize(object.role,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'streaming',
      serializers.serialize(object.streaming,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.trailer != null) {
      result
        ..add('trailer')
        ..add(serializers.serialize(object.trailer,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(String)));
    }
    if (object.plot != null) {
      result
        ..add('plot')
        ..add(serializers.serialize(object.plot,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.youtube != null) {
      result
        ..add('youtube')
        ..add(serializers.serialize(object.youtube,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'trailer':
          result.trailer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'plot':
          result.plot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'length':
          result.length = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'youtube':
          result.youtube = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre':
          result.genre.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'role':
          result.role.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'streaming':
          result.streaming.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MovieItem extends MovieItem {
  @override
  final String url;
  @override
  final String trailer;
  @override
  final String name;
  @override
  final String releaseDate;
  @override
  final String rating;
  @override
  final String plot;
  @override
  final String length;
  @override
  final String image;
  @override
  final String youtube;
  @override
  final BuiltList<String> genre;
  @override
  final BuiltList<String> role;
  @override
  final BuiltList<String> streaming;

  factory _$MovieItem([void Function(MovieItemBuilder) updates]) =>
      (new MovieItemBuilder()..update(updates)).build();

  _$MovieItem._(
      {this.url,
      this.trailer,
      this.name,
      this.releaseDate,
      this.rating,
      this.plot,
      this.length,
      this.image,
      this.youtube,
      this.genre,
      this.role,
      this.streaming})
      : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('MovieItem', 'url');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('MovieItem', 'name');
    }
    if (releaseDate == null) {
      throw new BuiltValueNullFieldError('MovieItem', 'releaseDate');
    }
    if (length == null) {
      throw new BuiltValueNullFieldError('MovieItem', 'length');
    }
    if (genre == null) {
      throw new BuiltValueNullFieldError('MovieItem', 'genre');
    }
    if (role == null) {
      throw new BuiltValueNullFieldError('MovieItem', 'role');
    }
    if (streaming == null) {
      throw new BuiltValueNullFieldError('MovieItem', 'streaming');
    }
  }

  @override
  MovieItem rebuild(void Function(MovieItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieItemBuilder toBuilder() => new MovieItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieItem &&
        url == other.url &&
        trailer == other.trailer &&
        name == other.name &&
        releaseDate == other.releaseDate &&
        rating == other.rating &&
        plot == other.plot &&
        length == other.length &&
        image == other.image &&
        youtube == other.youtube &&
        genre == other.genre &&
        role == other.role &&
        streaming == other.streaming;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, url.hashCode),
                                                trailer.hashCode),
                                            name.hashCode),
                                        releaseDate.hashCode),
                                    rating.hashCode),
                                plot.hashCode),
                            length.hashCode),
                        image.hashCode),
                    youtube.hashCode),
                genre.hashCode),
            role.hashCode),
        streaming.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieItem')
          ..add('url', url)
          ..add('trailer', trailer)
          ..add('name', name)
          ..add('releaseDate', releaseDate)
          ..add('rating', rating)
          ..add('plot', plot)
          ..add('length', length)
          ..add('image', image)
          ..add('youtube', youtube)
          ..add('genre', genre)
          ..add('role', role)
          ..add('streaming', streaming))
        .toString();
  }
}

class MovieItemBuilder implements Builder<MovieItem, MovieItemBuilder> {
  _$MovieItem _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _trailer;
  String get trailer => _$this._trailer;
  set trailer(String trailer) => _$this._trailer = trailer;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  String _rating;
  String get rating => _$this._rating;
  set rating(String rating) => _$this._rating = rating;

  String _plot;
  String get plot => _$this._plot;
  set plot(String plot) => _$this._plot = plot;

  String _length;
  String get length => _$this._length;
  set length(String length) => _$this._length = length;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _youtube;
  String get youtube => _$this._youtube;
  set youtube(String youtube) => _$this._youtube = youtube;

  ListBuilder<String> _genre;
  ListBuilder<String> get genre => _$this._genre ??= new ListBuilder<String>();
  set genre(ListBuilder<String> genre) => _$this._genre = genre;

  ListBuilder<String> _role;
  ListBuilder<String> get role => _$this._role ??= new ListBuilder<String>();
  set role(ListBuilder<String> role) => _$this._role = role;

  ListBuilder<String> _streaming;
  ListBuilder<String> get streaming =>
      _$this._streaming ??= new ListBuilder<String>();
  set streaming(ListBuilder<String> streaming) => _$this._streaming = streaming;

  MovieItemBuilder();

  MovieItemBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _trailer = _$v.trailer;
      _name = _$v.name;
      _releaseDate = _$v.releaseDate;
      _rating = _$v.rating;
      _plot = _$v.plot;
      _length = _$v.length;
      _image = _$v.image;
      _youtube = _$v.youtube;
      _genre = _$v.genre?.toBuilder();
      _role = _$v.role?.toBuilder();
      _streaming = _$v.streaming?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MovieItem;
  }

  @override
  void update(void Function(MovieItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieItem build() {
    _$MovieItem _$result;
    try {
      _$result = _$v ??
          new _$MovieItem._(
              url: url,
              trailer: trailer,
              name: name,
              releaseDate: releaseDate,
              rating: rating,
              plot: plot,
              length: length,
              image: image,
              youtube: youtube,
              genre: genre.build(),
              role: role.build(),
              streaming: streaming.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genre';
        genre.build();
        _$failedField = 'role';
        role.build();
        _$failedField = 'streaming';
        streaming.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
