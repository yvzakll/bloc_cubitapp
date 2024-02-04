part of 'counter_bloc.dart';

@immutable
abstract class CounterBlocState {
  final int sayac;
  const CounterBlocState({required this.sayac});
}

class CounterBlocInitial extends CounterBlocState {
  const CounterBlocInitial({required int baslangicDegeri})
      : super(sayac: baslangicDegeri);
}

class MyCounterBlocState extends CounterBlocState {
  MyCounterBlocState({required int sayacDegeri}) : super(sayac: sayacDegeri);
}
