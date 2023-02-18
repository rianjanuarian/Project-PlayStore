import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on(_incerement);
  }
  void _incerement(CounterEvent event, Emitter emit) {
    var a = (event is Increment)
        ? CounterState(
            (state.value!.isNegative) ? state.value = 0 : state.value! + 1)
        : CounterState(
            (state.value!.isNegative) ? state.value = 0 : state.value! - 1);
    emit(a);
  }
}
