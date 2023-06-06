import 'package:flutter/material.dart';

void main() {
  runApp(const SmallCalculator());
}

class SmallCalculator extends StatelessWidget {
  const SmallCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Calcutaor(),
    );
  }
}

class Calcutaor extends StatefulWidget {
  const Calcutaor({super.key});

  @override
  State<Calcutaor> createState() => _CalcutaorState();
}

class _CalcutaorState extends State<Calcutaor> {
    var value1 = TextEditingController();
  var value2 = TextEditingController();
  // double num1 =2;
  // double num2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Small Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextField(
              controller: value1,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            onChanged: (value) {
              
            },),
            const SizedBox(height: 20,),
             TextField(
              controller: value2,
              decoration:const InputDecoration(border: OutlineInputBorder()),),
            const SizedBox( height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {
                   setState(() {
                   });
                }, 
                child:  Text("+",style: buttonTextStyle(),)),
                ElevatedButton(onPressed: () {}, 
                child:  Text("-",style: buttonTextStyle(),)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, 
                child:  Text("*",style:buttonTextStyle())),
                ElevatedButton(onPressed: () {}, 
                child:  Text("/",style: buttonTextStyle(),)),
              ],
            ),
            Text("data")
          ],
        ),
      ),
    );
  }
}

TextStyle buttonTextStyle() =>
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
