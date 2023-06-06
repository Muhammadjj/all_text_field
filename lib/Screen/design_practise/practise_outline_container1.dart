import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            const SizedBox(height: 30,),
           stackover(),
           const SizedBox(height: 30,),
           stackover(),
           const SizedBox(height: 30,),
           stackover(),
           const SizedBox(height: 30,),
           stackover(),
           const SizedBox(height: 30,),
           stackover(),
           const SizedBox(height: 30,),
           stackover(),
           
          ],),
        )
      ),
    );
  }
}



Widget stackover(){
  return Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  decoration:  BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(30),),
                  ),
                  child:Column(
                    children: [
                      const ListTile(
                        title: Text("Nike"),
                        subtitle: Text("Beautiful Shoes"),
                        trailing: Icon(Icons.circle),
                      ),
                      
                    ElevatedButton(onPressed: (){}, child: const Text("data"))
                    ],
                  )
                ),
                 
              ],
            ),


            Positioned(
              child:
             Padding(
               padding: const EdgeInsets.only(top: 100),
               child: Container(
                margin: EdgeInsets.only(left: 140),
                height: 100,
                width: 100,
                child: Image(image: AssetImage("assest/images/nikeshoes.png")),
               ),
             )),
          ],
        );
}