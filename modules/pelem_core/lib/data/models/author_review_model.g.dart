// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorReviewModel _$$_AuthorReviewModelFromJson(Map<String, dynamic> json) =>
    _$_AuthorReviewModel(
      name: json['name'] as String,
      username: json['username'] as String,
      avatarPath: json['avatar_path'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AuthorReviewModelToJson(
    _$_AuthorReviewModel instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'username': instance.username,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar_path', instance.avatarPath);
  writeNotNull('rating', instance.rating);
  return val;
}
