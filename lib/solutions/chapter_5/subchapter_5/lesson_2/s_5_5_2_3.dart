import 'dart:math';

import 'package:flutter/material.dart';

class S5523 extends StatelessWidget {
  const S5523({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyDice();
  }
}

class MyDice extends StatefulWidget {
  const MyDice({super.key});

  @override
  State<MyDice> createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  String _resultText = '';
  Future<void> _rollDice() async {
    setState(() {
      _resultText = 'Würfel wird geworfen...';
    });

    try {
      // Simuliere das Würfeln (Dauer: 2 Sekunden)
      await Future.delayed(const Duration(seconds: 2));

      // Zufällig entscheiden, ob ein Fehler auftritt
      bool hasError = Random().nextBool();

      if (hasError) {
        throw Exception('Ein Fehler ist aufgetreten!');
      } else {
        int result = Random().nextInt(6) + 1;
        setState(() {
          _resultText = 'Ergebnis: $result';
        });
      }
    } catch (error) {
      setState(() {
        _resultText = 'Fehler: $error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            _rollDice();
          },
          child: const Text('Würfel werfen'),
        ),
        SizedBox(height: 20.0),
        Text(_resultText),
      ],
    );
  }
}
