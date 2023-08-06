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
    return Neumorphic(
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
              style:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
