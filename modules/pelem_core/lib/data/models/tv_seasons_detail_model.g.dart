// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_seasons_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVSeasonsDetailModel _$$_TVSeasonsDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_TVSeasonsDetailModel(
      airDate: json['air_date'] as String,
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => EpisodesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      overview: json['overview'] as String,
      id: json['id'] as int,
      posterPath: json['poster_path'] as String,
      seasonNumber: json['season_number'] as int,
    );

Map<String, dynamic> _$$_TVSeasonsDetailModelToJson(
        _$_TVSeasonsDetailModel instance) =>
    <String, dynamic>{
      'air_date': instance.airDate,
      'episodes': instance.episodes,
      'name': instance.name,
      'overview': instance.overview,
      'id': instance.id,
      'poster_path': instance.posterPath,
      'season_number': instance.seasonNumber,
    };
