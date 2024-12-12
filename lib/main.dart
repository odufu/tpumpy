import 'package:flutter/material.dart';
import 'package:tpumpy/tpumpy/admin/presentation/pages/admin_pannel_page.dart';
import 'package:tpumpy/tpumpy/auth/presentation/pages/splash_screen.dart';
import 'package:tpumpy/tpumpy/core/theme/salis_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tpumpy App',
      theme: tpumpyMode,
      home: AdminPanelPage(),
    );
  }
}
