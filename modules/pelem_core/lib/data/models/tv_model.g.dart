// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVModel _$$_TVModelFromJson(Map<String, dynamic> json) => _$_TVModel(
      backdropPath: json['backdrop_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      id: json['id'] as int,
      name: json['name'] as String,
      originCountry: (json['origin_country'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      originalLanguage: json['original_language'] as String,
      originalName: json['original_name'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_TVModelToJson(_$_TVModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backdrop_path', instance.backdropPath);
  writeNotNull('first_air_date', instance.firstAirDate);
  val['genre_ids'] = instance.genreIds;
  val['id'] = instance.id;
  val['name'] = instance.name;
  val['origin_country'] = instance.originCountry;
  val['original_language'] = instance.originalLanguage;
  val['original_name'] = instance.originalName;
  val['overview'] = instance.overview;
  val['popularity'] = instance.popularity;
  writeNotNull('poster_path', instance.posterPath);
  val['vote_average'] = instance.voteAverage;
  val['vote_count'] = instance.voteCount;
  return val;
}
