part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class CartStarted extends CartEvent {}

class CartProductAdd extends CartEvent {}

class CartProductRemove extends CartEvent {}
