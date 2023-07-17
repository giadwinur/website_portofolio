import 'package:flutter/material.dart';

class GambarDua extends StatelessWidget {
  const GambarDua({super.key});
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
    return SizedBox(
      width: 600,
      height: 300,
      // color: Colors.red,
      child: Image.asset(
        './assets/images/giadwi.jpg',
        fit: BoxFit.fitWidth,
        // color: Colors.black.withOpacity(0.5),
        // colorBlendMode: BlendMode.darken,
        // alignment: Alignment.topLeft,
      ),
    );
  }
}
