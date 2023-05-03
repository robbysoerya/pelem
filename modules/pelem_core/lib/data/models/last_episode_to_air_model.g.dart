// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_episode_to_air_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LastEpisodeToAirModel _$$_LastEpisodeToAirModelFromJson(
        Map<String, dynamic> json) =>
    _$_LastEpisodeToAirModel(
      airDate: json['air_date'] as String,
      episodeNumber: json['episode_number'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      productionCode: json['production_code'] as String,
      seasonNumber: json['season_number'] as int,
      showId: json['show_id'] as int,
      stillPath: json['still_path'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_LastEpisodeToAirModelToJson(
    _$_LastEpisodeToAirModel instance) {
  final val = <String, dynamic>{
    'air_date': instance.airDate,
    'episode_number': instance.episodeNumber,
    'id': instance.id,
    'name': instance.name,
    'overview': instance.overview,
    'production_code': instance.productionCode,
    'season_number': instance.seasonNumber,
    'show_id': instance.showId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('still_path', instance.stillPath);
  val['vote_average'] = instance.voteAverage;
  val['vote_count'] = instance.voteCount;
  return val;
}
