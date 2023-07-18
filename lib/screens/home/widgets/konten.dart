import 'package:flutter/material.dart';
import 'package:gia_web/screens/home/widgets/coming.dart';
import 'package:gia_web/screens/home/widgets/education.dart';
import 'package:gia_web/screens/home/widgets/text_tambahan.dart';
import 'package:gia_web/screens/home/widgets/utama.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'ctrl.dart';
import 'hal_about.dart';

class Konten extends StatelessWidget {
  const Konten({super.key});

  // double hitungSize(double lebarLayar) {
  //   if (lebarLayar > 1000) {
  //     return 24;
  //   } else if (lebarLayar < 1000 && lebarLayar > 600) {
  //     return 18;
  //   } else {
  //     return 14;
  //   }
  // }

  // double hitungEdan(double lebarLayar) {
  //   if (lebarLayar > 1000) {
  //     return 24;
  //   } else {
  //     return 10 + (14 * (((lebarLayar - 200) / 800)));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        color: const Color.fromARGB(255, 223, 220, 188),
        child: ListView(
          controller: ctrl,
          children: [
            AutoScrollTag(
              key: const ValueKey(1),
              controller: ctrl,
              index: 1,
              child: const Utama(),
            ),

            // Visibility(
            //   visible: width < 900,
            //   child: Container(
            //     width: 250,
            //     height: 250,
            //     color: Colors.transparent,
            //     // margin: const EdgeInsets.fromLTRB(0, 30, 50, 0),
            //     child: const GambarSatu(),
            //   ),
            // ),
            Visibility(
              visible: width < 900,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: 600,
                  // height: 100,
                  color: Colors.transparent,
                  child: const TextTambahan(),
                ),
              ),
            ),

            AutoScrollTag(
              key: const ValueKey(2),
              controller: ctrl,
              index: 2,
              child: const Hal(),
            ),
            AutoScrollTag(
              key: const ValueKey(3),
              controller: ctrl,
              index: 3,
              child: const Education(),
            ),
            AutoScrollTag(
              key: const ValueKey(4),
              controller: ctrl,
              index: 4,
              child: const Coming(),
            )
          ],
        ),
      ),
    );
  }
}
