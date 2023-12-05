import 'package:calculator_love/home.dart';
import 'package:calculator_love/result.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:ResultPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
