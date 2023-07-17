// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTambahan extends StatelessWidget {
  const TextTambahan({super.key});

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
    return Container(
      width: 400,
      height: 400,
      color: Colors.transparent,
      padding: const EdgeInsets.all(5),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "\nHi! I'm Gia Dwi",
            style: GoogleFonts.rowdies(
              fontSize: hitungSize(width),
              // fontSize: 30,
              color: Colors.yellow[700],
              shadows: <Shadow>[
                const Shadow(
                  offset: Offset(10.0, 10.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(100, 0, 0, 0),
                )
              ],
            ),
            textScaleFactor: 2.5,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 35,
          ),
          // const Spacer(),
          // const Text(
          //   'Indonesia tanah airku tanah tumpah darahku. Di sanalah aku berdiri, jadi pandu ibuku',
          //   textScaleFactor: 1.5,
          //   textAlign: TextAlign.center,
          // ),
          Text(
            'this is my official portofolio website to showes all details.',
            textAlign: TextAlign.center,
            style: GoogleFonts.comfortaa(
              fontSize: hitungSize(width),
              color: const Color.fromARGB(255, 66, 62, 42),
              shadows: <Shadow>[
                const Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 1.0,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: width > 850 ? MainAxisAlignment.center : MainAxisAlignment.end,
              children: [
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 116, 107, 85),
                    splashColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hoverColor: Colors.transparent,
                    elevation: 5,
                    height: 55,
                    minWidth: 100,
                    focusElevation: 5,
                    child: Text(
                      "View More",
                      style: TextStyle(
                        fontSize: hitungSize(width),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
