import 'package:flutter/material.dart';
import '../models/game_stats.dart';

class StatsScreen extends StatelessWidget {
  final GameStats gameStats;

  const StatsScreen({super.key, required this.gameStats});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Статистика')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ваши победы: ${gameStats.wins}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Поражения: ${gameStats.losses}',
              style: TextStyle(fontSize: 20),
            ),
            Text('Ничьи: ${gameStats.draws}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Назад'),
            ),
          ],
        ),
      ),
    );
  }
}
