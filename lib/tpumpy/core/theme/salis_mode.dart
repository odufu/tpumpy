import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData tpumpyMode = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color.fromARGB(255, 41, 29, 53),
        onPrimary: const Color.fromARGB(255, 255, 232, 232),
        secondary: const Color.fromARGB(255, 205, 157, 72),
        tertiary: const Color.fromARGB(255, 138, 117, 149),
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.grey.shade100,
        onSurface: Colors.grey.shade700));
