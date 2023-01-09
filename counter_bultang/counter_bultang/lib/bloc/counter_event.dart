part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Increment1 extends CounterEvent {}

class Decrement1 extends CounterEvent {}
