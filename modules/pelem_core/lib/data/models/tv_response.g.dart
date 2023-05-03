// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVResponse _$$_TVResponseFromJson(Map<String, dynamic> json) =>
    _$_TVResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => TVModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TVResponseToJson(_$_TVResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
