import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetNowPlayingMovies {
  GetNowPlayingMovies(this.repository);

  final MovieRepository repository;

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getNowPlayingMovies();
  }
}
