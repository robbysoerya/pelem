import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetPopularTV {
  final TVRepository repository;

  GetPopularTV(this.repository);

  Future<Either<Failure, List<TV>>> execute() {
    return repository.getPopularTV();
  }
}
