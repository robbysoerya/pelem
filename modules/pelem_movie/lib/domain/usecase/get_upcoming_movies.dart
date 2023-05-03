import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetUpcomingMovies {
  GetUpcomingMovies(this.repository);

  final MovieRepository repository;

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getUpcomingMovies();
  }
}
