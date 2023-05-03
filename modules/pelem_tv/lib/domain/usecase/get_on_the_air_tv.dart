import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetOnTheAirTV {
  final TVRepository repository;

  GetOnTheAirTV(this.repository);

  Future<Either<Failure, List<TV>>> execute() {
    return repository.getOnTheAirTV();
  }
}
