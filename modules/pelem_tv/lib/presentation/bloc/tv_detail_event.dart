import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_detail_event.freezed.dart';

@freezed
class TVDetailEvent with _$TVDetailEvent {
  const factory TVDetailEvent.started(int id) = TVDetailStarted;
}
