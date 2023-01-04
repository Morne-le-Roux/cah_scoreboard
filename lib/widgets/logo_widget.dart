//LOGO IN THE APP, WITH A GESTURE DETECTOR ON THE WORD "CARDS" FOR GOING BACK.//

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var _style = GoogleFonts.oswald(
    color: Colors.white,
    fontSize: 80,
    fontWeight: FontWeight.w500,
    height: 0.9);

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //MAIN SCREEN LOGO
          GestureDetector(
            onDoubleTap: () => Navigator.pop(context),

//CARDS
            child: Text("CARDS", style: _style),
          ),

//AGAINST
          Text("AGAINST", style: _style),

//HUMANITY
          Text("HUMANITY", style: _style),
        ],
      ),
    );
  }
}
