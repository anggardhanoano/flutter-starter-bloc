import 'package:flutter/material.dart';

final theme = ThemeData(
  primaryColorDark: const Color(0xFF188526),
  primaryColorLight: const Color(0xFFB2EBF2),
  primaryColor: const Color(0xFF3AB54A),
  accentColor: const Color(0xFFE96200),
  scaffoldBackgroundColor: Colors.white,
  inputDecorationTheme: InputDecorationTheme(
    border: UnderlineInputBorder(),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFE96200)),
    ),
  ),
);
