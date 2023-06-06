import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class FashionScroolerMethod extends StatelessWidget {
 const  FashionScroolerMethod({super.key,
 this.images, this.title, 
 this.subtitle, this.height, 
 this.width, this.outercontainerheight =200, this.outercontainerwidth =200});

 final String? images;
 final Text? title;
 final Text? subtitle;
 final double? height;
 final double? width;
 final double? outercontainerheight;
 final double? outercontainerwidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius:const BorderRadius.all(Radius.circular(30)),
        child: Container(
          height: height,
          width:  width,
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    height: outercontainerheight,
                    width: outercontainerwidth,
                    decoration:  BoxDecoration(color: Colors.red,image: DecorationImage(image: AssetImage("$images"),fit: BoxFit.cover)),
                  ),
                ),
              ),
               Container(child: title,),
               Container(child: subtitle,),
            ],
          ),
          
        ),
      ),
    );
  }
}