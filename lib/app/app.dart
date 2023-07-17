import 'package:flutter/material.dart';
// import 'package:gia_web/screens/coba/coba_flexible.dart';

import '../screens/home/home.dart';
// import 'package:gia_web/screens/coba/page_coba.dart';
// import 'package:gia_web/screens/home/widgets/konten.dart';

// import '../screens/coba/page_coba.dart';
// import '../screens/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // home: CobaRes(),
      // home: PageCoba(),
      // home: Konten()
      // home: MyScroll(),
    );
  }
}
