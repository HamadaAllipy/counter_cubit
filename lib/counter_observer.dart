import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver{


  // cubit
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
      print('${bloc.runtimeType} $change');
  }


  // bloc
 @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
    print('transition $transition');
  }
}