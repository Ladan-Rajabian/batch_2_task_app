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
          "Zwischen zwei Zwetschgenzweigen zwitschern zwei zutrauliche Schwalben, zwei zutrauliche Schwalben zwitschern zwischen zwei Zwetschgenzweigen.",
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
