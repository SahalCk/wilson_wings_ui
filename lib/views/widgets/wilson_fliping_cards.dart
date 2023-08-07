import 'package:flip_card/flip_card.dart';

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wilson_wings_ui/utils/colors.dart';
import 'package:wilson_wings_ui/utils/sized_boxes.dart';

class WilsonFlippingCard extends StatelessWidget {
  const WilsonFlippingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(Adaptive.h(2.7)),
            width: Adaptive.w(75),
            height: Adaptive.h(25),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 127, 160, 255),
                  Color.fromARGB(255, 84, 120, 222)
                ]),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Namaste,',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        const Text('FULL KYC',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'NatoSansBold',
                                fontWeight: FontWeight.bold)),
                        Image.asset(
                          'assets/verified.png',
                          width: Adaptive.w(7.6),
                          height: Adaptive.h(3),
                        )
                      ],
                    ),
                  ],
                ),
                const Text(
                  'SAYEED',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'NatoSansBold',
                      letterSpacing: 2,
                      fontSize: 17),
                ),
                SizedBox(
                  height: Adaptive.h(2.5),
                ),
                const Text('Wallet Balance',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Text(
                      '₹XXX.XX',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'NatoSansBold',
                          letterSpacing: 2,
                          fontSize: 17),
                    ),
                    SizedBox(width: Adaptive.w(1)),
                    const Icon(Icons.remove_red_eye, color: Colors.white)
                  ],
                ),
                SizedBox(
                  height: Adaptive.h(0.8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Adaptive.w(30),
                      height: Adaptive.h(3.8),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              backgroundColor:
                                  const Color.fromARGB(255, 67, 42, 180)),
                          child: const Text('ADD MONEY',
                              style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold))),
                    ),
                    SizedBox(
                      width: Adaptive.w(30),
                      height: Adaptive.h(3.8),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              backgroundColor: Colors.white),
                          child: const Text('ACC DETAILS',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 67, 42, 180),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold))),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: Adaptive.w(-11),
            top: Adaptive.h(7.5),
            child: SizedBox(
              width: Adaptive.w(17),
              height: Adaptive.h(8),
              child: Neumorphic(
                style: const NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                    color: backgroundColor,
                    intensity: 1,
                    depth: 100,
                    shape: NeumorphicShape.convex,
                    shadowLightColor: Color.fromARGB(255, 84, 120, 222)),
              ),
            ),
          ),
          Positioned(
            top: Adaptive.h(8.6),
            right: Adaptive.w(-14),
            child: SizedBox(
                width: Adaptive.w(17),
                height: Adaptive.h(8),
                child: Column(
                  children: [
                    sizedBoxHeight10,
                    Container(
                      height: Adaptive.h(0.35),
                      color: Colors.black,
                    ),
                    sizedBoxHeight10,
                    Container(
                      height: Adaptive.h(0.35),
                      width: Adaptive.w(20),
                      color: Colors.black,
                    ),
                    sizedBoxHeight10,
                    Container(
                      height: Adaptive.h(0.35),
                      color: Colors.black,
                    ),
                  ],
                )),
          )
        ],
      ),
      back: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(Adaptive.h(2.7)),
            width: Adaptive.w(75),
            height: Adaptive.h(23.5),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 127, 160, 255),
                  Color.fromARGB(255, 84, 120, 222)
                ]),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Namaste,',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Text('ACCOUNT DETAILS',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'NatoSansBold',
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const Text(
                  'SAYEED',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'NatoSansBold',
                      letterSpacing: 2,
                      fontSize: 17),
                ),
                SizedBox(
                  height: Adaptive.h(2.5),
                ),
                const Text('ACCOUNT NUMBER',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Text(
                      '2382739827389279',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'NatoSansBold',
                          fontSize: 14),
                    ),
                    SizedBox(width: Adaptive.w(1)),
                    const Icon(Icons.copy, color: Colors.white)
                  ],
                ),
                sizedBoxHeight10,
                const Text('IFSC CODE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Text(
                      'ICICI0021',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'NatoSansBold',
                          fontSize: 14),
                    ),
                    SizedBox(width: Adaptive.w(1)),
                    const Icon(Icons.copy, color: Colors.white)
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: Adaptive.w(-11),
            top: Adaptive.h(7.5),
            child: SizedBox(
              width: Adaptive.w(17),
              height: Adaptive.h(8),
              child: Neumorphic(
                style: const NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                    color: backgroundColor,
                    intensity: 1,
                    depth: 100,
                    shape: NeumorphicShape.convex,
                    shadowLightColor: Color.fromARGB(255, 84, 120, 222)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
