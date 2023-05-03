import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetTVDetail {
  final TVRepository repository;

  GetTVDetail(this.repository);

  Future<Either<Failure, TVDetail>> execute(int id) {
    return repository.getTVDetail(id);
  }
}
