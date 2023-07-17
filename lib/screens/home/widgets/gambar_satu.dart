import 'package:flutter/material.dart';

class GambarSatu extends StatelessWidget {
  const GambarSatu({super.key});
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
    return Image.asset(
      './assets/images/gianur.jpg',
      fit: BoxFit.fitWidth,
      color: const Color.fromARGB(255, 88, 74, 53).withOpacity(0.5),
      colorBlendMode: BlendMode.darken,
    );
  }
}
