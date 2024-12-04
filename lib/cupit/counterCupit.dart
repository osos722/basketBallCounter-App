import 'package:flutter_bloc/flutter_bloc.dart';

import 'counterState.dart';

class CounterCupit extends Cubit<CounterState>{
  CounterCupit():super(CounterIncrementAState());

  int counterApoint=0;
  int CounterBpoint=0;

  void teamApoint(int buttonNumper){
    counterApoint+=buttonNumper;
    emit(CounterIncrementAState());
  }

  void teamBpoint(int buttonNumper){
    CounterBpoint+=buttonNumper;
    emit(CounterIncrementBState());
  }

}