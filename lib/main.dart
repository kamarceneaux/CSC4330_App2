import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const WeightliftingApp());
}

class WeightliftingApp extends StatelessWidget {
  const WeightliftingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weightlifting App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
