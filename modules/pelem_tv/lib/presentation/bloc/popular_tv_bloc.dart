import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_tv/domain/usecase/usecase.dart';

import 'popular_tv_event.dart';

class PopularTVBloc extends Bloc<PopularTVEvent, AppStates<List<TV>>> {
  PopularTVBloc(this.getPopularTV) : super(const AppStates.loading()) {
    on<PopularTVStarted>(_onPopularTVStarted);
  }

  final GetPopularTV getPopularTV;
  int _page = 1;

  _onPopularTVStarted(
    PopularTVStarted event,
    Emitter<AppStates<List<TV>>> emit,
  ) async {
    final currentState = state;
    final result = await getPopularTV.execute(_page);
    result.fold(
      (failure) => emit(AppStates.error(failure)),
      (tv) {
        _page++;
        tv.isEmpty
            ? emit(const AppStates.empty())
            : currentState is Success
                ? _onLoadMore(tv, emit)
                : emit(AppStates.success(tv));
      },
    );
  }

  _onLoadMore(
    List<TV> tv,
    Emitter<AppStates<List<TV>>> emit,
  ) {
    final currentState = state as Success;
    final currentData = currentState.data;
    emit(AppStates.success([...currentData, ...tv]));
  }
}
