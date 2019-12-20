import 'package:bloc/bloc.dart';
import 'package:first_app/bloc/counter_events.dart';
import 'package:first_app/bloc/counter_states.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int _counter;

  CounterBloc() : _counter = 0;

  @override
  CounterState get initialState => ValueState(counter: _counter);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementCounter) {
      _counter++;
    } else if (event is DecrementCounter) {
      _counter--;
    }

    yield ValueState(counter: _counter);
  }
}
