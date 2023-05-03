import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

part 'author_review_model.freezed.dart';
part 'author_review_model.g.dart';

@freezed
class AuthorReviewModel with _$AuthorReviewModel {
  const factory AuthorReviewModel({
    required String name,
    required String username,
    required String? avatarPath,
    required double? rating,
  }) = _AuthorReviewModel;

  factory AuthorReviewModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorReviewModelFromJson(json);
}

extension AuthorReviewModelX on AuthorReviewModel {
  AuthorReview toEntity() => AuthorReview(
        name: name,
        username: username,
        avatarPath: avatarPath,
        rating: rating,
      );
}
