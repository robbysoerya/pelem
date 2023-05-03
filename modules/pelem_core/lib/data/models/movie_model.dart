import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required bool adult,
    required String? backdropPath,
    required List<int> genreIds,
    required int id,
    required String originalTitle,
    required String overview,
    required double popularity,
    required String? posterPath,
    required String? releaseDate,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

extension MovieModelX on MovieModel {
  Movie toEntity() => Movie(
        adult: adult,
        backdropPath: backdropPath,
        genreIds: genreIds,
        id: id,
        originalTitle: originalTitle,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        releaseDate: releaseDate,
        title: title,
        video: video,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
