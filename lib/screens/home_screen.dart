import 'package:flutter/material.dart';
import '../models/choice.dart';
import 'result_screen.dart';
import '../widgets/choice_button.dart';
import '../models/game_stats.dart';

class HomeScreen extends StatelessWidget {
  final GameStats gameStats;

  const HomeScreen({super.key, required this.gameStats});

  void _onChoiceSelected(BuildContext context, Choice playerChoice) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) =>
                ResultScreen(playerChoice: playerChoice, gameStats: gameStats),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Камень-Ножницы-Бумага')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              choices.map((choice) {
                return ChoiceButton(
                  choice: choice,
                  onTap: () => _onChoiceSelected(context, choice),
                );
              }).toList(),
        ),
      ),
    );
  }
}
