import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_event.freezed.dart';

@freezed
class PopularMoviesEvent with _$PopularMoviesEvent {
  const factory PopularMoviesEvent.started() = PopularMoviesStarted;
}
