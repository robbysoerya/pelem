import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_tv/domain/usecase/usecase.dart';

import 'on_the_air_tv_event.dart';

class OnTheAirTVBloc extends Bloc<OnTheAirTVEvent, AppStates<List<TV>>> {
  final GetOnTheAirTV getNowPlayingTV;
  OnTheAirTVBloc(this.getNowPlayingTV) : super(const AppStates.loading()) {
    on<OnTheAirTVStarted>(_onTheAirTVStarted);
  }

  _onTheAirTVStarted(
    OnTheAirTVStarted event,
    Emitter<AppStates<List<TV>>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getNowPlayingTV.execute();
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
