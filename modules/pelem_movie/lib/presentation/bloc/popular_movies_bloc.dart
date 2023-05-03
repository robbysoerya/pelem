import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_movie/domain/usecase/usecase.dart';

import 'popular_movies_event.dart';

class PopularMoviesBloc
    extends Bloc<PopularMoviesEvent, AppStates<List<Movie>>> {
  PopularMoviesBloc(this.getPopularMovies) : super(const AppStates.loading()) {
    on<PopularMoviesStarted>(_onPopularMoviesStarted);
  }

  final GetPopularMovies getPopularMovies;
  int _page = 1;

  _onPopularMoviesStarted(
    PopularMoviesStarted event,
    Emitter<AppStates<List<Movie>>> emit,
  ) async {
    final currentState = state;
    final result = await getPopularMovies.execute(_page);
    result.fold(
      (failure) => emit(AppStates.error(failure)),
      (movies) {
        _page++;
        movies.isEmpty
            ? emit(const AppStates.empty())
            : currentState is Success
                ? _onLoadMore(movies, emit)
                : emit(AppStates.success(movies));
      },
    );
  }

  _onLoadMore(
    List<Movie> movies,
    Emitter<AppStates<List<Movie>>> emit,
  ) {
    final currentState = state;
    if (currentState is Success) {
      final currentData = currentState.maybeWhen(
        success: (data) => data,
        orElse: () => [],
      );
      emit(AppStates.success([...currentData, ...movies]));
    }
  }
}
