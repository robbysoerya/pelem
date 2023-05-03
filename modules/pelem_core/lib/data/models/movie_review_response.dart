import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

import 'movie_review_model.dart';

part 'movie_review_response.freezed.dart';
part 'movie_review_response.g.dart';

@freezed
class MovieReviewResponse with _$MovieReviewResponse {
  const factory MovieReviewResponse({required List<MovieReviewModel> results}) =
      _MovieReviewResponse;

  factory MovieReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieReviewResponseFromJson(json);
}

extension MovieReviewResponseX on MovieReviewResponse {
  List<MovieReview> toEntity() => results.map((e) => e.toEntity()).toList();
}
