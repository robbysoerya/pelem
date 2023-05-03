// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      id: json['id'] as int,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) {
  final val = <String, dynamic>{
    'adult': instance.adult,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backdrop_path', instance.backdropPath);
  val['genre_ids'] = instance.genreIds;
  val['id'] = instance.id;
  val['original_title'] = instance.originalTitle;
  val['overview'] = instance.overview;
  val['popularity'] = instance.popularity;
  writeNotNull('poster_path', instance.posterPath);
  writeNotNull('release_date', instance.releaseDate);
  val['title'] = instance.title;
  val['video'] = instance.video;
  val['vote_average'] = instance.voteAverage;
  val['vote_count'] = instance.voteCount;
  return val;
}
