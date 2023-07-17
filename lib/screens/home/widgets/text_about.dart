import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class TextAbout extends StatelessWidget {
  const TextAbout({super.key});
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
    return Container(
      width: 100,
      height: 100,
      color: Colors.transparent,
      child: Column(
        children: [
          Text(
            '\nABOUT ME ',
            style: GoogleFonts.righteous(fontSize: 20),
          ),
          const Text(''),
          Text(
            "<<<Hallo, It's Me!>>>",
            style: GoogleFonts.montserrat(),
          ),
          Text(
            "I'm Gia Dwi Nur Anugrah, now I'm even 19 years old. My life journey starts from here,i want to be a web developer.I will explain my story on this first website that I created.",
            style: GoogleFonts.montserrat(),
          ),
          Text(
            'I am a 3rd semester student majoring in informatics at Siliwangi University. I am a person who is interested in technology and design.I can work individually or in a team and can manage my time by planning activities. I am motivated to keep learning and improving my skills.',
            style: GoogleFonts.montserrat(),
          ),
          // Text(
          //   '         Contact me\ngiadwi57@gmail.com.\n',
          //   style: GoogleFonts.montserrat(),
          // ),
          const Spacer(),
          Text(
            '\n\nLET\'S BE FRIENDS',
            style: GoogleFonts.marcellus(),
          ),
          const Icon(Icons.maximize),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                margin: const EdgeInsets.only(right: 60),
                child: IconButton(
                  onPressed: () {
                    html.window.open('https://instagram.com/gia.dwi?igshid=NTc4MTIwNjQ2YQ==', 'newtab');
                  },
                  icon: const FaIcon(FontAwesomeIcons.instagram),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                margin: const EdgeInsets.only(right: 60),
                child: IconButton(
                  onPressed: () {
                    html.window.open('https://github.com/giadwinur', 'newtab');
                  },
                  icon: const FaIcon(FontAwesomeIcons.github),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                margin: const EdgeInsets.only(right: 60),
                child: IconButton(
                  onPressed: () {
                    html.window.open('https://www.linkedin.com/in/gia-dwi-nur-anugrah-064749283/', 'newtab');
                  },
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
