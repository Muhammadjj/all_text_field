import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({super.key, this.height, this.width, this.title = "+", this.color});

  final double? height;
  final double? width;
  final String? title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue),
      child: Center(child: AutoSizeText("$title",style: TextStyle(color: color,fontSize: 20),)),
    );
  }
}

class StackWorking extends StatelessWidget {
  const StackWorking({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: height * 0.58,
          width: width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
                gradient: LinearGradient(colors: [
                Color.fromARGB(255, 0, 148, 201),
                Color.fromARGB(255, 0, 177, 239)
            ]),
          ),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon( Icons.arrow_back, color: Colors.white,),
                  Icon(Icons.wordpress, color: Colors.white,),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.3,
              child: const Image(
                image: AssetImage("assest/images/icecream.png"),
              ),
            ),
          ]),
        ),
        Positioned(
          child: Container(
            margin: EdgeInsets.only(top: height * 0.4, left: width * 0.1),
            height: height * 0.25,
            width: width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black45,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 2,
                      spreadRadius: 0.8),
                ],
                color: Colors.white),
            child: Column(
              children: [
                const AutoSizeText( "CHOCOBAR",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),maxLines: 1, ),
                SizedBox( height: height * 0.03,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row( children: [
                        Icon(Icons.person,color: Colors.black,),
                        AutoSizeText("1.4k",style: TextStyle(color: Colors.blue),maxLines: 1,)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star_border_sharp, color: Colors.black,),
                        AutoSizeText("4.0",style: TextStyle(color: Colors.blue),maxLines: 1,)
                      ],),
                    Row(
                      children: [
                        Icon(Icons.explicit_sharp,color: Colors.black,),
                        AutoSizeText("1.4k",style: TextStyle(color: Colors.blue), maxLines: 1,)
                      ],
                    ),
                  ],
                ),
                 
                SizedBox( height: height * 0.03,),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  ContainerButton(height: 40,width: 50,color: Colors.white,title: "1kg",),
                  ContainerButton(height: 40,width: 60,color: Colors.white,title: "20kg",),
                  ContainerButton(height: 40,width: 80,color: Colors.white,title: "500kg",),
                  ContainerButton(height: 40,width: 50,color: Colors.white,title: "+",),

                  ],),
              ],
            ),
          ),
        )
      ],
    );
  }
}






class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}