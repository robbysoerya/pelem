import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

part 'tv_review.freezed.dart';

@freezed
class TVReview with _$TVReview {
  const factory TVReview({
    required String author,
    required AuthorReview authorDetails,
    required String content,
    required DateTime createdAt,
    required String id,
    required DateTime updatedAt,
    required String url,
  }) = _TVReview;
}
