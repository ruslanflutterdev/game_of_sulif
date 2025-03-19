import 'package:flutter/material.dart';
import 'dart:math';
import 'package:game_of_sulif/models/choice.dart';
import 'package:game_of_sulif/models/game_stats.dart';
import 'package:game_of_sulif/screens/home_screen.dart';

import 'stats_screen.dart';

class ResultScreen extends StatelessWidget {
  final Choice playerChoice;
  final GameStats gameStats;

  const ResultScreen({
    super.key,
    required this.playerChoice,
    required this.gameStats,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final Choice opponentChoice = choices[random.nextInt(choices.length)];

    String result;
    if (playerChoice == opponentChoice) {
      result = "Ничья!";
    } else if ((playerChoice.name == "Камень" &&
            opponentChoice.name == "Ножницы") ||
        (playerChoice.name == "Ножницы" && opponentChoice.name == "Бумага") ||
        (playerChoice.name == "Бумага" && opponentChoice.name == "Камень")) {
      result = "Вы победили!";
    } else {
      result = "Вы проиграли!";
    }
    gameStats.updateStats(result);

    return Scaffold(
      appBar: AppBar(title: Text("Результат")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Вы выбрали: ${playerChoice.name}",
              style: TextStyle(fontSize: 20),
            ),
            Image.asset(playerChoice.imagePath, width: 100),
            SizedBox(height: 20),
            Text(
              "Противник выбрал: ${opponentChoice.name}",
              style: TextStyle(fontSize: 20),
            ),
            Image.asset(opponentChoice.imagePath, width: 100),
            SizedBox(height: 20),
            Text(
              result,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(gameStats: gameStats),
                  ),
                );
              },
              child: Text("Еще раз"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StatsScreen(gameStats: gameStats),
                  ),
                );
              },
              child: Text('Статистика'),
            ),
          ],
        ),
      ),
    );
  }
}
