import 'package:flutter/material.dart';
import 'package:game_of_sulif/models/choice.dart';

class ChoiceButton extends StatelessWidget {
  final Choice choice;
  final VoidCallback onTap;

  const ChoiceButton({super.key, required this.choice, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.blueAccent.shade100,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue, width: 2),
        ),
        child: Column(
          children: [
            Image.asset(choice.imagePath, width: 80, height: 80),
            SizedBox(height: 10),
            Text(
              choice.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
