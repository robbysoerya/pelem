import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required bool? adult,
    required String? backdropPath,
    required List<int>? genreIds,
    required int id,
    required String? originalTitle,
    required String? overview,
    required double? popularity,
    required String? posterPath,
    required String? releaseDate,
    required String? title,
    required bool? video,
    required double? voteAverage,
    required int? voteCount,
  }) = _Movie;
}
