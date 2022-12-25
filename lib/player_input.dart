import 'package:cah_scoreboard/logo_widget.dart';
import "package:flutter/material.dart";
import "rounded_button.dart";

class PlayerInput extends StatefulWidget {
  const PlayerInput({super.key});

  @override
  State<PlayerInput> createState() => _PlayerInputState();
}

class _PlayerInputState extends State<PlayerInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Logo(),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 150,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    //TEXTFIELD
                    //
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: const TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),

                    Row(
                      children: [
                        RoundedButton(
                          text: "Add Player",
                          onPressed: () {},
                        ),
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
