import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetTVSeasonDetail {
  final TVRepository repository;

  GetTVSeasonDetail(this.repository);

  Future<Either<Failure, TVSeasonsDetail>> execute(int id, int season) {
    return repository.getSeasonDetail(id, season);
  }
}
