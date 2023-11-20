import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class S5131 extends StatelessWidget {
  const S5131({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Hello',
          style: GoogleFonts.lobster(
              textStyle: const TextStyle(
                  fontSize: 36,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic)),
        ),
        Text(
          'Hello',
          style: GoogleFonts.abel(
              textStyle: const TextStyle(
            fontSize: 28,
            color: Colors.red,
            fontWeight: FontWeight.w600,
          )),
        ),
        Text(
          'Hello',
          style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Color.fromARGB(255, 255, 231, 238))),
        ),
        Text(
          'Hello',
          style: GoogleFonts.mali(
              fontSize: 18, color: Colors.green, letterSpacing: 5),
        )
      ],
    );
  }
}
