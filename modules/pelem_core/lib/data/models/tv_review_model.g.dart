// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVReviewModel _$$_TVReviewModelFromJson(Map<String, dynamic> json) =>
    _$_TVReviewModel(
      author: json['author'] as String,
      authorDetails: AuthorReviewModel.fromJson(
          json['author_details'] as Map<String, dynamic>),
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      id: json['id'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_TVReviewModelToJson(_$_TVReviewModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'author_details': instance.authorDetails,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'id': instance.id,
      'updated_at': instance.updatedAt.toIso8601String(),
      'url': instance.url,
    };
