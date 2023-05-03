import 'package:pelem_core/data/models/models.dart';
import 'package:pelem_core/network/network.dart';
import 'package:pelem_core/utils/utils.dart';

abstract class MovieRemoteDataSource {
  Future<MovieResponse> getNowPlayingMovies();

  Future<MovieResponse> getPopularMovies();

  Future<MovieResponse> getUpcomingMovies();

  Future<MovieDetailModel> getMovieDetail(int id);

  Future<MovieReviewResponse> getMovieReviews(int id);
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  MovieRemoteDataSourceImpl({required this.ns});

  final NetworkService ns;

  @override
  Future<MovieDetailModel> getMovieDetail(int id) async {
    final response = await ns.get('/movie/$id');

    if (response.statusCode == 200) {
      return MovieDetailModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<MovieReviewResponse> getMovieReviews(int id) async {
    final response = await ns.get('/movie/$id/reviews');

    if (response.statusCode == 200) {
      return MovieReviewResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<MovieResponse> getNowPlayingMovies() async {
    final response = await ns.get('/movie/now_playing');

    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<MovieResponse> getPopularMovies() async {
    final response = await ns.get('/movie/popular');

    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<MovieResponse> getUpcomingMovies() async {
    final response = await ns.get('/movie/upcoming');

    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
