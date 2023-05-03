import 'package:freezed_annotation/freezed_annotation.dart';

part 'seasons.freezed.dart';

@freezed
class Seasons with _$Seasons {
  const factory Seasons({
    required String? airDate,
    required int episodeCount,
    required int id,
    required String name,
    required String overview,
    required String? posterPath,
    required int seasonNumber,
  }) = _Seasons;
}
