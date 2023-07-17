// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class GambarTiga extends StatelessWidget {
  const GambarTiga({super.key});
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
    return Stack(
      children: [
        SizedBox(
          // width: 450,
          height: 700,
          // color: Colors.transparent,
          child: Image.asset(
            './assets/images/anugrah.jpg',
            fit: BoxFit.fitWidth,
            color: Colors.black.withOpacity(0.90),
            colorBlendMode: BlendMode.darken,
          ),
        ),
        // Container(
        //   width: 450,
        //   height: 450,
        //   color: Colors.black,
        // ),
      ],
    );
  }
}


// // import 'package:flutter/painting.dart';
// import 'dart:math' as math;

// class MyArc extends StatelessWidget {
//   final double diameter;

//   const MyArc({key, this.diameter = 200}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: MyPainter(),
//       size: Size(diameter, diameter),
//     );
//   }
// }

// class MyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // MainAxisAlignment.center;
//     Paint paint = Paint()..color = Colors.blue;
//     canvas.drawArc(
//       Rect.fromCenter(
//         center: Offset(size.height / 30, size.width / 30),
//         height: size.height,
//         width: size.width,
//       ),
//       -math.pi / 200,
//       math.pi,
//       false,
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
