import 'dart:math';

import 'package:flutter/material.dart';

class S5522 extends StatelessWidget {
  const S5522({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DiceRoller();
  }
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  String _resultText = '';

  Future<void> _rollDice() async {
    setState(() {
      _resultText = 'Würfel wird geworfen...';
    });

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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        ElevatedButton(
          onPressed: () {
            _rollDice().then((_) {
              // Erfolgreiches Würfeln
              // Hier könnten weitere Aktionen nach dem Würfeln erfolgen
            }).catchError((error) {
              // Fehler beim Würfeln
              setState(() {
                _resultText = 'Fehler: $error';
              });
            });
          },
          child:const Text('Würfel werfen'),
        ),
       const SizedBox(height: 20.0),
        Text(_resultText),
      ],
    );
  }
}
