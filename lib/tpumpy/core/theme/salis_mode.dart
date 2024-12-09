import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData tpumpyMode = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color.fromARGB(255, 1, 1, 42),
        onPrimary: const Color.fromARGB(255, 255, 232, 232),
        secondary: AppColor.secondaryColor,
        tertiary: Colors.orange,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.grey.shade100,
        onSurface: Colors.grey.shade700));
