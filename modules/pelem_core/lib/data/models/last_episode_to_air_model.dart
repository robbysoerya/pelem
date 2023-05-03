import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

part 'last_episode_to_air_model.freezed.dart';
part 'last_episode_to_air_model.g.dart';

@freezed
class LastEpisodeToAirModel with _$LastEpisodeToAirModel {
  const factory LastEpisodeToAirModel({
    required String airDate,
    required int episodeNumber,
    required int id,
    required String name,
    required String overview,
    required String productionCode,
    required int seasonNumber,
    required int showId,
    required String? stillPath,
    required double voteAverage,
    required int voteCount,
  }) = _LastEpisodeToAirModel;

  factory LastEpisodeToAirModel.fromJson(Map<String, dynamic> json) =>
      _$LastEpisodeToAirModelFromJson(json);
}

extension LastEpisodeToAirModelX on LastEpisodeToAirModel {
  LastEpisodeToAir toEntity() => LastEpisodeToAir(
        airDate: airDate,
        episodeNumber: episodeNumber,
        id: id,
        name: name,
        overview: overview,
        productionCode: productionCode,
        seasonNumber: seasonNumber,
        showId: showId,
        stillPath: stillPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
