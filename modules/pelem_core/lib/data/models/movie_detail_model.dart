import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

import 'genre_model.dart';

part 'movie_detail_model.freezed.dart';
part 'movie_detail_model.g.dart';

@freezed
class MovieDetailModel with _$MovieDetailModel {
  const factory MovieDetailModel({
    required bool adult,
    required String? backdropPath,
    required int budget,
    required List<GenreModel> genres,
    required String homepage,
    required int id,
    required String? imdbId,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    required String posterPath,
    required String releaseDate,
    required int revenue,
    required int runtime,
    required String status,
    required String tagline,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}

extension MovieDetailModelX on MovieDetailModel {
  MovieDetail toEntity() => MovieDetail(
        adult: adult,
        backdropPath: backdropPath,
        genres: genres.map((e) => e.toEntity()).toList(),
        id: id,
        originalTitle: originalTitle,
        overview: overview,
        posterPath: posterPath,
        releaseDate: releaseDate,
        runtime: runtime,
        title: title,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
