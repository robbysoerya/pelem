import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_movie/domain/usecase/usecase.dart';

import 'now_playing_movies_event.dart';

class NowPlayingMoviesBloc
    extends Bloc<NowPlayingMoviesEvent, AppStates<List<Movie>>> {
  NowPlayingMoviesBloc(this.getNowPlayingMovies)
      : super(const AppStates.loading()) {
    on<NowPlayingMoviesStarted>(_onNowPlayingMoviesStarted);
  }

  final GetNowPlayingMovies getNowPlayingMovies;

  _onNowPlayingMoviesStarted(
    NowPlayingMoviesStarted event,
    Emitter<AppStates<List<Movie>>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getNowPlayingMovies.execute();
    result.fold(
      (failure) => emit(AppStates.error(failure)),
      (movies) {
        movies.isEmpty
            ? emit(const AppStates.empty())
            : emit(AppStates.success(movies));
      },
    );
  }
}
