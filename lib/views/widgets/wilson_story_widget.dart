import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WilsonStoryWidget extends StatelessWidget {
  final String imagePath;
  final String hastag;
  const WilsonStoryWidget(
      {super.key, required this.imagePath, required this.hastag});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 38,
          backgroundColor: const Color.fromARGB(255, 125, 139, 212),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                imagePath,
                width: Adaptive.w(17),
              )),
        ),
        SizedBox(
          height: Adaptive.h(0.5),
        ),
        Text(
          '#$hastag',
          style: const TextStyle(fontSize: 15.2, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
