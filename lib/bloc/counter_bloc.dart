import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterBlocState> {
  CounterBloc() : super(CounterBlocInitial(baslangicDegeri: 10)) {
    on<ArttirCounterEvent>((event, emit) {
      emit(MyCounterBlocState(sayacDegeri: state.sayac + 1));
    });

    on<AzaltCounterEvent>((event, emit) {
      emit(MyCounterBlocState(sayacDegeri: state.sayac - 1));
    });
  }
}
