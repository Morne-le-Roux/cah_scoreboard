//PLAYER WIDGET. HAS THE NAME AND FUNCTIONS OF THE WIDGET

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({
    super.key,
    required this.playerName,
  });

  final String playerName;

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
//PLAYER SCORE
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
//INCREASES SCORE WITH 1 ON TAP
          score++;
        });
      },
      onLongPress: () {
        setState(() {
//DECREASES SCORE WITH ONE ON LONG PRESS
          score--;
        });
      },

//LOOK AND FUNC OF THE WIDGET
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 60,
          padding: const EdgeInsets.all(10),

//! MAIN ROW
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.playerName,
                    style: GoogleFonts.oswald(fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    score.toString(),
                    style: GoogleFonts.oswald(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
