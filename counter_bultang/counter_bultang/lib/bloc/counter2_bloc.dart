import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter2_event.dart';
part 'counter2_state.dart';

class Counter2Bloc extends Bloc<Counter2Event, Counter2State> {
  Counter2Bloc() : super(Counter2State(0)) {
    on(_increment2);
  }
  void _increment2(Counter2Event event, Emitter emit) {
    var b = (event is Increment2)
        ? Counter2State(
            (state.value2!.isNegative) ? state.value2 = 0 : state.value2! + 1)
        : Counter2State(
            (state.value2!.isNegative) ? state.value2 = 0 : state.value2! - 1);
    emit(b);
    var c = (event is Reset2)
        ? Counter2State(state.value2 = 0)
        : Counter2State(state.value2);
    emit(c);
  }
}
