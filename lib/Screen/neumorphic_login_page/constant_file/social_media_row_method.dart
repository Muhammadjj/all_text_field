import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaWorkInRow extends StatelessWidget {
  SocialMediaWorkInRow({super.key, 
  this.height = 60, 
  this.width =60, 
  this.child});

  final double? height;
  final double? width;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style:const NeumorphicStyle(
          boxShape: NeumorphicBoxShape.circle(),
          shadowDarkColor: Color.fromARGB(192, 7, 7, 7),
          shadowLightColor: Color.fromARGB(255, 255, 252, 54)),
      child: Container(
          height: height,
          width: width,
          color: Colors.amber,
          child: child,
          )
    );
  }
}
