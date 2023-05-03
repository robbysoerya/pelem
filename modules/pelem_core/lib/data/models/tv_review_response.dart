import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/data/models/models.dart';
import 'package:pelem_core/domain/entities/entities.dart';

import 'tv_review_model.dart';

part 'tv_review_response.freezed.dart';
part 'tv_review_response.g.dart';

@freezed
class TVReviewResponse with _$TVReviewResponse {
  const factory TVReviewResponse({required List<TVReviewModel> results}) =
      _TVReviewResponse;

  factory TVReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$TVReviewResponseFromJson(json);
}

extension TVReviewResponseX on TVReviewResponse {
  List<TVReview> toEntity() => results.map((e) => e.toEntity()).toList();
}
