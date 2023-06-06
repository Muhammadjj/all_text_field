import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

import 'box methode.dart';

class BoxContainerWork extends StatelessWidget {
  const BoxContainerWork({super.key});

  @override
  Widget build(BuildContext context) {

     // TODO : Complete Screen access this Pixels
    var height = MediaQuery.of(context).size.height;
    var widght = MediaQuery.of(context).size.width;
    
    return Column(
      children: [
        BoxMethod(
          container1stRow: Container(
                             height: height*0.070,
                            //  color: Colors.green,
                             child: FittedBox(
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children:const [
                                FittedBox(child: Icon(Icons.wordpress_outlined,color: Color.fromARGB(255, 199, 7, 68),)),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text("35 Shots",style: TextStyle(fontSize: 15),)),
                               ]),
                             ),
                           ),
                           container2ndRow: Container(
                           height: height*0.070,
                           child: FittedBox(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children:const [
                              FittedBox(child: Icon(Icons.person,color: Color.fromARGB(255, 199, 7, 68),)),
                              FittedBox(child: Text("3M Followers")),
                             ]),
                           ),
                         ),
        ),

        BoxMethod(
          container1stRow: Container(
            height: height*0.070,
            width: 100,
            //  color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
              FittedBox(child: Icon(Icons.favorite_border_outlined,color: Color.fromARGB(255, 199, 7, 68),)),
              FittedBox(child: Text("5.1k Likes")),
            ]),
          ),
          container2ndRow: Container(
            height: height*0.070,
            width: 100,
            //  color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
              FittedBox(child: Icon(Icons.person_2_outlined,color: Color.fromARGB(255, 199, 7, 68),)),
              FittedBox(child: Text("8903 Follwing")),
            ]),
          ),
        ),

        BoxMethod(
          container1stRow: Container(
            height: height*0.070,
            width: 100,
            //  color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
              FittedBox(child: Icon(Icons.delete,color: Color.fromARGB(255, 199, 7, 68),)),
              FittedBox(child: Text("Bucket")),
            ]),
          ),
          container2ndRow: Container(
            height: height*0.070,
            width: 100,
            //  color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
              FittedBox(child: Icon(Icons.file_download,color: Color.fromARGB(255, 199, 7, 68),)),
              FittedBox(child: Text("Download Video")),
            ]),
          ),
        ),
      ],
    );

    












    //  Neumorphic(
    //   style: NeumorphicStyle(depth: -5),
    //   child: Container(
    //    height: 200,
    //    width: 300,
    //    color: Colors.white,
    //    child: Column(
    //      children: [
    //        Row(
    //          children: [
    //             Expanded(
    //               child: Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Neumorphic(
    //                   style:const NeumorphicStyle(
    //                     depth: -20,
    //                   ),
    //                   child: Container(
    //                      height: 50,
    //                      width: 100,
    //                     //  color: Colors.green,
    //                      child: Row(children: [
    //                       Icon(Icons.wordpress_outlined),
    //                       Text("35 tours"),
    //                      ]),
    //                    ),
    //                 ),
    //               ),
    //             ),

    //             SizedBox(width: 30,),

    //             Expanded(
    //               child: Neumorphic(
    //                 child: Container(
    //                    height: 50,
    //                    width: 100,
    //                   //  color: Colors.green,
    //                    child: Row(children: [
    //                     Icon(Icons.wordpress_outlined),
    //                     Text("35 tours"),
    //                    ]),
    //                  ),
    //               ),
    //             ),
    //          ],),

    //       //  *next widget
    //      ],
    //    ),
    //   ),
    // );
  }
}
