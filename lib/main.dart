import 'package:flutter/material.dart';
import 'package:game_of_sulif/screens/home_screen.dart';
import 'models/game_stats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Камень-Ножницы-Бумага',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(gameStats: GameStats()),
    );
  }
}
