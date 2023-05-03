import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

import 'movie_model.dart';

part 'movie_response.freezed.dart';
part 'movie_response.g.dart';

@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse({required List<MovieModel> results}) =
      _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}

extension MovieResponseX on MovieResponse {
  List<Movie> toEntity() => results.map((e) => e.toEntity()).toList();
}
