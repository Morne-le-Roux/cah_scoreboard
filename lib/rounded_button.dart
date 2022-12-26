import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.textColor,
      required this.size});

  final String text;
  final void Function() onPressed;
  final Color color;
  final Color textColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: size,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(40))),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.oswald(color: textColor, fontSize: 20),
        )),
      ),
    );
  }
}
