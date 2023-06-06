import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class SocialMediaShareProfile extends StatelessWidget {
  const SocialMediaShareProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // *1st FaceBook Button
        NeumorphicFloatingActionButton(
          child: Icon(Icons.facebook_sharp,size: 40,color: Colors.blue,),
           style:const NeumorphicStyle(
                shadowLightColor: Color.fromARGB(255, 117, 117, 117),
                shadowDarkColor: Color.fromARGB(255, 170, 217, 255),),
                onPressed: (){}),
          //  *2nd Tiktok Button
        NeumorphicFloatingActionButton(
          child:const Icon(Icons.tiktok_outlined,size: 40,),
                style:const NeumorphicStyle(
                shadowLightColor: Color.fromARGB(255, 117, 117, 117),
                shadowDarkColor: Color.fromARGB(255, 170, 217, 255),),
           onPressed: (){}),
        // *3rd Food Recipe Button.
        NeumorphicFloatingActionButton(
          child:const Icon(Icons.food_bank,size: 40,color: Colors.red,),
                style:const NeumorphicStyle(
                shadowLightColor: Color.fromARGB(255, 117, 117, 117),
                shadowDarkColor: Color.fromARGB(255, 170, 217, 255),),
          onPressed: (){}),
      ],
    );
  }
}