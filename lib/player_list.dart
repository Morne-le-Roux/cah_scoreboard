import 'package:flutter/material.dart';
import 'player_widget.dart';

class PlayerList extends StatefulWidget {
  const PlayerList({super.key, required this.playerlist});

  final List<PlayerWidget> playerlist;

  @override
  State<PlayerList> createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: ListView.builder(
        itemCount: widget.playerlist.length,
        itemBuilder: (context, index) {
          return widget.playerlist[index];
        },
      ),
    );
  }
}
