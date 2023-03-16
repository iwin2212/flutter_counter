import 'dart:developer';

import 'package:bloc/bloc.dart';

/// {@template observer}
/// [BlocObserver] which observes all state changes.
/// {@endtemplate}
class CountObserver extends BlocObserver {
  /// {@macro counter_observer}
  const CountObserver();

  // overriding onChange to see all state changes that occur.
  // onChange works the same way for both Bloc and Cubit instances.
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('${bloc.runtimeType} $change');
  }
}
