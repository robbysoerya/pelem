import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_the_air_tv_event.freezed.dart';

@freezed
class OnTheAirTVEvent with _$OnTheAirTVEvent {
  const factory OnTheAirTVEvent.started() = OnTheAirTVStarted;
}
