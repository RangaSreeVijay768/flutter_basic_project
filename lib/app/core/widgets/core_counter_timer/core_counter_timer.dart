import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/fonts.dart';
import '../base_stateless_widget.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import 'core_counter_timer_controller.dart';
import 'core_counter_timer_cubit.dart';


class CoreCounterTimer
    extends BaseStatelessWidget<
        CoreCounterTimerController,
        CoreCounterTimerCubit,
        CoreCounterTimerState> {

  CoreCounterTimer({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countUp,
  );


  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoreCounterTimerCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<CoreCounterTimerCubit, CoreCounterTimerState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return InkWell(
            onTap: ()=> getCubit(context).stopTimer(),
            child: Column(
              children: [
                StreamBuilder(
                  stream: state.stopWatchTimer?.rawTime,
                  initialData: state.stopWatchTimer?.rawTime.value,
                  builder: (context, snap) {
                    final value = snap.data!;
                    final displayTime =
                    StopWatchTimer.getDisplayTime(value, hours: false, milliSecond: false);
                    return Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            displayTime,
                            style: const TextStyle(
                              fontSize: Fonts.fontSize16,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     TextButton(
                //         onPressed: ()=> _stopWatchTimer.onStartTimer,
                //         child: Text("Start")
                //     ),
                //     TextButton(
                //         onPressed: ()=> _stopWatchTimer.onStopTimer(),
                //         child: Text("Stop")
                //     ),
                //     TextButton(
                //         onPressed: ()=> _stopWatchTimer.onResetTimer(),
                //         child: Text("Reset")
                //     )
                //   ],
                // ),

              ],
            ),
          );
        },
      ),
    );
  }

  @override
  CoreCounterTimerCubit createCubitAndAssignToController(BuildContext context) {
    CoreCounterTimerCubit cubit = CoreCounterTimerCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
