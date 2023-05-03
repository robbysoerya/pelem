import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_movie/domain/usecase/usecase.dart';

import 'upcoming_movies_event.dart';

class UpcomingMoviesBloc
    extends Bloc<UpcomingMoviesEvent, AppStates<List<Movie>>> {
  UpcomingMoviesBloc(this.getUpcomingMovies)
      : super(const AppStates.loading()) {
    on<UpcomingMoviesStarted>(_onUpcomingMoviesStarted);
  }

  final GetUpcomingMovies getUpcomingMovies;

  _onUpcomingMoviesStarted(
    UpcomingMoviesStarted event,
    Emitter<AppStates<List<Movie>>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getUpcomingMovies.execute();
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
