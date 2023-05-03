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

  _onPopularMoviesStarted(
    PopularMoviesStarted event,
    Emitter<AppStates<List<Movie>>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getPopularMovies.execute();
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
