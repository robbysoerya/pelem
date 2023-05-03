import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_season_detail_event.freezed.dart';

@freezed
class TVSeasonDetailEvent with _$TVSeasonDetailEvent {
  const factory TVSeasonDetailEvent.started(int id, int season) =
      TVSeasonDetailStarted;
}
