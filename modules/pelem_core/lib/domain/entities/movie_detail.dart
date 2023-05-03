import 'package:freezed_annotation/freezed_annotation.dart';

import 'genre.dart';

part 'movie_detail.freezed.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required bool adult,
    required String? backdropPath,
    required List<Genre> genres,
    required int id,
    required String originalTitle,
    required String overview,
    required String posterPath,
    required String releaseDate,
    required int runtime,
    required String title,
    required double voteAverage,
    required int voteCount,
  }) = _MovieDetail;
}
