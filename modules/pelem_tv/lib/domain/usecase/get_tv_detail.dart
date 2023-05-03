import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetTVDetail {
  GetTVDetail(this.repository);

  final TVRepository repository;

  Future<Either<Failure, TVDetail>> execute(int id) {
    return repository.getTVDetail(id);
  }
}
