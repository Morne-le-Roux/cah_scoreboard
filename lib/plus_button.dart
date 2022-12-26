import 'package:flutter/material.dart';
import 'rounded_button.dart';

class PlusButton extends StatefulWidget {
  const PlusButton({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  State<PlusButton> createState() => _PlusButtonState();
}

class _PlusButtonState extends State<PlusButton> {
  @override
  Widget build(BuildContext context) {
    return RoundedButton(
        size: 50,
        text: "+",
        onPressed: widget.onPressed,
        color: Colors.white,
        textColor: Colors.black);
  }
}
