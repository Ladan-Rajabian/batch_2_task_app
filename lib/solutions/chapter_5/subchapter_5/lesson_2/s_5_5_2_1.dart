import 'package:flutter/material.dart';

class S5521 extends StatelessWidget {
  const S5521({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const LodingFuture();
  }
}

class LodingFuture extends StatefulWidget {
  const LodingFuture({Key? key}) : super(key: key);

  @override
  State<LodingFuture> createState() => _LodingFutureState();
}

class _LodingFutureState extends State<LodingFuture> {
  bool _isInProgress = false;
  double progress = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 2,
            ),
          ),
          width: 400,
          child: Stack(
            alignment: Alignment.center,
            children: [
              LinearProgressIndicator(
                value: progress,
                minHeight: 32,
              ),
              Center(child: Text("${(progress * 100).toStringAsFixed(2)}%"))
            ],
          ),
        ),
        const SizedBox(height: 32),
        ElevatedButton(
            onPressed: () async {
              _updateProgress();
            },
            child: const Text('Click me')),
      ],
    );
  }

  Future<void> _updateProgress() async {
    if (!_isInProgress) {
      _isInProgress = true;
      for (int i = 0; i <= 100; i++) {
        await Future.delayed(const Duration(milliseconds: 50));
        setState(() {
          progress = i / 100;
        });
      }
      _isInProgress = false;
    }
  }
}
