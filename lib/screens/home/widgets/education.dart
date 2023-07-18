import 'package:flutter/material.dart';
import 'package:gia_web/screens/home/widgets/text__education.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      // height: 700,
      color: const Color.fromARGB(255, 231, 158, 106),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  width: 400,
                  height: 400,

                  // width: ,
                  child: const TextEducation(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
