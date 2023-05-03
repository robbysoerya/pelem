// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_seasons_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TVSeasonsDetail {
  String get airDate => throw _privateConstructorUsedError;
  List<Episodes> get episodes => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  int get seasonNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TVSeasonsDetailCopyWith<TVSeasonsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVSeasonsDetailCopyWith<$Res> {
  factory $TVSeasonsDetailCopyWith(
          TVSeasonsDetail value, $Res Function(TVSeasonsDetail) then) =
      _$TVSeasonsDetailCopyWithImpl<$Res, TVSeasonsDetail>;
  @useResult
  $Res call(
      {String airDate,
      List<Episodes> episodes,
      String name,
      String overview,
      int id,
      String posterPath,
      int seasonNumber});
}

/// @nodoc
class _$TVSeasonsDetailCopyWithImpl<$Res, $Val extends TVSeasonsDetail>
    implements $TVSeasonsDetailCopyWith<$Res> {
  _$TVSeasonsDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airDate = null,
    Object? episodes = null,
    Object? name = null,
    Object? overview = null,
    Object? id = null,
    Object? posterPath = null,
    Object? seasonNumber = null,
  }) {
    return _then(_value.copyWith(
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episodes>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      seasonNumber: null == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TVSeasonsDetailCopyWith<$Res>
    implements $TVSeasonsDetailCopyWith<$Res> {
  factory _$$_TVSeasonsDetailCopyWith(
          _$_TVSeasonsDetail value, $Res Function(_$_TVSeasonsDetail) then) =
      __$$_TVSeasonsDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String airDate,
      List<Episodes> episodes,
      String name,
      String overview,
      int id,
      String posterPath,
      int seasonNumber});
}

/// @nodoc
class __$$_TVSeasonsDetailCopyWithImpl<$Res>
    extends _$TVSeasonsDetailCopyWithImpl<$Res, _$_TVSeasonsDetail>
    implements _$$_TVSeasonsDetailCopyWith<$Res> {
  __$$_TVSeasonsDetailCopyWithImpl(
      _$_TVSeasonsDetail _value, $Res Function(_$_TVSeasonsDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airDate = null,
    Object? episodes = null,
    Object? name = null,
    Object? overview = null,
    Object? id = null,
    Object? posterPath = null,
    Object? seasonNumber = null,
  }) {
    return _then(_$_TVSeasonsDetail(
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episodes>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      seasonNumber: null == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TVSeasonsDetail implements _TVSeasonsDetail {
  const _$_TVSeasonsDetail(
      {required this.airDate,
      required final List<Episodes> episodes,
      required this.name,
      required this.overview,
      required this.id,
      required this.posterPath,
      required this.seasonNumber})
      : _episodes = episodes;

  @override
  final String airDate;
  final List<Episodes> _episodes;
  @override
  List<Episodes> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  final String name;
  @override
  final String overview;
  @override
  final int id;
  @override
  final String posterPath;
  @override
  final int seasonNumber;

  @override
  String toString() {
    return 'TVSeasonsDetail(airDate: $airDate, episodes: $episodes, name: $name, overview: $overview, id: $id, posterPath: $posterPath, seasonNumber: $seasonNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TVSeasonsDetail &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.seasonNumber, seasonNumber) ||
                other.seasonNumber == seasonNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      airDate,
      const DeepCollectionEquality().hash(_episodes),
      name,
      overview,
      id,
      posterPath,
      seasonNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TVSeasonsDetailCopyWith<_$_TVSeasonsDetail> get copyWith =>
      __$$_TVSeasonsDetailCopyWithImpl<_$_TVSeasonsDetail>(this, _$identity);
}

abstract class _TVSeasonsDetail implements TVSeasonsDetail {
  const factory _TVSeasonsDetail(
      {required final String airDate,
      required final List<Episodes> episodes,
      required final String name,
      required final String overview,
      required final int id,
      required final String posterPath,
      required final int seasonNumber}) = _$_TVSeasonsDetail;

  @override
  String get airDate;
  @override
  List<Episodes> get episodes;
  @override
  String get name;
  @override
  String get overview;
  @override
  int get id;
  @override
  String get posterPath;
  @override
  int get seasonNumber;
  @override
  @JsonKey(ignore: true)
  _$$_TVSeasonsDetailCopyWith<_$_TVSeasonsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
