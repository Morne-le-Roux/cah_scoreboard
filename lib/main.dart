import 'package:cah_scoreboard/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CAHScoreboard());
  GoogleFonts.config.allowRuntimeFetching = false;
}

class CAHScoreboard extends StatelessWidget {
  const CAHScoreboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
