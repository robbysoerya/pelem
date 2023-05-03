import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

import 'episodes_model.dart';

part 'tv_seasons_detail_model.freezed.dart';
part 'tv_seasons_detail_model.g.dart';

@freezed
class TVSeasonsDetailModel with _$TVSeasonsDetailModel {
  const factory TVSeasonsDetailModel({
    required String airDate,
    required List<EpisodesModel> episodes,
    required String name,
    required String overview,
    required int id,
    required String posterPath,
    required int seasonNumber,
  }) = _TVSeasonsDetailModel;

  factory TVSeasonsDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TVSeasonsDetailModelFromJson(json);
}

extension TVSeasonsDetailModelX on TVSeasonsDetailModel {
  TVSeasonsDetail toEntity() => TVSeasonsDetail(
        airDate: airDate,
        episodes: episodes.map((e) => e.toEntity()).toList(),
        name: name,
        overview: overview,
        id: id,
        posterPath: posterPath,
        seasonNumber: seasonNumber,
      );
}
