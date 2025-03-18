import 'package:flutter/material.dart';
import 'package:game_of_sulif/models/choice.dart';
import 'package:game_of_sulif/screens/result_screen.dart';
import '../widgets/choice_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _onChoiceSelected(BuildContext context, Choice playerChoice) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(playerChoice: playerChoice),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Камень-Ножницы-Бумага')),
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
