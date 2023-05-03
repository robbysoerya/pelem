import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_tv/domain/usecase/usecase.dart';

import 'tv_detail_event.dart';

class TVDetailBloc extends Bloc<TVDetailEvent, AppStates<TVDetail>> {
  final GetTVDetail getTVDetail;

  TVDetailBloc({
    required this.getTVDetail,
  }) : super(const AppStates.loading()) {
    on<TVDetailStarted>(_onTVDetailStarted);
  }

  _onTVDetailStarted(
    TVDetailStarted event,
    Emitter<AppStates<TVDetail>> emit,
  ) async {
    emit(const AppStates.loading());
    final result = await getTVDetail.execute(event.id);
    result.fold(
      (failure) => emit(AppStates.error(failure)),
      (tv) {
        emit(AppStates.success(tv));
      },
    );
  }
}
