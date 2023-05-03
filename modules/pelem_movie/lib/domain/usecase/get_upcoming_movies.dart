import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetUpcomingMovies {
  final MovieRepository repository;

  GetUpcomingMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getUpcomingMovies();
  }
}
