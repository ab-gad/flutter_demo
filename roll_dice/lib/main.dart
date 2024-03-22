import 'package:flutter/material.dart';
import 'package:roll_dice/gardient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    );
  }
}
