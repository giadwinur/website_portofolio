import 'package:flutter/material.dart';
import 'package:gia_web/screens/home/widgets/text_about.dart';

import 'gambar_dua.dart';

class Hal extends StatelessWidget {
  const Hal({super.key});
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
    // final width = MediaQuery.of(context).size.width;
    return Container(
      // margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      // height: 700,
      color: Colors.white,

      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  // width: double.infinity,
                  // height: 600,
                  child: const GambarDua(),
                ),
              ),
            ],
          ),
          // MyArc(diameter: 300),
          const SizedBox(
            width: 400,
            height: 400,
            // color: Colors.purple,
            child: TextAbout(),
          ),
          Container(
            width: 100,
          ),
        ],
      ),
    );
  }
}
