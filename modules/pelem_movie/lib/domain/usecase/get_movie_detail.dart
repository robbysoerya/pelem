import 'package:dartz/dartz.dart';
import 'package:pelem_core/core.dart';

class GetMovieDetail {
  GetMovieDetail(this.repository);

  final MovieRepository repository;

  Future<Either<Failure, MovieDetail>> execute(int id) {
    return repository.getMovieDetail(id);
  }
}
