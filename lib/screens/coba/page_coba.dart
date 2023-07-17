import 'package:flutter/material.dart';

class PageCoba extends StatelessWidget {
  const PageCoba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.amber,
              width: 700,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 400,
                    height: 250,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.purple.withOpacity(0.9),
              width: 600,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.all(5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
