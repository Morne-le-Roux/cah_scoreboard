import 'package:cah_scoreboard/logo_widget.dart';
import 'package:cah_scoreboard/player_input_screen.dart';
import 'package:cah_scoreboard/rounded_button.dart';
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
                    child: Material(
                      color: Colors.transparent,
                      child: Logo(),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Tap to add points. Long press to deduct points.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(color: Colors.white),
                ),
              ),
              Hero(
                tag: "playButton",
                child: RoundedButton(
                  text: "Play!",
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PlayerInputScreen(),
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
