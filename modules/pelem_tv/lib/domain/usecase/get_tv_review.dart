import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetTVReview {
  const GetTVReview(this.repository);

  final TVRepository repository;

  Future<Either<Failure, List<TVReview>>> execute(int id) {
    return repository.getTVReview(id);
  }
}
