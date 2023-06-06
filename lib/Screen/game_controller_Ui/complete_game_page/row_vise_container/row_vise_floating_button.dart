import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        NeumorphicFloatingActionButton(child: Icon(Icons.segment_outlined,color: Colors.white,size: 40,),
            style:const NeumorphicStyle(boxShape: NeumorphicBoxShape.circle(),
           color: Color.fromARGB(255, 44, 56, 73),
            shadowLightColor: Color.fromARGB(129, 226, 226, 226)),
             onPressed: () {}),
        NeumorphicFloatingActionButton(child: Icon(FontAwesomeIcons.cartShopping,color: Colors.white,),
           style:const NeumorphicStyle(boxShape: NeumorphicBoxShape.circle(),
           color: Color.fromARGB(255, 44, 56, 73),
           shadowLightColor: Color.fromARGB(129, 226, 226, 226),),
           onPressed: () {}),
      ],),
    );
  }
}