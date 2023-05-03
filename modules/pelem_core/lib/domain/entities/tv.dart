import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv.freezed.dart';

@freezed
class TV with _$TV {
  const factory TV({
    required String? backdropPath,
    required String? firstAirDate,
    required List<int>? genreIds,
    required int? id,
    required String? name,
    required List<String>? originCountry,
    required String? originalLanguage,
    required String? originalName,
    required String? overview,
    required double? popularity,
    required String? posterPath,
    required double? voteAverage,
    required int? voteCount,
  }) = _TV;
}
