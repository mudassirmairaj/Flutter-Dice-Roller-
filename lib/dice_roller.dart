import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  var currentRollDice = 1;
  void rollDice() {
    setState(() {
      currentRollDice = randomizer.nextInt(6) + 1;
      print(currentRollDice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentRollDice.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          onPressed: rollDice,
          child: const Text(
            'Roll Dice',
          ),
        )
      ],
    );
  }
}
