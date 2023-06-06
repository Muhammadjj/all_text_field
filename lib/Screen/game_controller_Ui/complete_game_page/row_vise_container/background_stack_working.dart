import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import '../container_working/scrollable_container_working.dart';
import 'background_two_container.dart';
import 'customize_bottom_navigation_bar.dart';
import 'four_floating_buttons.dart';
import 'row_vise_floating_button.dart';

class StackWorking extends StatelessWidget {
  const StackWorking({super.key});

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: [
        const BackgroundTwoContainer(),
        const FloatingButton(),
         const Padding(padding:  EdgeInsets.only(top: 70.0),
            child: ListTile(
              title: Text("Feature",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
              subtitle:Text("Products",style: TextStyle(fontSize: 37,fontWeight: FontWeight.w500,color: Colors.white),),
            ),
          ),
          // ** Four Floating Action Button .
          const FourFloatButton(),
          
          SizedBox(height: height*0.2,),
          // ** Scrollable Container.
          const ScrollableContainer(),
          
          // ** Bottom Navagation Bar.
          const CustomizeBottomNavigationBar(),

      ]),
    );
  }
}



/**
 * 
        const FittedBox(child:Text("Feature",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500,color: Colors.white),)),
          const FittedBox(child:Text("Products",style: TextStyle(fontSize: 37,fontWeight: FontWeight.w500,color: Colors.white),)),
 */