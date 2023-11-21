import 'package:flutter/material.dart';

class S5411 extends StatelessWidget {
  const S5411({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyButton();
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        try {
          throw Exception('fehler');
        } catch (error) {
          final snackBar = SnackBar(
              content: Text(error.toString()),
              action: SnackBarAction(
                label: 'error',
                onPressed: () {
                  // Some code to undo the change.
                },
              ));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: const Text('Click me'),
    );
  }
}
