import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {
  final int counter;

  CounterState({this.counter});

  @override
  List<Object> get props => [counter];

  @override
  String toString() {
    return 'CounterState value = $counter';
  }
}

class ValueState extends CounterState {
  ValueState({int counter}) : super(counter: counter);
}
