import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class FourFloatButton extends StatefulWidget {
  const FourFloatButton({super.key});

  @override
  State<FourFloatButton> createState() => _FourFloatButtonState();
}

class _FourFloatButtonState extends State<FourFloatButton> {
 
 bool changeThisIcon = false;

  @override
  Widget build(BuildContext context) {
   
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return  Padding(
      padding:  EdgeInsets.only(top: height*0.27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        NeumorphicFloatingActionButton(
          tooltip: "Setting",
          child: Icon(Icons.settings_outlined,color: Color.fromARGB(255, 112, 122, 136),size: 40),
            style:const NeumorphicStyle(
             color: Color.fromARGB(255, 44, 56, 73),
             depth: 0,),
             onPressed: () {}),

             NeumorphicFloatingActionButton(
              tooltip: "Rotate Mobile",
              child: Image(image: AssetImage("assest/images/mobile_rotate.png"),),
              style:const NeumorphicStyle(
             color: Color.fromARGB(255, 0, 150, 234),
             depth: 20,
             shadowLightColor: Color.fromARGB(255, 53, 53, 53)),
             onPressed: () {}),

             NeumorphicFloatingActionButton(
              tooltip: "Gaming Mobile",
              child: Image(image: AssetImage("assest/images/gaming_phone.png"),color: Color.fromARGB(255, 112, 122, 136,),),
              style:const NeumorphicStyle(
             color: Color.fromARGB(255, 44, 56, 73),
             depth: 10,
             shadowLightColor: Color.fromARGB(26, 0, 0, 0)),
             onPressed: () {}),

             NeumorphicFloatingActionButton(
              tooltip: "Mouse",
              // ignore: sort_child_properties_last
              child: GestureDetector(
                onTap: mouseIcon(), 
                child: Icon(changeThisIcon? FontAwesomeIcons.mouse:Icons.mouse_outlined,
              color:const Color.fromARGB(255, 112, 122, 136,),size: 35,)
              ),
              style:const NeumorphicStyle(
             color: Color.fromARGB(255, 44, 56, 73),
             depth: 40,
             shadowLightColor: Color.fromARGB(0, 0, 0, 0)),
             onPressed: () {}),
      ],),
    );
  }
  
  // **Mouse SetState State Management.
  mouseIcon() {
    setState(() {
      changeThisIcon = !changeThisIcon;
    });
  }
}