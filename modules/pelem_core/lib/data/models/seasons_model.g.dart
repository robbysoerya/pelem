// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeasonsModel _$$_SeasonsModelFromJson(Map<String, dynamic> json) =>
    _$_SeasonsModel(
      airDate: json['air_date'] as String?,
      episodeCount: json['episode_count'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      seasonNumber: json['season_number'] as int,
    );

Map<String, dynamic> _$$_SeasonsModelToJson(_$_SeasonsModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('air_date', instance.airDate);
  val['episode_count'] = instance.episodeCount;
  val['id'] = instance.id;
  val['name'] = instance.name;
  val['overview'] = instance.overview;
  writeNotNull('poster_path', instance.posterPath);
  val['season_number'] = instance.seasonNumber;
  return val;
}
