import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/tv_detail.dart';

import 'genre_model.dart';
import 'last_episode_to_air_model.dart';
import 'seasons_model.dart';

part 'tv_detail_model.freezed.dart';
part 'tv_detail_model.g.dart';

@freezed
class TVDetailResponse with _$TVDetailResponse {
  const factory TVDetailResponse({
    required bool adult,
    required String? backdropPath,
    required List<int> episodeRunTime,
    required String firstAirDate,
    required List<GenreModel> genres,
    required String homepage,
    required int id,
    required bool inProduction,
    required String? lastAirDate,
    required LastEpisodeToAirModel lastEpisodeToAir,
    required String name,
    required int numberOfEpisodes,
    required int numberOfSeasons,
    required List<String> originCountry,
    required String originalLanguage,
    required String originalName,
    required String overview,
    required double popularity,
    required String? posterPath,
    required List<SeasonsModel> seasons,
    required String status,
    required String tagline,
    required String type,
    required double voteAverage,
    required int voteCount,
  }) = _TVDetailResponse;

  factory TVDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$TVDetailResponseFromJson(json);
}

extension TVDetailResponseX on TVDetailResponse {
  TVDetail toEntity() => TVDetail(
        adult: adult,
        backdropPath: backdropPath,
        genres: genres.map((e) => e.toEntity()).toList(),
        id: id,
        name: name,
        numberOfEpisodes: numberOfEpisodes,
        numberOfSeasons: numberOfSeasons,
        originalName: originalName,
        overview: overview,
        posterPath: posterPath,
        seasons: seasons.map((e) => e.toEntity()).toList(),
        status: status,
        voteAverage: voteAverage,
        voteCount: voteCount,
        episodeRunTime: episodeRunTime,
        firstAirDate: firstAirDate,
        homepage: homepage,
        inProduction: inProduction,
        lastAirDate: lastAirDate,
        lastEpisodeToAir: lastEpisodeToAir.toEntity(),
        originCountry: originCountry,
        originalLanguage: originalLanguage,
        popularity: popularity,
        tagline: tagline,
        type: type,
      );
}
