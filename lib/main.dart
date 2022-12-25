import 'package:cah_scoreboard/player_input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CAHScoreboard());
}

class CAHScoreboard extends StatelessWidget {
  const CAHScoreboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlayerInput(),
    );
  }
}
