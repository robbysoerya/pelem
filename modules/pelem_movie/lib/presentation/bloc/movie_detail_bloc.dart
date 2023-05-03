import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_movie/domain/usecase/usecase.dart';

import 'movie_detail_event.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, AppStates<MovieDetail>> {
  final GetMovieDetail getMovieDetail;

  MovieDetailBloc({
    required this.getMovieDetail,
  }) : super(const AppStates.loading()) {
    on<MovieDetailStarted>(_onMovieDetailStarted);
  }

  _onMovieDetailStarted(
    MovieDetailStarted event,
    Emitter<AppStates<MovieDetail>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getMovieDetail.execute(event.id);
    result.fold(
      (failure) => emit(AppStates.error(failure)),
      (movie) => emit(AppStates.success(movie)),
    );
  }
}
