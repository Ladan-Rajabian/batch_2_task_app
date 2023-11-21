import 'package:flutter/material.dart';

class S5133 extends StatelessWidget {
  const S5133({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      height: 150,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color:const Color.fromARGB(255, 174, 142, 222),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 41, 7, 214).withOpacity(0.3),
            blurRadius: 2,
            offset: const Offset(-8, 10),
            //spreadRadius: 8, // changes position of shadow
          ),
        ],
      ),
      child: const Center(child: Text('Hello world')),
    );
  }
}
