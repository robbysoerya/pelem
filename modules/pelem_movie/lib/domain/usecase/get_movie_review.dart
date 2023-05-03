import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetMovieReview {
  GetMovieReview(this.repository);

  final MovieRepository repository;

  Future<Either<Failure, List<MovieReview>>> execute(int id) {
    return repository.getMovieReviews(id);
  }
}
