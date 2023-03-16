import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/app.dart';
import 'package:flutter_counter/bloc_observer.dart';

void main(List<String> args) {
  Bloc.observer = const CountObserver();
  runApp(const CounterApp());
}
