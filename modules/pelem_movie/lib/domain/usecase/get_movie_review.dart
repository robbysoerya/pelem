import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetMovieReview {
  final MovieRepository repository;

  GetMovieReview(this.repository);

  Future<Either<Failure, List<MovieReview>>> execute(int id) {
    return repository.getMovieReviews(id);
  }
}
