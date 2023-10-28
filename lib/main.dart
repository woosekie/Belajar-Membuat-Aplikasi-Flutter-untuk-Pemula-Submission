import 'package:flutter/material.dart';
import 'package:pokebuddy/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PokeBuddy: Teman Sejati Pokémon",
      theme: ThemeData(
        primaryColor: const Color(0xffF77F00),
      ),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}