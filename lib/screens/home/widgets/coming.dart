import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'gambar_tiga.dart';

class Coming extends StatelessWidget {
  const Coming({super.key});
  double hitungSize(double lebarLayar) {
    if (lebarLayar > 1000) {
      return 24;
    } else if (lebarLayar < 1000 && lebarLayar > 600) {
      return 18;
    } else {
      return 14;
    }
  }

  double hitungEdan(double lebarLayar) {
    if (lebarLayar > 1000) {
      return 24;
    } else {
      return 10 + (14 * (((lebarLayar - 200) / 800)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 700,
          color: Colors.black,
          child: const GambarTiga(),
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            width: 500,
            height: 500,
            color: Colors.transparent,
            child: Text(
              "COMING SOON",
              style: GoogleFonts.abrilFatface(
                fontSize: hitungSize(width),
                // fontSize: 30,
                color: Colors.white,
                shadows: <Shadow>[
                  const Shadow(
                    offset: Offset(15.0, 15.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(98, 106, 100, 100),
                  )
                ],
              ),
              textScaleFactor: 2.5,
              textAlign: TextAlign.center,
            ),
            // Text(
            //   'COMING SOON ',
            //   style: GoogleFonts.abrilFatface(
            //     fontSize: hitungSize(width),
            //     color: Colors.white,
            //     shadows: <Shadow>[
            //       const Shadow(
            //         offset: Offset(10.0, 10.0),
            //         blurRadius: 5.0,
            //         color: Color.fromARGB(100, 0, 0, 0),
            //       )
            //     ],
            //   ),
            // ),
          ),
        ),
      ],
    );
  }
}
