import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_review.freezed.dart';

@freezed
class AuthorReview with _$AuthorReview {
  const factory AuthorReview({
    required String name,
    required String username,
    required String? avatarPath,
    required double? rating,
  }) = _AuthorReview;
}
