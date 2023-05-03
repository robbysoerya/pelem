import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/data/models/models.dart';
import 'package:pelem_core/domain/entities/entities.dart';

part 'tv_review_model.freezed.dart';
part 'tv_review_model.g.dart';

@freezed
class TVReviewModel with _$TVReviewModel {
  const factory TVReviewModel({
    required String author,
    required AuthorReviewModel authorDetails,
    required String content,
    required DateTime createdAt,
    required String id,
    required DateTime updatedAt,
    required String url,
  }) = _TVReviewModel;

  factory TVReviewModel.fromJson(Map<String, dynamic> json) =>
      _$TVReviewModelFromJson(json);
}

extension TVReviewModelX on TVReviewModel {
  TVReview toEntity() => TVReview(
        author: author,
        authorDetails: authorDetails.toEntity(),
        content: content,
        createdAt: createdAt,
        id: id,
        updatedAt: updatedAt,
        url: url,
      );
}
