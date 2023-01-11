part of 'counter2_bloc.dart';

@immutable
abstract class Counter2Event {}

class Increment2 extends Counter2Event {}

class Decrement2 extends Counter2Event {}

class Reset2 extends Counter2Event {}
