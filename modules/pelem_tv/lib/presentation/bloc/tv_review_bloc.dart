import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_tv/domain/usecase/usecase.dart';

import 'tv_review_event.dart';

class TVReviewBloc extends Bloc<TVReviewEvent, AppStates<List<TVReview>>> {
  TVReviewBloc(this.getTVReview) : super(const AppStates.loading()) {
    on<TVReviewStarted>(_onTVReviewStarted);
  }

  final GetTVReview getTVReview;

  _onTVReviewStarted(
    TVReviewStarted event,
    Emitter<AppStates<List<TVReview>>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getTVReview.execute(event.id);
    result.fold(
      (failure) => emit(AppStates.error(failure)),
      (reviews) => reviews.isEmpty
          ? emit(const AppStates.empty())
          : emit(AppStates.success(reviews)),
    );
  }
}
