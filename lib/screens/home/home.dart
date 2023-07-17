import 'package:flutter/material.dart';
import 'package:gia_web/screens/home/widgets/drawer.dart';
import 'package:gia_web/screens/home/widgets/konten.dart';
import 'package:gia_web/screens/home/widgets/top_menu.dart';
// import 'package:gia_web/screens/home/widgets/top_menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      // backgroundColor: const Color.fromARGB(255, 139, 136, 101),
      appBar: width > 900
          ? AppBar(
              backgroundColor: const Color.fromARGB(255, 223, 220, 188),
              toolbarHeight: 90,
              titleSpacing: 100,
              elevation: 0,
              // automaticallyImplyLeading: false,
              title: const TopMenu(),
              // actions: const [
              //   TopMenu(),
              // ],
            )
          : AppBar(
              backgroundColor: const Color.fromARGB(255, 223, 220, 188),
              toolbarHeight: 90,
              titleSpacing: 100,
              elevation: 0,
              // automaticallyImplyLeading: false,
            ),
      drawer: const DrawerHeaderSatu(),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              // width: 1200,
              height: double.infinity,
              color: Colors.purple,
              // child: width > 800 ? const Konten() : const Konten(),
              child: const Konten(),
            ),
          )
        ],
      ),
    );
  }
}
