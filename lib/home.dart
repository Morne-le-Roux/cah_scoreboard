//THIS SCREEN OPENS WHEN THE APP IS OPENED. JUST GIVES INFO OF THE CONTROLS
//WITH A BUTTON TO GO TO THE MAIN SCREEN

import 'package:cah_scoreboard/widgets/logo_widget.dart';
import 'package:cah_scoreboard/player_input_screen.dart';
import 'package:cah_scoreboard/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: Hero(
                    tag: "LOGO",
//!below is wrapped in a material widget to fix a bug in flutter regarding text and animations
                    child: Material(
                      color: Colors.transparent,
                      child: Logo(),
                    )),
              ),
              const Hero(
                tag: "newListItem",
                child: SizedBox(
                  height: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Tap to add points. Long press to deduct points.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "Doubletap 'CARDS' in the logo to reset and come back to this screen.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(color: Colors.white),
                ),
              ),
              Hero(
                tag: "playButton",
//!below is wrapped in a material widget to fix a bug in flutter regarding text and animations
                child: Material(
                  color: Colors.transparent,
                  child: RoundedButton(
                    text: "Play!",
                    color: Colors.white,
                    textColor: Colors.black,
                    size: 200,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PlayerInputScreen(),
                          ));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
