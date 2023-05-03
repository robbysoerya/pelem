import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_movies_event.freezed.dart';

@freezed
class UpcomingMoviesEvent with _$UpcomingMoviesEvent {
  const factory UpcomingMoviesEvent.started() = UpcomingMoviesStarted;
}
