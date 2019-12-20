import 'package:first_app/bloc/counter_bloc.dart';
import 'package:first_app/bloc/counter_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncrementButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc bloc = BlocProvider.of<CounterBloc>(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => _incrementCounter(bloc),
        ),
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () => _decrementCounter(bloc),
        ),
      ],
    );
  }

  void _incrementCounter(CounterBloc bloc) {
    bloc.add(IncrementCounter());
  }

  void _decrementCounter(CounterBloc bloc) {
    bloc.add(DecrementCounter());
  }
}
