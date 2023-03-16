// The CounterCubit class will expose two methods:
// increment: adds 1 to the current state
// decrement: subtracts 1 from the current state
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class CounterCubit extends Cubit<int> {
  /// {@macro counter_cubit}
  CounterCubit() : super(0);

  // emit ~ yeild
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
