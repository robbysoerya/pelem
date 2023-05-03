import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

import 'tv_model.dart';

part 'tv_response.freezed.dart';
part 'tv_response.g.dart';

@freezed
class TVResponse with _$TVResponse {
  const factory TVResponse({required List<TVModel> results}) = _TVResponse;

  factory TVResponse.fromJson(Map<String, dynamic> json) =>
      _$TVResponseFromJson(json);
}

extension TVResponseX on TVResponse {
  List<TV> toEntity() => results.map((e) => e.toEntity()).toList();
}
