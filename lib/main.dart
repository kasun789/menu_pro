import 'package:flutter/material.dart';
import 'package:menupro/pages/splashPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SplashPage(),
      ),
    );
  }
}
