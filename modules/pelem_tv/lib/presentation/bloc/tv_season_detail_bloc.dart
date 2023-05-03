import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_tv/domain/usecase/usecase.dart';

import 'tv_season_detail_event.dart';

class TVSeasonDetailBloc
    extends Bloc<TVSeasonDetailEvent, AppStates<TVSeasonsDetail>> {
  final GetTVSeasonDetail getTVSeasonDetail;
  TVSeasonDetailBloc(this.getTVSeasonDetail)
      : super(const AppStates.loading()) {
    on<TVSeasonDetailStarted>(_onTVSeasonDetailStarted);
  }

  _onTVSeasonDetailStarted(
    TVSeasonDetailStarted event,
    Emitter<AppStates<TVSeasonsDetail>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getTVSeasonDetail.execute(event.id, event.season);
    result.fold(
      (failure) => emit(AppStates.error(failure)),
      (seasonsDetail) => emit(AppStates.success(seasonsDetail)),
    );
  }
}
