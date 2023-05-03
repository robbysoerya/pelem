import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_movie/domain/usecase/usecase.dart';

import 'movie_review_event.dart';

class MovieReviewBloc
    extends Bloc<MovieReviewEvent, AppStates<List<MovieReview>>> {
  final GetMovieReview getMovieReview;

  MovieReviewBloc({
    required this.getMovieReview,
  }) : super(const AppStates.loading()) {
    on<MovieReviewStarted>(_onMovieReviewStarted);
  }

  _onMovieReviewStarted(
    MovieReviewStarted event,
    Emitter<AppStates<List<MovieReview>>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getMovieReview.execute(event.id);
    emit(
      result.fold(
        (failure) => AppStates.error(failure),
        (reviews) => AppStates.success(reviews),
      ),
    );
  }
}
