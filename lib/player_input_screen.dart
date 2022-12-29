import 'package:cah_scoreboard/logo_widget.dart';
import 'package:cah_scoreboard/player_list.dart';
import 'package:cah_scoreboard/player_widget.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:local_hero/local_hero.dart";

class PlayerInputScreen extends StatefulWidget {
  const PlayerInputScreen({super.key});

  @override
  State<PlayerInputScreen> createState() => _PlayerInputScreenState();
}

class _PlayerInputScreenState extends State<PlayerInputScreen> {
//!VARIABLES

  List<PlayerWidget> playerList = [];
  final TextEditingController _playerNameController = TextEditingController();
  bool busyPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//!BACKGROUND COLOR
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: LocalHeroScope(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 150),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    //!MAIN SCREEN LOGO
                    child: Hero(
                        tag: "LOGO",
                        child:
                            Material(color: Colors.transparent, child: Logo())),
                  ),

                  //!PLAYER LIST
                  PlayerList(playerlist: playerList),

                  //!BOTTOM INPUT CARD
                  Hero(
                    tag: "playButton",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextField(
                          onEditingComplete: () {
                            setState(() {
                              playerList.add(PlayerWidget(
                                  playerName: _playerNameController.text));
                              _playerNameController.clear();
                            });
                          },
                          controller: _playerNameController,
                          onChanged: (value) {
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a player",
                              hintStyle: GoogleFonts.oswald(
                                color: Colors.black26,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
