import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(const BeautifulNike());
}


Color containerColor()=>const Color.fromARGB(255, 68, 81, 102);
class BeautifulNike extends StatelessWidget {
  const BeautifulNike({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const BeautifulBoat(),
    );
  }
}

class BeautifulBoat extends StatefulWidget {
  const BeautifulBoat({super.key});

  @override
  State<BeautifulBoat> createState() => _BeautifulBoatState();
}

class _BeautifulBoatState extends State<BeautifulBoat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 216, 235),
      body: Center(
        child: Container(
          height: 150,
          width: 300,
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
                  height: 80,
                  width: 100,
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
                    height: 100,
                    width: 100,
                    decoration:const BoxDecoration(image: DecorationImage(
                      image: AssetImage("assest/images/nikeshoes3.png"))),
                    
                                  ),
                  ))
              ],) ,

          // **2nd Part
           Container(
            child: Column(children: [
             const SizedBox(
              width: 130,
               child: ListTile(
                title: Text("Nike Shoes",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                subtitle:Text("Man's Shoes",style: TextStyle(fontSize: 13,fontStyle: FontStyle.italic),),
               ),
             ),
             SizedBox(
              width: 130,
              child: ListTile(
                title: const Text("55&",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                trailing: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                  color:const Color.fromARGB(255, 68, 81, 102),),
                  child: const Icon(Icons.shopping_basket,color: Colors.white,)),
              ),
             )
            ],),
           ),
         ],),
        ),
      ),
    );
  }
}
