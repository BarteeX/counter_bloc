import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';
import 'bloc/counter_states.dart';

class IncrementForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'You have pushed the button this many times:',
        ),
        BlocBuilder<CounterBloc, CounterState>(
          bloc: BlocProvider.of<CounterBloc>(context),
          builder: (context, state) {
            return Text(
              '${state.counter}',
              style: Theme.of(context).textTheme.display1,
            );
          },
        )
      ],
    );
  }
}
