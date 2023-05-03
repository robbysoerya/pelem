import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

part 'movie_review.freezed.dart';

@freezed
class MovieReview with _$MovieReview {
  const factory MovieReview({
    required String author,
    required AuthorReview authorDetails,
    required String content,
    required DateTime createdAt,
    required String id,
    required DateTime updatedAt,
    required String url,
  }) = _MovieReview;
}
