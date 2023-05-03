import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pelem_core/domain/entities/entities.dart';

part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@freezed
class GenreModel with _$GenreModel {
  const factory GenreModel({
    required int id,
    required String name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}

extension GenreModelX on GenreModel {
  Genre toEntity() => Genre(
        id: id,
        name: name,
      );
}
