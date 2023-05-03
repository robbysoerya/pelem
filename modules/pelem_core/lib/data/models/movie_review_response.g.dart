// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieReviewResponse _$$_MovieReviewResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MovieReviewResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieReviewResponseToJson(
        _$_MovieReviewResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
