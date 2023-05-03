import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

part 'episodes_model.freezed.dart';
part 'episodes_model.g.dart';

@freezed
class EpisodesModel with _$EpisodesModel {
  const factory EpisodesModel({
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
  }) = _EpisodesModel;

  factory EpisodesModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodesModelFromJson(json);
}

extension EpisodesModelX on EpisodesModel {
  Episodes toEntity() => Episodes(
        airDate: airDate,
        episodeNumber: episodeNumber,
        id: id,
        name: name,
        overview: overview,
        productionCode: productionCode,
        runtime: runtime,
        seasonNumber: seasonNumber,
        showId: showId,
        stillPath: stillPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
