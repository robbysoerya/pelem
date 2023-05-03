import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_review_event.freezed.dart';

@freezed
class TVReviewEvent with _$TVReviewEvent {
  const factory TVReviewEvent.started(int id) = TVReviewStarted;
}
