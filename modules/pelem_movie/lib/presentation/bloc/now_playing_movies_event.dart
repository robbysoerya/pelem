import 'package:freezed_annotation/freezed_annotation.dart';

part 'now_playing_movies_event.freezed.dart';

@freezed
class NowPlayingMoviesEvent with _$NowPlayingMoviesEvent {
  const factory NowPlayingMoviesEvent.started() = NowPlayingMoviesStarted;
}
