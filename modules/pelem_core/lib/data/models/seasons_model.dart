import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

part 'seasons_model.freezed.dart';
part 'seasons_model.g.dart';

@freezed
class SeasonsModel with _$SeasonsModel {
  const factory SeasonsModel({
    required String? airDate,
    required int episodeCount,
    required int id,
    required String name,
    required String overview,
    required String? posterPath,
    required int seasonNumber,
  }) = _SeasonsModel;

  factory SeasonsModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonsModelFromJson(json);
}

extension SeasonsModelX on SeasonsModel {
  Seasons toEntity() => Seasons(
        airDate: airDate,
        episodeCount: episodeCount,
        id: id,
        name: name,
        overview: overview,
        posterPath: posterPath,
        seasonNumber: seasonNumber,
      );
}
