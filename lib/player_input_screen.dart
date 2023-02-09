//"DIE MAIN KONYN"
//THIS IS MAIN SCREEN THAT DOES ALL THE STUFF

import 'package:cah_scoreboard/widgets/logo_widget.dart';
import 'package:cah_scoreboard/widgets/player_list.dart';
import 'package:cah_scoreboard/widgets/player_widget.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class PlayerInputScreen extends StatefulWidget {
  const PlayerInputScreen({super.key});

  @override
  State<PlayerInputScreen> createState() => _PlayerInputScreenState();
}

class _PlayerInputScreenState extends State<PlayerInputScreen> {
//!VARIABLES

  List<PlayerWidget> playerList = [];
  final TextEditingController _playerNameController = TextEditingController();
  bool showInput = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//!BACKGROUND COLOR
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
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
//!below is wrapped in a material widget to fix a bug in flutter regarding text and animations
                          Material(color: Colors.transparent, child: Logo())),
                ),

//!PLAYER LIST
                PlayerList(playerlist: playerList),

//!BOTTOM INPUT CARD
                Hero(
                  tag: "playButton",

//! visibilty show and hides the naming input text field
                  child: Visibility(
                    visible: showInput,
                    child: Column(
                      children: [
//! Detect the long press
                        GestureDetector(
                          onLongPress: () {
                            setState(() {
                              showInput = false; //Hides input
                            });
                          },

//!below is wrapped in a material widget to fix a bug in flutter regarding text and animations
                          child: Material(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                padding: const EdgeInsets.only(left: 20),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: TextField(
                                  onEditingComplete: () {
                                    setState(() {
                                      playerList.add(PlayerWidget(
                                          playerName:
                                              _playerNameController.text));
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
                        ),
                        Material(
                          child: Text(
                            "Long press to hide input",
                            style: GoogleFonts.oswald(color: Colors.white),
                          ),
                        ),
                      ],
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
    );
  }
}
