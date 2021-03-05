import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:starterkit/observer.dart';

import 'app.dart';

void main() {
  Bloc.observer = Observer();
  runApp(const App());
}
