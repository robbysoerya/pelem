import 'package:pelem_core/data/models/models.dart';
import 'package:pelem_core/network/network.dart';
import 'package:pelem_core/utils/utils.dart';

abstract class TVRemoteDataSource {
  Future<TVResponse> getOnTheAirTV();

  Future<TVResponse> getPopularTV(int page);

  Future<TVDetailResponse> getTVDetail(int id);

  Future<TVReviewResponse> getTVReview(int id);
}

class TVRemoteDataSourceImpl implements TVRemoteDataSource {
  const TVRemoteDataSourceImpl({required this.ns});

  final NetworkService ns;

  @override
  Future<TVResponse> getOnTheAirTV() async {
    final response = await ns.get('/tv/on_the_air');

    if (response.statusCode == 200) {
      return TVResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TVResponse> getPopularTV(int page) async {
    final response = await ns.get('/tv/popular?page=$page');

    if (response.statusCode == 200) {
      return TVResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TVDetailResponse> getTVDetail(int id) async {
    final response = await ns.get('/tv/$id');

    if (response.statusCode == 200) {
      return TVDetailResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TVReviewResponse> getTVReview(int id) async {
    final response = await ns.get('/tv/$id/reviews');

    if (response.statusCode == 200) {
      return TVReviewResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
