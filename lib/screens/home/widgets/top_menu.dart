import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'giadwi',
          style: GoogleFonts.dancingScript(
            fontSize: 30,
            color: Colors.brown,
          ),
        ),

        const Spacer(),
        Text(
          'WELCOME TO THE OFFICIALLY WEBSITE!',
          style: GoogleFonts.lexendPeta(
            color: Colors.brown,
          ),
        ),
        // SizedBox(
        //   width: 30,
        // ),
        // Text(
        //   'portofolio',
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
        // SizedBox(
        //   width: 30,
        // ),
      ],
    );
  }
}
