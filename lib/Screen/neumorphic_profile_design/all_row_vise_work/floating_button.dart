import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class FloatingPointButtonNoumorphic extends StatelessWidget {
  const FloatingPointButtonNoumorphic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Neumorphic(
            style:const NeumorphicStyle(depth: 10,
              boxShape: NeumorphicBoxShape.circle()),
            child: Container(
              height: 50,
              width: 50,
              child:const Icon(Icons.arrow_back,size: 40,),
            ),),

          Neumorphic(
            style:const NeumorphicStyle(
              depth: 10,
              boxShape: NeumorphicBoxShape.circle(),),
            child: Container(
              height: 50,
              width: 50,
              child:const Icon(Icons.drag_handle_sharp,size: 40,),
            ),)
        ],),
    );
  }
}