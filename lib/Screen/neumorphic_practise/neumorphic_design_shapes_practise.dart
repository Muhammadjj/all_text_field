import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme:const NeumorphicThemeData(
        baseColor: Color(0xFFFFFFFF),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme:const NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NeumorphicFloatingActionButton(
        child: Icon(Icons.add, size: 30),
        onPressed: () {},
      ),
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            NeumorphicButton(
              onPressed: () {
                print("onClick");
              },
              style:const NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle(),
              ),
              padding: const EdgeInsets.all(12.0),
              child:const Icon(
                Icons.favorite_border,
                // color: _iconsColor(context),
              ),
            ),
            NeumorphicButton(
                margin: EdgeInsets.only(top: 12),
                onPressed: () {
                  NeumorphicTheme.of(context)?.themeMode =
                      NeumorphicTheme.isUsingDark(context)
                          ? ThemeMode.light
                          : ThemeMode.dark;
                },
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                ),
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Toggle Theme",
                  style: TextStyle(color: _textColor(context)),
                )),
            NeumorphicButton(
                margin: EdgeInsets.only(top: 12),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return Container();
                  }));
                },
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  border: NeumorphicBorder()
                ),
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Go to full sample",
                  style: TextStyle(color: _textColor(context)),
                )),
          ],
        ),
      ),
    );
  }

  // Color _iconsColor(BuildContext context) {
  //   final theme = NeumorphicTheme.of(context);
  //   if (theme.isUsingDark) {
  //     return theme.current.accentColor;
  //   } else {
  //     return null;
  //   }
  // }

  Color _textColor(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}



























// import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// void main(List<String> args) {
//   runApp(const NeumorphicDesign());
// }

// class NeumorphicDesign extends StatelessWidget {
//   const NeumorphicDesign({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const NeumorphicShapes(),
//     );
//   }
// }

// class NeumorphicShapes extends StatefulWidget {
//   const NeumorphicShapes({super.key});

//   @override
//   State<NeumorphicShapes> createState() => _NeumorphicShapesState();
// }

// class _NeumorphicShapesState extends State<NeumorphicShapes> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color.fromARGB(255, 223, 223, 223),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 width: 200,
//                 height: 100,
//                 child: NeumorphicButton(
//                   onPressed: () {},
//                   style: NeumorphicStyle(depth: 10, disableDepth: false),
//                   curve: Curves.bounceOut,
//                   child: Center(
//                     child: NeumorphicText("Click",
//                         textStyle: NeumorphicTextStyle(fontSize: 50),
//                         style: const NeumorphicStyle(
//                           color: Colors.blue,
//                           shape: NeumorphicShape.convex,
//                         )),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 30,),
//             NeumorphicFloatingActionButton(child: Center(child: NeumorphicIcon(size: 50,Icons.add_circle,style: NeumorphicStyle(color: Color.fromARGB(255, 168, 212, 238),))), onPressed: (){}),
//             SizedBox(height: 30,),
//             NeumorphicSwitch(isEnabled: true,style: NeumorphicSwitchStyle(trackDepth: 50,),),
//             SizedBox(height: 30,),
//             NeumorphicCheckbox(value: true, onChanged: (value){}),
//             SizedBox(height: 30,),
//             SizedBox(width:300,child: NeumorphicProgress(percent:20,style: ProgressStyle(),))
//           ],
//         ),
//       ),
//     );
//   }
// }
