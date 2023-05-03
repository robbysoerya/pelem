import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetPopularMovies {
  GetPopularMovies(this.repository);

  final MovieRepository repository;

  Future<Either<Failure, List<Movie>>> execute(int page) {
    return repository.getPopularMovies(page);
  }
}
