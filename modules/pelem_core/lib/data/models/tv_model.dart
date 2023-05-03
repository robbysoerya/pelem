import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/tv.dart';

part 'tv_model.freezed.dart';
part 'tv_model.g.dart';

@freezed
class TVModel with _$TVModel {
  const factory TVModel({
    required String? backdropPath,
    required String? firstAirDate,
    required List<int> genreIds,
    required int id,
    required String name,
    required List<String> originCountry,
    required String originalLanguage,
    required String originalName,
    required String overview,
    required double popularity,
    required String? posterPath,
    required double voteAverage,
    required int voteCount,
  }) = _TVModel;

  factory TVModel.fromJson(Map<String, dynamic> json) =>
      _$TVModelFromJson(json);
}

extension TVModelX on TVModel {
  TV toEntity() => TV(
        backdropPath: backdropPath,
        firstAirDate: firstAirDate,
        genreIds: genreIds,
        id: id,
        name: name,
        originCountry: originCountry,
        originalLanguage: originalLanguage,
        originalName: originalName,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
