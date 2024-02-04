part of 'counter_cubit.dart';

abstract class CounterCubitState {
  final int sayac;
  const CounterCubitState({required this.sayac});
}

class CounterCubitInitial extends CounterCubitState {
  const CounterCubitInitial({required int baslangicDegeri})
      : super(sayac: baslangicDegeri);
}

class MyCounterCubitState extends CounterCubitState {
  const MyCounterCubitState({required int sayacDegeri})
      : super(sayac: sayacDegeri);
}
