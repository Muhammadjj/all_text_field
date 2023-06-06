import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphism_beautiful_pages/Components/Nike_Shoes_DashBoard_Constant_files/colours_file.dart';
import 'package:auto_size_text/auto_size_text.dart';


// ** Custom Drawer And Notification Design.
class CustomDrawerAndNotification extends StatefulWidget {
  const CustomDrawerAndNotification({super.key});

  @override
  State<CustomDrawerAndNotification> createState() => _CustomDrawerAndNotificationState();
}

class _CustomDrawerAndNotificationState extends State<CustomDrawerAndNotification> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NeumorphicFloatingActionButton( child: Icon(Icons.menu), onPressed: (){},
          style: NeumorphicStyle(shadowLightColor: Colors.black.withOpacity(0.5),color: Colors.white)),

          NeumorphicFloatingActionButton( child: Icon(FontAwesomeIcons.solidBell), onPressed: (){},
          style: NeumorphicStyle(shadowLightColor: Colors.black.withOpacity(0.5),color: Colors.white)
          ),
        ],
      ),
    );
  }
}



// ** Search Bar below of the Custom Drawer.
class SearchBar1 extends StatelessWidget {
  const SearchBar1({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  Padding(padding: const EdgeInsets.all(12.0),
      child: Container(
        width: width*0.9,
        height: height*0.08,
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.4),blurRadius: 1,spreadRadius: 0.4)]),
        child: Padding(padding: const EdgeInsets.all(8.0),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
            Text("Search"),
            Icon(Icons.search,color: Colors.black,size: 30,)
            ],),
        ),
      ),
    );
  }
}


// ** Custom 1st Card row  Usind Container Below To The Search Bar
class ProductItemShoes extends StatelessWidget {
  const ProductItemShoes({super.key, this.images, this.title, this.price, this.subtitle});

  final String? images;
  final String? title;
  final String? subtitle;
  final String? price;

  @override
  Widget build(BuildContext context) {
    
    var widthMediaQuery = MediaQuery.of(context).size.width;
    var heightMediaQuery = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: heightMediaQuery*0.2,//150
        width: widthMediaQuery*0.9,//300
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.4),blurRadius: 2.0),]),
          
       child: Row(
        children:  [
          // ** 1st Part 
            Stack(children:  [
              Container(
                padding:const EdgeInsets.only(left: 10),
                margin:const EdgeInsets.all(30),
                height: heightMediaQuery*0.10,
                width: widthMediaQuery*0.3,
                decoration: BoxDecoration(
                color:containerColor(),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.6),blurRadius: 5)
                  ]),
              ),
    
              Positioned(
                bottom: 30,
                left: 55,
                child:ColoredBox(
                  color: Colors.transparent,
                  child: Container(
                  margin: EdgeInsets.all(10),
                  height: heightMediaQuery*0.14,
                  width: widthMediaQuery*0.3,
                  decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage("$images"))),
                  
                                ),
                ))
            ],) ,
    
        // **2nd Part
         Container(
          child: Column(children: [
            SizedBox(
            width: widthMediaQuery*0.4,
             child: ListTile(
              title: AutoSizeText("$title",style:const TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,),
              subtitle: AutoSizeText("$subtitle",style:const TextStyle(fontStyle: FontStyle.italic,overflow: TextOverflow.ellipsis),maxLines: 1,),
             ),
           ),
           SizedBox(
            width: widthMediaQuery*0.4,
            child: ListTile(
              title:  AutoSizeText("$price",style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.red,overflow: TextOverflow.ellipsis),
              maxLines: 1,minFontSize: 14,presetFontSizes: [14,17,22]),
              trailing: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                color:const Color.fromARGB(255, 68, 81, 102),),
                child:const FittedBox(child:  Icon(Icons.shopping_basket,color: Colors.white,))),
            ),
           )
          ],),
         ),
       ],),
      ),
    );
  }
}






// ** 

class ShoesItems extends StatelessWidget {
  const ShoesItems({super.key, this.images, this.title, this.subtitle, this.price});

 final String? images;
  final String? title;
  final String? subtitle;
  final String? price;

  @override
  Widget build(BuildContext context) {
    var heightMediaQuery= MediaQuery.of(context).size.height;
    var widthMediaQuery= MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Container(
        height: heightMediaQuery*0.30,//250
        width: widthMediaQuery*0.4,//160
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.4),blurRadius: 2.0),]),
        
            child: Column(
              children: [
              ColoredBox(
                color: Colors.transparent,
                child: Expanded(
                  child: Container(
                    height: heightMediaQuery*0.1,
                    width: widthMediaQuery,
                    decoration: BoxDecoration(image: 
                    DecorationImage(image: AssetImage("$images"),)),
                  ),
                ),
              ),
               
               ListTile(
                title: AutoSizeText("$title",maxLines: 1,style:const TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                subtitle: AutoSizeText("$subtitle",maxLines: 1,style:const TextStyle(fontSize: 17,fontStyle: FontStyle.italic,overflow: TextOverflow.ellipsis),),
              ),
              ListTile(
                title:  AutoSizeText("$price",maxLines: 1,style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.red,overflow: TextOverflow.ellipsis),),
                trailing: Container(
                  height: heightMediaQuery*0.050,
                  width: widthMediaQuery*0.050,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                  color:const Color.fromARGB(255, 68, 81, 102),),
                  child: const Icon(Icons.shopping_basket,color: Colors.white,)),
              )
            ],),
      ),
    );
  }
}