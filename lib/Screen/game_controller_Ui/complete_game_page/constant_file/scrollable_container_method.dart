import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ScrollableContainerMethod extends StatelessWidget {
  const ScrollableContainerMethod(
      {super.key,
      this.height,
      this.width,
      this.image,
      this.titleText,
      this.subtitle, 
      this.color =const Color.fromARGB(255, 41, 51, 66,),
      });

  final double? height;
  final double? width;
  final String? image;
  final Text? titleText;
  final Text? subtitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        //**  using Custom Clipper 
        Neumorphic(
            style: NeumorphicStyle(
              intensity: 0,
              color: Colors.transparent,
                boxShape: NeumorphicBoxShape.roundRect(const BorderRadius.all(
                  Radius.circular(30),)),
                depth: 0,
                ),
            child: ClipPath(
              clipper: RoundedDiagonalPathClipper(),
              child: Container(
                height: height,
                width: width,
                color: color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Flexible(flex: 4, child: Container(height: 170,width: 200, child: Image(image: AssetImage("$image"),))),
                  Flexible(child: Container(child: FittedBox(child: titleText),)),
                  Flexible(child: Container(child: FittedBox(child: subtitle))),
                ]),
              ),
            )),
      ],
    );
  }
}



/**
 * //* Rounded Corner scrollable Container. */
 * Row(
      children: [
        Neumorphic(
            style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.roundRect(const BorderRadius.all(
                  Radius.circular(30),
                )),
                depth: -20,
                shadowLightColorEmboss: Colors.black,
                shadowDarkColorEmboss: Colors.black45,),
            child: Container(
              height: height,
              width: width,
              color: color,
              child: Column(
                children: [
                Expanded(flex: 4, child: Image(image: AssetImage("$image"))),
                Flexible(child: Container(child: FittedBox(child: titleText),)),
                Flexible(child: Container(child: FittedBox(child: subtitle))),
              ]),
            )),
      ],
    );
 */