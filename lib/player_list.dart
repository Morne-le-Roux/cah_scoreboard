import 'package:flutter/material.dart';
import 'package:simplified_flutter_animations/generic_slide_transition.dart';
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
    return Container(
      constraints: const BoxConstraints(maxHeight: 470),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.playerlist.length,
        itemBuilder: (context, index) {
          return GenericSlideTransition(
            curve: Curves.fastOutSlowIn,
            duration: const Duration(milliseconds: 350),
            initialOffset: const Offset(0, 10),
            builder: (context) {
              return widget.playerlist[index];
            },
          );
        },
      ),
    );
  }
}
