// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodesModel _$$_EpisodesModelFromJson(Map<String, dynamic> json) =>
    _$_EpisodesModel(
      airDate: json['air_date'] as String,
      episodeNumber: json['episode_number'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      productionCode: json['production_code'] as String,
      runtime: json['runtime'] as int,
      seasonNumber: json['season_number'] as int,
      showId: json['show_id'] as int,
      stillPath: json['still_path'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_EpisodesModelToJson(_$_EpisodesModel instance) {
  final val = <String, dynamic>{
    'air_date': instance.airDate,
    'episode_number': instance.episodeNumber,
    'id': instance.id,
    'name': instance.name,
    'overview': instance.overview,
    'production_code': instance.productionCode,
    'runtime': instance.runtime,
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
