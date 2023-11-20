import 'package:flutter/material.dart';

class S5133 extends StatelessWidget {
  const S5133({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 150,
      width: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 188, 34, 34),

            blurRadius: 2,
            offset: Offset(4, 8), // changes position of shadow
          ),
        ],
      ),
      child: const Center(child: Text('Hello')),
    );
  }
}
