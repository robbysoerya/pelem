import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetPopularTV {
  GetPopularTV(this.repository);

  final TVRepository repository;

  Future<Either<Failure, List<TV>>> execute() {
    return repository.getPopularTV();
  }
}
