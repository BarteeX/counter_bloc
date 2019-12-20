// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:first_app/bloc/counter_bloc.dart';
import 'package:first_app/bloc/counter_events.dart';
import 'package:first_app/bloc/counter_states.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Counter bloc test', () {
    List<CounterState> expectedValues = [
      ValueState(counter: 0),
      ValueState(counter: 1),
      ValueState(counter: 2),
      ValueState(counter: 3),
      ValueState(counter: 2),
      ValueState(counter: 1),
      ValueState(counter: 0),
    ];

    CounterBloc counterBloc = CounterBloc();

    expectLater(counterBloc.cast(), emitsInOrder(expectedValues));

    counterBloc.add(IncrementCounter());
    counterBloc.add(IncrementCounter());
    counterBloc.add(IncrementCounter());

    counterBloc.add(DecrementCounter());
    counterBloc.add(DecrementCounter());
    counterBloc.add(DecrementCounter());
  });
}
