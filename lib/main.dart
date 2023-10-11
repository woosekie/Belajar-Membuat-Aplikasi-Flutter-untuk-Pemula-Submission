import 'package:flutter/material.dart';
import 'package:pokebuddy/detail_item_screen.dart';
import 'package:pokebuddy/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PokeBuddy: Teman Sejati Pokémon",
      theme: ThemeData(
        primaryColor: Colors.cyan
      ),
      home: MainScreen(),
    );
  }
}