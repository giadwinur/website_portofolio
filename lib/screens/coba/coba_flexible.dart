// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CobaRes extends StatelessWidget {
  const CobaRes({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              width: 1200,
              height: double.infinity,
              color: Colors.black,
              child: width > 850 ? const Horizontal() : const Vertical(),
            ),
          )
        ],
      ),
    );
  }
}

class Horizontal extends StatelessWidget {
  const Horizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        KotakKiri(),
        KotakKanan(),
      ],
    );
  }
}

class Vertical extends StatelessWidget {
  const Vertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          KotakKiri(),
          KotakKanan(),
        ],
      ),
    );
  }
}

class KotakKiri extends StatelessWidget {
  const KotakKiri({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      color: Colors.transparent,
      child: const FlutterLogo(),
    );
  }
}

class KotakKanan extends StatelessWidget {
  const KotakKanan({
    super.key,
  });

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
          const Text(
            'Hello World ',
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
            'Indonesia tanah airku tanah tumpah darahku. Di sanalah aku berdiri, jadi pandu ibuku.',
            textAlign: TextAlign.center,
            style: TextStyle(
              // fontSize: width > 1000 ? 26 : (width > 400 ? 20 : 16),
              fontSize: hitungSize(width),
            ),
          ),
          const Spacer(),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: width > 850 ? MainAxisAlignment.end : MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(right: 50),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(right: 50),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.youtube_searched_for),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(right: 50),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_command_key_sharp),
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
