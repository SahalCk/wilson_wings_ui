import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wilson_wings_ui/utils/colors.dart';
import 'package:wilson_wings_ui/utils/sized_boxes.dart';

class WilsonOptionWidget extends StatelessWidget {
  final String imagePath;
  final String optionName;
  final bool? isFree;
  const WilsonOptionWidget(
      {super.key,
      required this.imagePath,
      required this.optionName,
      this.isFree});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        SizedBox(
          width: Adaptive.w(30),
          child: Neumorphic(
            style: const NeumorphicStyle(
                color: backgroundColor,
                intensity: 1,
                depth: 6,
                shape: NeumorphicShape.concave),
            child: Column(
              children: [
                sizedBoxHeight15,
                sizedBoxHeight15,
                Image.asset(
                  imagePath,
                  width: Adaptive.w(8),
                  height: Adaptive.h(4),
                ),
                SizedBox(
                  height: Adaptive.h(1.5),
                ),
                Text(optionName,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        Visibility(
          visible: isFree == true ? true : false,
          child: Positioned(
            bottom: Adaptive.h(-1),
            left: Adaptive.w(8),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Adaptive.w(2.5), vertical: Adaptive.h(0.2)),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(4)),
              child: const Text(
                'FREE',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                    letterSpacing: 1),
              ),
            ),
          ),
        )
      ],
    );
  }
}
