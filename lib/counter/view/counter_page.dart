import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/counter/counter.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}

// The CounterPage widget is responsible for creating a CounterCubit (which we will look at next) and providing it to the CounterView.

class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        // which provides a bloc to its children.
        create: (_) => CounterCubit(),
        child: const CounterView());
  }
}
// It's important to separate or decouple the creation of a Cubit from the consumption of a Cubit in order to have code that is much more testable and reusable.
