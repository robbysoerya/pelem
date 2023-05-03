import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:pelem_core/data/datasources/datasources.dart';
import 'package:pelem_core/data/models/models.dart';
import 'package:pelem_core/domain/entities/entities.dart';
import 'package:pelem_core/domain/repositories/repositories.dart';
import 'package:pelem_core/utils/utils.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  final NetworkInfo networkInfo;
  final MovieRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, MovieDetail>> getMovieDetail(int id) async {
    try {
      final result = await remoteDataSource.getMovieDetail(id);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(SocketFailure());
    } on TlsException {
      return const Left(SSLFailure());
    }
  }

  @override
  Future<Either<Failure, List<MovieReview>>> getMovieReviews(int id) async {
    try {
      final result = await remoteDataSource.getMovieReviews(id);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(SocketFailure());
    } on TlsException {
      return const Left(SSLFailure());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    try {
      final result = await remoteDataSource.getNowPlayingMovies();
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(SocketFailure());
    } on TlsException {
      return const Left(SSLFailure());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    try {
      final result = await remoteDataSource.getPopularMovies();
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(SocketFailure());
    } on TlsException {
      return const Left(SSLFailure());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getUpcomingMovies() async {
    try {
      final result = await remoteDataSource.getUpcomingMovies();
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(SocketFailure());
    } on TlsException {
      return const Left(SSLFailure());
    }
  }
}
