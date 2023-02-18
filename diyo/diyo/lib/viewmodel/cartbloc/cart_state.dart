part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

@immutable
class CartInitial extends CartState {
  final int? value;
  CartInitial(this.value);
}

class CartLoaded extends CartState {}

class CartError extends CartState {}

class CartCounter extends CartState {}
