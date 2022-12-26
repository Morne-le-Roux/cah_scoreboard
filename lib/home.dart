import 'package:cah_scoreboard/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Logo(),
          ),
          Text(
            "LONGPRESS",
            textAlign: TextAlign.start,
            style: GoogleFonts.oswald(color: Colors.white),
          )
        ],
      )),
    );
  }
}
