import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

import 'author_review_model.dart';

part 'movie_review_model.freezed.dart';
part 'movie_review_model.g.dart';

@freezed
class MovieReviewModel with _$MovieReviewModel {
  const factory MovieReviewModel({
    required String author,
    required AuthorReviewModel authorDetails,
    required String content,
    required DateTime createdAt,
    required String id,
    required DateTime updatedAt,
    required String url,
  }) = _MovieReviewModel;

  factory MovieReviewModel.fromJson(Map<String, dynamic> json) =>
      _$MovieReviewModelFromJson(json);
}

extension MovieReviewModelX on MovieReviewModel {
  MovieReview toEntity() => MovieReview(
        author: author,
        authorDetails: authorDetails.toEntity(),
        content: content,
        createdAt: createdAt,
        id: id,
        updatedAt: updatedAt,
        url: url,
      );
}
