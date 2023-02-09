import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_products_event.dart';
part 'fetch_products_state.dart';

class FetchProductsBloc extends Bloc<FetchProductsEvent, FetchProductsState> {
  FetchProductsBloc() : super(FetchProductsInitial()) {
    on<FetchProductsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
