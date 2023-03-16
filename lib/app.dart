import 'package:flutter/material.dart';

import 'counter/view/counter_page.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  const CounterApp({super.key}) : super(home: const CounterPage());
}
// In most cases, we're going to be creating StatelessWidget or StatefulWidget instances and composing widgets in build but in this case there are no widgets to compose so it's simpler to just extend MaterialApp.
