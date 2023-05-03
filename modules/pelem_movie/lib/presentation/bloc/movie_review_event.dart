import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_review_event.freezed.dart';

@freezed
class MovieReviewEvent with _$MovieReviewEvent {
  const factory MovieReviewEvent.started(int id) = MovieReviewStarted;
}
