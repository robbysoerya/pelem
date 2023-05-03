import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'app_state.freezed.dart';

@freezed
class AppStates<T> with _$AppStates<T> {
  const factory AppStates.empty() = Empty;

  const factory AppStates.error(Failure message) = Error;

  const factory AppStates.initial() = Initial;

  const factory AppStates.loading() = Loading;

  const factory AppStates.success(T data) = Success<T>;
}
