import 'package:flutter/material.dart';
import 'package:gia_web/screens/home/widgets/text_tambahan.dart';

class Utama extends StatelessWidget {
  const Utama({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        width: 1000,
        height: 700,
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.transparent,
              width: double.infinity,
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                        width: 600,
                        height: 500,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            color: Colors.transparent),
                        // color: Colors.white,
                        child: Image.asset(
                          './assets/images/gianur.jpg',
                          // fit: BoxFit.contain,
                          color: const Color.fromARGB(255, 88, 74, 53).withOpacity(0.5),
                          colorBlendMode: BlendMode.darken,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.grey.withOpacity(0.8),
              width: double.infinity,
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: width > 900,
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
                  // Visibility(
                  //   visible: width > 900,
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     width: 250,
                  //     height: 250,
                  //     color: Colors.transparent,
                  //     // margin: const EdgeInsets.fromLTRB(0, 30, 50, 0),
                  //     child: const GambarDua(),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
