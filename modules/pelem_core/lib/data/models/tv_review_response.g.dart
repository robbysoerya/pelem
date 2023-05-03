// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVReviewResponse _$$_TVReviewResponseFromJson(Map<String, dynamic> json) =>
    _$_TVReviewResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => TVReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TVReviewResponseToJson(_$_TVReviewResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
