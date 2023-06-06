import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomizeBottomNavigationBar extends StatelessWidget {
  const CustomizeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {

    
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    
    return Padding(
      padding: EdgeInsets.only(top: height*0.83,left: width*0.070),
      child: Neumorphic(
        style: NeumorphicStyle(
          depth: -20,
          shadowDarkColorEmboss: const Color.fromARGB(255, 0, 0, 0),
          shadowLightColorEmboss: const Color.fromARGB(255, 46, 74, 108),
          boxShape: NeumorphicBoxShape.roundRect(const BorderRadius.all(Radius.circular(20)))),
        child: Container(
          height: height*0.1,
          width: width*0.85,
          color: const Color.fromARGB(255, 37, 44, 56),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Container(
                  width: width*0.3,
                  child: NeumorphicFloatingActionButton(
                        style:const NeumorphicStyle(
                        color: Color.fromARGB(255, 0, 189, 233),
                        shadowLightColor: Color.fromARGB(115, 255, 255, 255),
                        depth: 10
                      ),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:const [Flexible(child: Icon(Icons.home_outlined,color: Colors.white,)),
                        FittedBox(child: Text("Home",style: TextStyle(fontStyle: FontStyle.italic),))], ), onPressed: (){}),),
              ),

              const Flexible(child:  Icon(Icons.person,color: Colors.white,)),
              const Flexible(child:  Icon(Icons.settings,color: Colors.white,)),
              const Flexible(child:  Icon(Icons.vpn_lock_outlined,color: Colors.white,)),
          ],),
        ),
        ),
    );
  }
}