import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class BackgroundTwoContainer extends StatelessWidget {
  const BackgroundTwoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Neumorphic(
            style: NeumorphicStyle(boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.only(bottomRight: Radius.circular(20))),
              depth: 10,
              shadowLightColor: Color.fromARGB(0, 0, 0, 0),
              shadowDarkColor: Color.fromARGB(123, 0, 0, 0)),
            child: Container(
              height: height*0.80,
              width: width*0.8,
              color: Color.fromARGB(255, 39, 48, 64),
            ),
          ),
        ),
        Flexible(
          child: Neumorphic(
            style: NeumorphicStyle(boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.only(bottomLeft: Radius.circular(20))),
              depth: 10,
              shadowLightColor: Color.fromARGB(0, 0, 0, 0),
              shadowDarkColor: Color.fromARGB(0, 0, 0, 0)),
             child: Container(
              height: height*0.80,
              width: width*0.4,
              color: Colors.blue,
            ),
          ),
        ),

        
      ],
    );
  }
}