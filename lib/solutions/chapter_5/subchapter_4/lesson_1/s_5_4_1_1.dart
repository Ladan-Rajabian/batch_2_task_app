import 'package:flutter/material.dart';

class S5411 extends StatelessWidget {
  const S5411({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        try {
          throw Exception('Error');
        } catch (error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(error.toString())));
        }
      },
      child: const Text('Click me'),
    );
  }
}
