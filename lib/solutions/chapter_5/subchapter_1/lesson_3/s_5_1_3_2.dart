import 'package:flutter/material.dart';

class S5132 extends StatelessWidget {
  const S5132({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyExampleBox();
  }
}

class MyExampleBox extends StatefulWidget {
  const MyExampleBox({super.key});
  @override
  State<MyExampleBox> createState() => _MyExampleBoxState();
}

class _MyExampleBoxState extends State<MyExampleBox> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 30,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: Text(
          "here is a test text and sized box, it must be change on click! the test is successfull!!",
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.fade,
        ),
      ),
    );
  }
}



/* class MyExampleBox extends StatefulWidget {
  const MyExampleBox({super.key});
  @override
  State<MyExampleBox> createState() => _MyExampleBoxState();
}
class _MyExampleBoxState extends State<MyExampleBox> {
  double boxHeight = 30;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: boxHeight,
      child: GestureDetector(
        onTap: () {
          setState(() {
            boxHeight = boxHeight == 30.0 ? 200.0 : 30.0;
          });
        },
        child: const Text(
          "here is a test text and sized box, it must be change on click! the test is successfull!!",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
} */