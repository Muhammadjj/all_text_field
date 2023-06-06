import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'all_row_vise_work/SocialMediaShareProfile.dart';
import 'all_row_vise_work/two_box_expanded_work.dart';
import 'constant_file/colours_file.dart';

class CircleAvtorWorking extends StatelessWidget {
  const CircleAvtorWorking({super.key});

  @override
  Widget build(BuildContext context) {

    // TODO : Complete Screen access this Pixels
    var height = MediaQuery.of(context).size.height;
    var weight = MediaQuery.of(context).size.width;

    return Column(
      children: [
        //* CircleAvator Images
        Neumorphic(
          style:const NeumorphicStyle(
            boxShape: NeumorphicBoxShape.circle(),
            depth: 10,
            shadowLightColor: Color.fromARGB(255, 165, 165, 165),
            shadowDarkColor: Color.fromARGB(255, 170, 217, 255)),
          child: Container(
            height: 150,
            width: 150,
            child: CircleAvatar(
              backgroundImage:const AssetImage("assest/images/users.png"),
              backgroundColor: circlerAvatorColor())
          ),
        ),
        
        // *Profile Man Name
        FittedBox(
          child: Padding(
            padding: EdgeInsets.only(top: height*0.020 ),
            child:const Text("HAMAD ASGHAR",
            style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,color: Colors.black),)),
        ),
        // *Profile Man Description
        FittedBox(
          child: Padding(
            padding:  EdgeInsets.only(top:height*0.020),
            child:const Text("Mobile App Develper \n And Game Develper",
            style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 44, 44, 44))),
          ),
        ),
         
        //  *Three Social Media Share PlateForm
        SizedBox(height: height*0.040,),
        const SocialMediaShareProfile(),
        
        // *Box Container vise Working
        SizedBox(height: height*0.030,),
        const BoxContainerWork()
      ],
    );
  }
}
