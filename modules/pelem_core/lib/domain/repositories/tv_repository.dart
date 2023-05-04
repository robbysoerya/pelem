import 'package:dartz/dartz.dart';
import 'package:pelem_core/domain/entities/entities.dart';
import 'package:pelem_core/utils/utils.dart';

abstract class TVRepository {
  Future<Either<Failure, List<TV>>> getOnTheAirTV();

  Future<Either<Failure, List<TV>>> getPopularTV(int page);

  Future<Either<Failure, TVDetail>> getTVDetail(int id);

  Future<Either<Failure, List<TVReview>>> getTVReview(int id);
}
