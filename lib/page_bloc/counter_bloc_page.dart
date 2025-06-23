import 'package:counter_bloc_example/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Bloc')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                'Counter ${state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementEvent());
                },
                icon: const Icon(Icons.add),
                label: const Text(''),
              ),
              TextButton.icon(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementEvent());
                },
                icon: const Icon(Icons.remove),
                label: const Text(''),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
