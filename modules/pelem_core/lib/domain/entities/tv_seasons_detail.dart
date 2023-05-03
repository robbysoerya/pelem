import 'package:freezed_annotation/freezed_annotation.dart';

import 'episodes.dart';

part 'tv_seasons_detail.freezed.dart';

@freezed
class TVSeasonsDetail with _$TVSeasonsDetail {
  const factory TVSeasonsDetail({
    required String airDate,
    required List<Episodes> episodes,
    required String name,
    required String overview,
    required int id,
    required String posterPath,
    required int seasonNumber,
  }) = _TVSeasonsDetail;
}
