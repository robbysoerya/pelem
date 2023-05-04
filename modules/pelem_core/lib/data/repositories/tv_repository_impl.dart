import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:pelem_core/data/datasources/datasources.dart';
import 'package:pelem_core/data/models/models.dart';
import 'package:pelem_core/domain/entities/entities.dart';
import 'package:pelem_core/domain/repositories/repositories.dart';
import 'package:pelem_core/utils/utils.dart';

class TVRepositoryImpl implements TVRepository {
  const TVRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  final NetworkInfo networkInfo;
  final TVRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, List<TV>>> getOnTheAirTV() async {
    try {
      final result = await remoteDataSource.getOnTheAirTV();
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
  Future<Either<Failure, List<TV>>> getPopularTV(int page) async {
    try {
      final result = await remoteDataSource.getPopularTV(page);
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
  Future<Either<Failure, TVDetail>> getTVDetail(int id) async {
    try {
      final result = await remoteDataSource.getTVDetail(id);
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
  Future<Either<Failure, List<TVReview>>> getTVReview(int id) async {
    try {
      final result = await remoteDataSource.getTVReview(id);
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
