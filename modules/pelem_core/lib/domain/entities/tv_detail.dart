import 'package:freezed_annotation/freezed_annotation.dart';

import 'genre.dart';
import 'last_episode_to_air.dart';
import 'seasons.dart';

part 'tv_detail.freezed.dart';

@freezed
class TVDetail with _$TVDetail {
  const factory TVDetail({
    required bool adult,
    required String? backdropPath,
    required List<int> episodeRunTime,
    required String firstAirDate,
    required List<Genre> genres,
    required String homepage,
    required int id,
    required bool inProduction,
    required String? lastAirDate,
    required LastEpisodeToAir lastEpisodeToAir,
    required String name,
    required int numberOfEpisodes,
    required int numberOfSeasons,
    required List<String> originCountry,
    required String originalLanguage,
    required String originalName,
    required String overview,
    required double popularity,
    required String? posterPath,
    required List<Seasons> seasons,
    required String status,
    required String tagline,
    required String type,
    required double voteAverage,
    required int voteCount,
  }) = _TVDetail;
}
