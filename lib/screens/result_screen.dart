import 'package:flutter/material.dart';
import 'dart:math';
import 'package:game_of_sulif/models/choice.dart';
import 'package:game_of_sulif/screens/home_screen.dart';

class ResultScreen extends StatelessWidget {
  final Choice playerChoice;

  const ResultScreen({super.key, required this.playerChoice});

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

    return Scaffold(
      appBar: AppBar(title: const Text("Результат")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Вы выбрали: ${playerChoice.name}",
              style: const TextStyle(fontSize: 20),
            ),
            Image.asset(playerChoice.imagePath, width: 100),
            const SizedBox(height: 20),
            Text(
              "Противник выбрал: ${opponentChoice.name}",
              style: const TextStyle(fontSize: 20),
            ),
            Image.asset(opponentChoice.imagePath, width: 100),
            const SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Еще раз"),
            ),
          ],
        ),
      ),
    );
  }
}
