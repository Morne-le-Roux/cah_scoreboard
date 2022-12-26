import 'package:cah_scoreboard/logo_widget.dart';
import 'package:cah_scoreboard/player_list.dart';
import 'package:cah_scoreboard/player_widget.dart';
import "package:flutter/material.dart";
import "rounded_button.dart";

class PlayerInputScreen extends StatefulWidget {
  const PlayerInputScreen({super.key});

  @override
  State<PlayerInputScreen> createState() => _PlayerInputScreenState();
}

class _PlayerInputScreenState extends State<PlayerInputScreen> {
//!VARIABLES

  List<PlayerWidget> playerList = [];
  final TextEditingController _playerNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//!BACKGROUND COLOR
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
//!MAIN SCREEN LOGO
                child: Logo(),
              ),

//!PLAYER LIST
              PlayerList(playerlist: playerList),

//!BOTTOM INPUT CARD
              Container(
                padding: const EdgeInsets.all(8),
                height: 150,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
//!TEXTFIELD

                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: TextField(
                        controller: _playerNameController,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),

//! BOTTOM TWO BUTTONS
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RoundedButton(
                          text: "Add Player",
                          onPressed: () {
                            setState(() {
                              playerList.add(PlayerWidget(
                                  playerName: _playerNameController.text));
                              _playerNameController.clear();
                            });
                          },
                        ),
                        RoundedButton(
                          text: "Play!",
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
