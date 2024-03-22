import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import '../../blocs/base_cubit.dart';
import '../../database/boolean_status.dart';

part 'core_counter_timer_state.dart';

part 'core_counter_timer_cubit.freezed.dart';

class CoreCounterTimerCubit extends BaseCubit<CoreCounterTimerState> {
  CoreCounterTimerCubit({required super.context})
      : super(
            initialState: CoreCounterTimerState.initial(
                stopWatchTimer: StopWatchTimer(mode: StopWatchMode.countUp),
            )) {
    state.stopWatchTimer?.onStartTimer();
    emitState(state.copyWith(stopWatchTimerStatus: BooleanStatus.start));
  }

  stopTimer(){
    state.stopWatchTimer!.onStopTimer();
    emitState(state.copyWith(stopWatchTimerStatus: BooleanStatus.stop));
  }
}
