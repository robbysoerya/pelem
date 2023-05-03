import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_tv_event.freezed.dart';

@freezed
class PopularTVEvent with _$PopularTVEvent {
  const factory PopularTVEvent.started() = PopularTVStarted;
}
