import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_tv/domain/usecase/usecase.dart';

import 'popular_tv_event.dart';

class PopularTVBloc extends Bloc<PopularTVEvent, AppStates<List<TV>>> {
  final GetPopularTV getPopularTV;
  PopularTVBloc(this.getPopularTV) : super(const AppStates.loading()) {
    on<PopularTVStarted>(_onPopularTVStarted);
  }

  _onPopularTVStarted(
    PopularTVStarted event,
    Emitter<AppStates<List<TV>>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getPopularTV.execute();
    result.fold(
      (failure) => emit(AppStates.error(failure)),
      (tv) {
        tv.isEmpty
            ? emit(const AppStates.empty())
            : emit(AppStates.success(tv));
      },
    );
  }
}
