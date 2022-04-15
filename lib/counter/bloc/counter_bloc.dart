import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class CounterBloc extends Bloc<CounterEvents, int>{

  CounterBloc() : super(0){
    on<IncrementEvent>(_onIncrement);
    on<DecrementEvent>(_onDecrement);
  }

  void _onIncrement(event, emit) => emit(state + 1);
  void _onDecrement(event, emit) => emit(state - 1);
}