import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:neumorphism_beautiful_pages/Screen/FashionUI/fashion_widget/scroll_row_vise_continer_method.dart';

class ListTextTile extends StatelessWidget {
  const ListTextTile({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children:  [
          // ** First Text ListTile .
          const ListTile(title: Text("Fashion Week",
          style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 163, 137, 189),
          fontWeight: FontWeight.bold),),
          subtitle: Text("2023 Fashion Show in London",style: TextStyle(color: Color.fromARGB(255, 194, 192, 194)),),),
    
          // **Second Text And Icon ListTile.
          const ListTile(title:Text("Explore",style: TextStyle(fontSize: 23,color: Color.fromARGB(255, 163, 137, 189),
          fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.shopping_bag_outlined,color: Color.fromARGB(255, 163, 137, 189),),),
          
          Padding(padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Recommended",style: textStyleRecommended(),),
              Text("New Model",style: textStyleModel(),),
              Text("2022 Show",style: textStyleModel(),),
            ],),
          ),
    
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FashionScroolerMethod(
                height: height * 0.33,
                width: width * 0.6,
                images: "assest/images/fashion1.jpg",
                title: Text("Niketa Willen",style: titleTextStyle()),
                subtitle:  Text("Paris",style: subtitleTextStyle()),),
    
                
                FashionScroolerMethod(
                height: height * 0.33,
                width: width * 0.6,
                images: "assest/images/fashion.jpg",
                title: Text("Halean",style: titleTextStyle()),
                subtitle:  Text("London",style: subtitleTextStyle()),),
    
                
                FashionScroolerMethod(
                height: height * 0.33,
                width: width * 0.6,
                images: "assest/images/fashion2.jpg",
                title: Text("Jophana",style: titleTextStyle()),
                subtitle:  Text("Germeny",style: subtitleTextStyle()),),
    
                
                // FashionScroolerMethod(
                // height: height * 0.33,
                // width: width * 0.6,
                // images: "assest/images/remote_control.png",
                // title: Text("Niketa Willen",style: titleTextStyle()),
                // subtitle:  Text("asdfasdf",style: subtitleTextStyle()),),
              ],
            ),
          ),
    
          FashionScroolerMethod(
            height: height * 0.29,
            width: width * 0.9,
            outercontainerheight: 100,
            outercontainerwidth: 350,
            images: "assest/images/fashion.jpg",
          ),

          FashionScroolerMethod(
            height: height * 0.29,
            width: width * 0.9,
            outercontainerheight: 100,
            outercontainerwidth: 350,
            images: "assest/images/fashion3.jpg",
          ),
        ],
      ),
    );
  }
}





TextStyle textStyleRecommended(){
  return const TextStyle(fontSize: 17,color: Color.fromARGB(255, 213, 207, 229,),
  decoration: TextDecoration.underline);
}

TextStyle textStyleModel() {
  return const TextStyle(fontSize: 17, color: Color.fromARGB(199, 144, 144, 144));
}


TextStyle titleTextStyle(){
  return const TextStyle(fontSize: 25,color: Color.fromARGB(255, 0, 0, 0),
               fontWeight: FontWeight.bold);
}

TextStyle subtitleTextStyle(){
  return const TextStyle(fontSize: 17,color: Color.fromARGB(167, 0, 0, 0),
               fontWeight: FontWeight.bold);
}