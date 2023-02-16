import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_event.dart';
part 'fetch_state.dart';

class FetchBloc extends Bloc<FetchEvent, FetchState> {
  FetchBloc() : super(FetchInitial()) {
    on<FetchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
