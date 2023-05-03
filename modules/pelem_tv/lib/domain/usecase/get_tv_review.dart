import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetTVReview {
  final TVRepository repository;
  const GetTVReview(this.repository);

  Future<Either<Failure, List<TVReview>>> execute(int id) {
    return repository.getTVReview(id);
  }
}
