import 'package:flutter/material.dart';
import 'package:practico_1/designers.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        useMaterial3: true,
        cardTheme: const CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 10,
          ),
        ),
      ),
      home: const Designers(),
    );
  }
}
