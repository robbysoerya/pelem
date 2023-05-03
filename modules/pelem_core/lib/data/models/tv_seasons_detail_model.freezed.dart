// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_seasons_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TVSeasonsDetailModel _$TVSeasonsDetailModelFromJson(Map<String, dynamic> json) {
  return _TVSeasonsDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TVSeasonsDetailModel {
  String get airDate => throw _privateConstructorUsedError;
  List<EpisodesModel> get episodes => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  int get seasonNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TVSeasonsDetailModelCopyWith<TVSeasonsDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVSeasonsDetailModelCopyWith<$Res> {
  factory $TVSeasonsDetailModelCopyWith(TVSeasonsDetailModel value,
          $Res Function(TVSeasonsDetailModel) then) =
      _$TVSeasonsDetailModelCopyWithImpl<$Res, TVSeasonsDetailModel>;
  @useResult
  $Res call(
      {String airDate,
      List<EpisodesModel> episodes,
      String name,
      String overview,
      int id,
      String posterPath,
      int seasonNumber});
}

/// @nodoc
class _$TVSeasonsDetailModelCopyWithImpl<$Res,
        $Val extends TVSeasonsDetailModel>
    implements $TVSeasonsDetailModelCopyWith<$Res> {
  _$TVSeasonsDetailModelCopyWithImpl(this._value, this._then);

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
              as List<EpisodesModel>,
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
abstract class _$$_TVSeasonsDetailModelCopyWith<$Res>
    implements $TVSeasonsDetailModelCopyWith<$Res> {
  factory _$$_TVSeasonsDetailModelCopyWith(_$_TVSeasonsDetailModel value,
          $Res Function(_$_TVSeasonsDetailModel) then) =
      __$$_TVSeasonsDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String airDate,
      List<EpisodesModel> episodes,
      String name,
      String overview,
      int id,
      String posterPath,
      int seasonNumber});
}

/// @nodoc
class __$$_TVSeasonsDetailModelCopyWithImpl<$Res>
    extends _$TVSeasonsDetailModelCopyWithImpl<$Res, _$_TVSeasonsDetailModel>
    implements _$$_TVSeasonsDetailModelCopyWith<$Res> {
  __$$_TVSeasonsDetailModelCopyWithImpl(_$_TVSeasonsDetailModel _value,
      $Res Function(_$_TVSeasonsDetailModel) _then)
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
    return _then(_$_TVSeasonsDetailModel(
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodesModel>,
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
@JsonSerializable()
class _$_TVSeasonsDetailModel implements _TVSeasonsDetailModel {
  const _$_TVSeasonsDetailModel(
      {required this.airDate,
      required final List<EpisodesModel> episodes,
      required this.name,
      required this.overview,
      required this.id,
      required this.posterPath,
      required this.seasonNumber})
      : _episodes = episodes;

  factory _$_TVSeasonsDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_TVSeasonsDetailModelFromJson(json);

  @override
  final String airDate;
  final List<EpisodesModel> _episodes;
  @override
  List<EpisodesModel> get episodes {
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
    return 'TVSeasonsDetailModel(airDate: $airDate, episodes: $episodes, name: $name, overview: $overview, id: $id, posterPath: $posterPath, seasonNumber: $seasonNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TVSeasonsDetailModel &&
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

  @JsonKey(ignore: true)
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
  _$$_TVSeasonsDetailModelCopyWith<_$_TVSeasonsDetailModel> get copyWith =>
      __$$_TVSeasonsDetailModelCopyWithImpl<_$_TVSeasonsDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TVSeasonsDetailModelToJson(
      this,
    );
  }
}

abstract class _TVSeasonsDetailModel implements TVSeasonsDetailModel {
  const factory _TVSeasonsDetailModel(
      {required final String airDate,
      required final List<EpisodesModel> episodes,
      required final String name,
      required final String overview,
      required final int id,
      required final String posterPath,
      required final int seasonNumber}) = _$_TVSeasonsDetailModel;

  factory _TVSeasonsDetailModel.fromJson(Map<String, dynamic> json) =
      _$_TVSeasonsDetailModel.fromJson;

  @override
  String get airDate;
  @override
  List<EpisodesModel> get episodes;
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
  _$$_TVSeasonsDetailModelCopyWith<_$_TVSeasonsDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
