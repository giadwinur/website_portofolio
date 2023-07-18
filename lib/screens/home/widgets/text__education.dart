import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TextEducation extends StatelessWidget {
  const TextEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.transparent,
      child: Column(
        children: [
          Text(
            '\nEDUCATION \n\n',
            style: GoogleFonts.righteous(fontSize: 20),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                child: const FaIcon(FontAwesomeIcons.schoolCircleCheck),
              ),
              Text(
                'SMA NEGERI 4 TASIKMALAYA',
                style: GoogleFonts.montserrat(fontSize: 20),
              ),
              Text(
                'Ilmu Pengetahuan Alam(IPA) Science\n',
                style: GoogleFonts.montserrat(),
              ),
              Text(
                'UNIVERSITAS SILIWANGI',
                style: GoogleFonts.montserrat(fontSize: 20),
              ),
              Text(
                'Informatika',
                style: GoogleFonts.montserrat(),
              )
            ],
          )
        ],
      ),
    );
  }
}
