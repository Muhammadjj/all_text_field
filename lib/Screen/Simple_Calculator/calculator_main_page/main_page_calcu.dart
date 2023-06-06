import 'package:flutter/material.dart';
import '../calculator_widget/calculator_button_method_file.dart';
import 'package:math_expressions/math_expressions.dart';

void main(List<String> args) {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {

  bool allchangeAppColour = false;
  var userInput = "";
  var answer = "";

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: allchangeAppColour? ThemeData(brightness: Brightness.dark):ThemeData(brightness: Brightness.light),
      home: Scaffold(
        body: SafeArea(
          child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(children: [
               Switch(value: allchangeAppColour, onChanged: (value) {
                 setState(() {allchangeAppColour = value;});
               },)
    
          ],),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(alignment: Alignment.bottomRight, child: Text(userInput,style: calculatorShowNumberText(),)),
                  Align(alignment: Alignment.bottomRight, child: Text(answer,style: calculatorShowAnswerText(),)),
                ],
              ),
            ),
          ),
    
    
    
          Column(
            children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CalculatorButton(
                backgroundColour: Color.fromARGB(255, 100, 228, 83),
              numberAndOperatorText:"AC",
              onPressed: () {
                setState(() {
                userInput = "";
                answer = "";
                });
              },),
              CalculatorButton(
                backgroundColour: Color.fromARGB(255, 100, 228, 83),
              numberAndOperatorText:"+/-",
              onPressed: () {
               setState(() {
                  userInput += "+/-";
                }); 
              },),
              CalculatorButton(
                backgroundColour: Color.fromARGB(255, 100, 228, 83),
              numberAndOperatorText:"%",
              onPressed: () {
                setState(() {
                  userInput += "%";
                });
              },),
              CalculatorButton(
              numberAndOperatorText:"/",
              backgroundColour: Color.fromARGB(255, 100, 228, 83),
              onPressed: () {
                setState(() {
                  userInput += "/";
                });
              },),
            ],
            ),
          
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CalculatorButton(
              numberAndOperatorText:"7",
              onPressed: () {
                setState(() {
                  userInput += "7";
                });
              },),
              CalculatorButton(
              numberAndOperatorText: "8",
              onPressed: () {
                setState(() {
                  userInput += "8";
                });
              },),
              CalculatorButton(
              numberAndOperatorText:"9",
              onPressed: () {
                setState(() {
                  userInput += "9";
                });},),
              CalculatorButton(
              numberAndOperatorText: "X",
              backgroundColour: Color.fromARGB(255, 100, 228, 83),
              onPressed: () {
                setState(() {
                  userInput += "X";
                });
              },),
            ],
            ),
            
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CalculatorButton(
              numberAndOperatorText:"4",
              onPressed: () {
                setState(() {
                  userInput += "4";
                });
              },),
              CalculatorButton(
              numberAndOperatorText:"5",
              onPressed: () {
                setState(() {
                  userInput += "5";
                });
              },),
              CalculatorButton(
              numberAndOperatorText:"6",
              onPressed: () {
                setState(() {
                  userInput += "6";
                });
              },),
              CalculatorButton(
              numberAndOperatorText:"-",
              backgroundColour:  Color.fromARGB(255, 100, 228, 83),
              onPressed: () {
                setState(() {
                  userInput += "-";
                });
              },),
            ],
            ),
          
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CalculatorButton(
              numberAndOperatorText:"1",
              onPressed: () {
                setState(() {
                  userInput += "1";
                });
              },),
              CalculatorButton(
              numberAndOperatorText: "2",
              onPressed: () {
                setState(() {
                  userInput += "2";
                });
              },),
              CalculatorButton(
              numberAndOperatorText: "3",
              onPressed: () {
                setState(() {
                  userInput += "3";
                });
              },),
              CalculatorButton(
              numberAndOperatorText: "+",
              backgroundColour:  Color.fromARGB(255, 100, 228, 83),
              onPressed: () {
                setState(() {
                  userInput += "+";
                });
              },),
            ],
            ),
          
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CalculatorButton(
              numberAndOperatorText: "0",
              onPressed: () {
                setState(() {
                  userInput += "0";
                });
              },),
              CalculatorButton(
              numberAndOperatorText: ".",
              onPressed: () {
                setState(() {
                  userInput += ".";
                });
              },),
              CalculatorButton(
              numberAndOperatorText: "DEL",
              onPressed: () {
                setState(() {
               userInput = userInput.substring(0,userInput.length -1);
                });
              },),
              CalculatorButton(
              numberAndOperatorText: "=",
              backgroundColour:  Color.fromARGB(255, 100, 228, 83),
              onPressed: () {
                setState(() {
                  Parser parser = Parser();
                  Expression expression = parser.parse(userInput);
                  ContextModel contextModel =ContextModel();
    
                  double eval = expression.evaluate(EvaluationType.REAL, contextModel);
                  answer =eval.toString();
                });
              },),
            ],
            ),
          
            ],
           )
         ],
       ),
       )
      
      
      ),
    );
  }
  

 // ** Ya TextStyle() hmra ays Text ka ha jo hm na button press hony pr show
 // ** krwana ha.
 TextStyle calculatorShowNumberText() =>
 const TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white,);

 TextStyle calculatorShowAnswerText() =>
 const TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.limeAccent,);
}