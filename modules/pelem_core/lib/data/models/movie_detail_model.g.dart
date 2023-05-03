// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetailModel _$$_MovieDetailModelFromJson(Map<String, dynamic> json) =>
    _$_MovieDetailModel(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      budget: json['budget'] as int,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String,
      id: json['id'] as int,
      imdbId: json['imdb_id'] as String?,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      revenue: json['revenue'] as int,
      runtime: json['runtime'] as int,
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_MovieDetailModelToJson(_$_MovieDetailModel instance) {
  final val = <String, dynamic>{
    'adult': instance.adult,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backdrop_path', instance.backdropPath);
  val['budget'] = instance.budget;
  val['genres'] = instance.genres;
  val['homepage'] = instance.homepage;
  val['id'] = instance.id;
  writeNotNull('imdb_id', instance.imdbId);
  val['original_language'] = instance.originalLanguage;
  val['original_title'] = instance.originalTitle;
  val['overview'] = instance.overview;
  val['popularity'] = instance.popularity;
  val['poster_path'] = instance.posterPath;
  val['release_date'] = instance.releaseDate;
  val['revenue'] = instance.revenue;
  val['runtime'] = instance.runtime;
  val['status'] = instance.status;
  val['tagline'] = instance.tagline;
  val['title'] = instance.title;
  val['video'] = instance.video;
  val['vote_average'] = instance.voteAverage;
  val['vote_count'] = instance.voteCount;
  return val;
}
