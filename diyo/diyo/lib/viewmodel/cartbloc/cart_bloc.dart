import 'package:bloc/bloc.dart';
import 'package:diyo/model/products.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartInitial> {
  CartBloc() : super(CartInitial(0)) {
    on(_addbasket);
    on(_removebasket);
  }

  void _addbasket(CartEvent event, Emitter emit) {
    var a = (event is CartProductAdd)
        ? CartInitial(state.value! + 1)
        : CartInitial(state.value! - 1);
    emit(a);
  }

  void _removebasket(CartEvent event, Emitter emit) {
    var a = (event is CartProductRemove)
        ? CartInitial(state.value! - 1)
        : CartInitial(state.value! + 1);
    emit(a);
  }
}
