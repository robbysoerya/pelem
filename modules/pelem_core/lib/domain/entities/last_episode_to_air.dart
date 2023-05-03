import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_episode_to_air.freezed.dart';

@freezed
class LastEpisodeToAir with _$LastEpisodeToAir {
  const factory LastEpisodeToAir({
    required String airDate,
    required int episodeNumber,
    required int id,
    required String name,
    required String overview,
    required String productionCode,
    required int seasonNumber,
    required int showId,
    required String? stillPath,
    required double voteAverage,
    required int voteCount,
  }) = _LastEpisodeToAir;
}
