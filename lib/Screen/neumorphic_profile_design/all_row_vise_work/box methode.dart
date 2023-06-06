import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class BoxMethod extends StatelessWidget {
  const BoxMethod({
    super.key, 
    this.height =200,
    this.width=300, 
    this.container1stRow, 
    this.sizeBoxwidth=10, this.container2ndRow
  });

  final double? height;
  final double? width;
  final double? sizeBoxwidth;
  final Widget? container1stRow;
  final Widget? container2ndRow;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Neumorphic(
                    style: const NeumorphicStyle(
                        shadowLightColor: Color.fromARGB(255, 243, 243, 243),
                        shadowDarkColor: Color.fromARGB(255, 185, 223, 255),
                      depth: 5,
                    ),
                    child: container1stRow
                  ),
                ),
              ),
              SizedBox(width: sizeBoxwidth,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Neumorphic(
                    style:const NeumorphicStyle(
                      shadowLightColor: Color.fromARGB(255, 243, 243, 243),
                     shadowDarkColor: Color.fromARGB(255, 185, 223, 255),
                      depth: 5
                    ),
                    child: container2ndRow
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

