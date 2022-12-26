import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.grey,
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //MAIN SCREEN LOGO
          GestureDetector(
            onDoubleTap: () => Navigator.pop(context),
            child: Text("CARDS",
                style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 90,
                    fontWeight: FontWeight.w500,
                    height: 0.9)),
          ),
          Text("AGAINST",
              style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 90,
                  fontWeight: FontWeight.w500,
                  height: 0.9)),
          Text("HUMANITY",
              style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 90,
                  fontWeight: FontWeight.w500,
                  height: 0.9)),
        ],
      ),
    );
  }
}
