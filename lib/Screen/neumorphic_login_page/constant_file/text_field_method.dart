import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class TextFieldMethod extends StatelessWidget {
  TextFieldMethod({super.key, 
  this.height, 
  this.filled=true, 
  this.prefixIcon, 
  this.hintText, 
  this.width=300, 
  this.obscureText=false, this.obscuringCharacter="*"});

  final double? height;
  final bool? filled;
  final Widget? prefixIcon;
  final String? hintText;
  final double? width;
  final bool obscureText;
  final String obscuringCharacter;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape:
                NeumorphicBoxShape.beveled(BorderRadius.all(Radius.circular(10))),
                depth: 10,
                shadowDarkColor: Color.fromARGB(178, 7, 7, 7),
                shadowLightColor: Color.fromARGB(207, 255, 252, 54)),
            child: Container(
                   width: height,
                   child: Neumorphic(
                   style: NeumorphicStyle(
                     depth: -50,
                   ),
                  child: TextField(
                         cursorColor: Colors.black,
                         obscureText: obscureText,
                         obscuringCharacter: obscuringCharacter,
                         decoration: InputDecoration(
                         prefixIcon: prefixIcon,
                         hintText: hintText,
                         filled: filled, 
                         fillColor: Color.fromARGB(255, 247, 192, 29)),
                         
                  )),
        ),
      ),
    );
  }
}
