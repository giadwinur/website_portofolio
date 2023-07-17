import 'package:flutter/material.dart';
import 'package:gia_web/screens/home/widgets/ctrl.dart';

class DrawerHeaderSatu extends StatelessWidget {
  const DrawerHeaderSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 223, 220, 188),
      child: SizedBox(
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  debugPrint('ini print from home');
                  ctrl.scrollToIndex(1);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("About"),
                onTap: () {
                  debugPrint('ini print from about');
                  ctrl.scrollToIndex(2);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.star),
                title: const Text("Coming Soon"),
                onTap: () {
                  debugPrint('ini print from comingsoon');
                  ctrl.scrollToIndex(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
