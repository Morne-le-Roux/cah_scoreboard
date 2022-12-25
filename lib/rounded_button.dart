import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.text, required this.onPressed});

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.oswald(color: Colors.white),
        )),
      ),
    );
  }
}
