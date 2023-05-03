import 'package:dartz/dartz.dart';
import 'package:pelem_core/domain/entities/entities.dart';
import 'package:pelem_core/utils/utils.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getUpcomingMovies();
  Future<Either<Failure, MovieDetail>> getMovieDetail(int id);
  Future<Either<Failure, List<MovieReview>>> getMovieReviews(int id);
}
