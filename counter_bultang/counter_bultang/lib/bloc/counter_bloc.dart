import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on(_increment1);
  }

  void _increment1(CounterEvent event, Emitter emit) {
    var a = (event is Increment1)
        ? CounterState(
            (state.value1!.isNegative) ? state.value1 = 0 : state.value1! + 1)
        : CounterState(
            (state.value1!.isNegative) ? state.value1 = 0 : state.value1! - 1);
    emit(a);
    var b = (event is Reset1)
        ? CounterState(state.value1 = 0)
        : CounterState(state.value1);
    emit(b);
  }
}
