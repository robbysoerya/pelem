// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVDetailResponse _$$_TVDetailResponseFromJson(Map<String, dynamic> json) =>
    _$_TVDetailResponse(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      episodeRunTime: (json['episode_run_time'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      firstAirDate: json['first_air_date'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String,
      id: json['id'] as int,
      inProduction: json['in_production'] as bool,
      lastAirDate: json['last_air_date'] as String?,
      lastEpisodeToAir: LastEpisodeToAirModel.fromJson(
          json['last_episode_to_air'] as Map<String, dynamic>),
      name: json['name'] as String,
      numberOfEpisodes: json['number_of_episodes'] as int,
      numberOfSeasons: json['number_of_seasons'] as int,
      originCountry: (json['origin_country'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      originalLanguage: json['original_language'] as String,
      originalName: json['original_name'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      seasons: (json['seasons'] as List<dynamic>)
          .map((e) => SeasonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      type: json['type'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_TVDetailResponseToJson(_$_TVDetailResponse instance) {
  final val = <String, dynamic>{
    'adult': instance.adult,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backdrop_path', instance.backdropPath);
  val['episode_run_time'] = instance.episodeRunTime;
  val['first_air_date'] = instance.firstAirDate;
  val['genres'] = instance.genres;
  val['homepage'] = instance.homepage;
  val['id'] = instance.id;
  val['in_production'] = instance.inProduction;
  writeNotNull('last_air_date', instance.lastAirDate);
  val['last_episode_to_air'] = instance.lastEpisodeToAir;
  val['name'] = instance.name;
  val['number_of_episodes'] = instance.numberOfEpisodes;
  val['number_of_seasons'] = instance.numberOfSeasons;
  val['origin_country'] = instance.originCountry;
  val['original_language'] = instance.originalLanguage;
  val['original_name'] = instance.originalName;
  val['overview'] = instance.overview;
  val['popularity'] = instance.popularity;
  writeNotNull('poster_path', instance.posterPath);
  val['seasons'] = instance.seasons;
  val['status'] = instance.status;
  val['tagline'] = instance.tagline;
  val['type'] = instance.type;
  val['vote_average'] = instance.voteAverage;
  val['vote_count'] = instance.voteCount;
  return val;
}
