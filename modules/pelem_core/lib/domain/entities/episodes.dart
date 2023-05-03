import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes.freezed.dart';

@freezed
class Episodes with _$Episodes {
  const factory Episodes({
    required String airDate,
    required int episodeNumber,
    required int id,
    required String name,
    required String overview,
    required String productionCode,
    required int runtime,
    required int seasonNumber,
    required int showId,
    required String? stillPath,
    required double voteAverage,
    required int voteCount,
  }) = _Episodes;
}
