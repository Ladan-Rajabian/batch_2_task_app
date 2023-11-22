import 'package:flutter/material.dart';

class S5422 extends StatelessWidget {
  const S5422({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const AgeEditor();
  }
}

class AgeException implements Exception {
  String errorMessage() => 'Alter muss zwischen 0 und 100 sein';
}

class AgeEditor extends StatefulWidget {
  const AgeEditor({super.key});

  @override
  State<AgeEditor> createState() => _AgeEditorState();
}

class _AgeEditorState extends State<AgeEditor> {
  TextEditingController ageController = TextEditingController();

  void _handleButtonClick() {
    try {
      int age = int.parse(ageController.text);
      if (age <= 0 || age >= 100) {
        throw AgeException();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Alter: $age'),
          ),
        );
      }
    } catch (e) {
      String errorMessage = e is AgeException
          ? 'Alter muss  zwischen 0 und 100 sein'
          : 'Ungültiges Alter';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: ageController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'Enter your age'),
        ),
        ElevatedButton(
            onPressed: () {
              _handleButtonClick();
            },
            child: const Text('Click'))
      ],
    );
  }
}
