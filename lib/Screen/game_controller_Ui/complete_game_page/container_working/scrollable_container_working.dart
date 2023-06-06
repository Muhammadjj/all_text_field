import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import '../constant_file/scrollable_container_method.dart';

class ScrollableContainer extends StatelessWidget {
  const ScrollableContainer({super.key});

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    
    return Padding(
      padding:  EdgeInsets.only(top: height*0.43,left: width*0.02),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: width*0.03,),
            ScrollableContainerMethod(
              height: height*0.33,
              width: width*0.55,
              color: Color.fromARGB(255, 55, 58, 61),
              image: "assest/images/game_remote.png",
              titleText: Text("Dual Sense",
              style: titleTextStyle(),),
              subtitle: Text("Official PS5 controller",
              style: subtitleTextStyle()),
            ), 

             SizedBox(width: width*0.1,),

            ScrollableContainerMethod(
              height: height*0.33,
              width: width*0.55,
              color: const Color.fromARGB(255, 46, 74, 108),
              image: "assest/images/game_remote.png",
              titleText: Text("Dual Sense",
              style: titleTextStyle(),),
              subtitle: Text("Local J3S7 controller",
              style: subtitleTextStyle(),),
            ),

            SizedBox(width: width*0.1,),

            ScrollableContainerMethod(
              height: height*0.33,
              width: width*0.55,
              color:const Color.fromARGB(255, 46, 74, 108),
              image: "assest/images/game_remote.png",
              titleText: Text("Dual Sense",
              style:  titleTextStyle() ,),
              subtitle: Text("Official M9D4 Handel",
              style: subtitleTextStyle()),
            ),
            
            /*
            *ya sizebox hm na as laya use kya ha q ky hm na end sa bhi apna 
            *container ko width dyne the q ka end wala container screen ka 
            *(wall) ka sth touch kr raha tha jo best practise nhi ha.
             */
            SizedBox(width: width*0.02,),
          ],
        ),
      ),
    );
  }
}



TextStyle titleTextStyle()=>
const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700,overflow: TextOverflow.ellipsis);

TextStyle subtitleTextStyle()=>
const TextStyle(color: Color.fromARGB(218, 233, 233, 233),fontSize: 15,overflow: TextOverflow.ellipsis);