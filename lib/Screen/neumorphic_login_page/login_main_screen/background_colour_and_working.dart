import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant_file/colours_files.dart';
import '../constant_file/social_media_row_method.dart';
import '../constant_file/text_field_method.dart';


class BackgroundColourAndText extends StatefulWidget {
  const BackgroundColourAndText({super.key});

  @override
  State<BackgroundColourAndText> createState() => _BackgroundColourAndTextState();
}

class _BackgroundColourAndTextState extends State<BackgroundColourAndText> {
  
  // todo : Password Icon change use this boolean value.
  bool changePasswordIcon =true;
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width; 


    return SafeArea(
      child: Neumorphic(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(gradient: gradientColours()),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [Column(
              children:  [
                Padding(
                  padding: EdgeInsets.only(right: width * 0.4, top: height * 0.10),
                  child: Container(
                    child:const Text("WELCOME\nSIGN IN",
                    style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),))),
                    
                    // *1st Text Field
                    SizedBox(height: height*0.040,),
                     TextFieldMethod(
                      hintText: "Name",
                      prefixIcon: Icon(Icons.person_2_outlined,color: Colors.black,),),

                   // *2nd Text Field
                    SizedBox(height: height*0.045,),
                     TextFieldMethod(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email,color: Colors.black,),),

                   // *3rd Text Field
                    SizedBox(height: height*0.045,),
                     TextFieldMethod(
                      hintText: "Password",
                      obscureText: changePasswordIcon,
                      prefixIcon: GestureDetector(
                        onTap: tapThisPasswordIcon,
                        child: Icon(changePasswordIcon? Icons.remove_red_eye:Icons.cloud_upload_outlined,
                        color: Colors.black,)),),


                   SizedBox(height: height*0.050,),
                  //  *Button Sign In
                   buttonSignIn(),
                   
                   //  *Use this SocialMedia Working.
                   SizedBox(height: height*0.050,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  //  *Google Icon
                  SocialMediaWorkInRow(
                    child: Icon(FontAwesomeIcons.google,color: Colors.green,size: 30,)),
                  // *FaceBook Icon
                  SocialMediaWorkInRow(
                    child: Icon(FontAwesomeIcons.facebookF,color: Color.fromARGB(255, 17, 1, 255),size: 30,)),
                  // 
                  SocialMediaWorkInRow(
                    child: Icon(FontAwesomeIcons.twitter,color: Colors.blue,size: 30,)),
                    ],
                ),
                
                // *SignUp Text Ending Work
                SizedBox(height: height*0.050,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NeumorphicText("Don't have an account?",textStyle: NeumorphicTextStyle(fontSize: 15,),
                    style:const NeumorphicStyle(color: Color.fromARGB(226, 24, 24, 24)),),
                    NeumorphicText("SignUp",textStyle: NeumorphicTextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                    style:const NeumorphicStyle(color: Colors.black),),

                ],)

                ],
            ),
          ]),
        ),
      ),
    );
  }

  void tapThisPasswordIcon() {
    setState(() {
       changePasswordIcon =!changePasswordIcon;
    });
  }
}

// *button Working
 Widget buttonSignIn() {
  return  Neumorphic(
                    style: NeumorphicStyle(boxShape: NeumorphicBoxShape.beveled(BorderRadius.circular(10)),
                      shadowDarkColor: Color.fromARGB(255, 59, 59, 59),
                      shadowLightColor: Color.fromARGB(223, 255, 252, 54),
                    ),
                     child: Container(
                      height: 70,
                      width: 300,
                      color:const Color.fromARGB(255, 247, 192, 29),
                      child: Center(child: NeumorphicText("Sign In",
                      style:const NeumorphicStyle(color: Colors.black,depth: 10),
                      textStyle: NeumorphicTextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
                     ),
                   );
  }