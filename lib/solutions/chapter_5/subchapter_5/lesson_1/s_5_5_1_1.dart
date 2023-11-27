import 'package:flutter/material.dart';

class S5511 extends StatelessWidget {
  const S5511({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Asyncrone();
  }

  // ignoriere für den Moment den Inhalt dieser Methode
  // nutze "await warteKurz();" in deinem Code, um einen Moment zu warten
  Future<void> warteKurz() {
    return Future.delayed(const Duration(milliseconds: 500));
  }
}

class Asyncrone extends StatefulWidget {
  const Asyncrone({super.key});

  @override
  State<Asyncrone> createState() => _AsyncroneState();
}

class _AsyncroneState extends State<Asyncrone> {
  int counter1 = 0;
  int counter2 = 0;

  Future<void> methode1() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      counter1++;
    });
    print('Methode1');
  }

  Future<void> methode2() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      counter2++;
    });
    print('Methode2');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            await methode1();
            await methode2();
            print('Fertig');
          },
          child: const Text('Click'),
        ),
        Text('Counter 1 : $counter1'),
        Text('Counter 2 : $counter2'),
      ],
    );
  }
}
