import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

void main(List<String> args) {
  runApp(NeumorphicDepthDesign());
}

class NeumorphicDepthDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Depthing Design",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const DepthingDesign(),
    );
  }
}

class DepthingDesign extends StatefulWidget {
  const DepthingDesign({super.key});

  @override
  State<StatefulWidget> createState() => _DepthingDesignState();
}

class _DepthingDesignState extends State<DepthingDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 201, 201),
      body: Center(
        child: Neumorphic(
          style:const NeumorphicStyle(
            depth: -10, 
            intensity: 2,
            surfaceIntensity: 2,
            shadowDarkColorEmboss: Color.fromARGB(129, 230, 245, 144),
            shadowLightColorEmboss: Color.fromARGB(131, 144, 136, 255)
            ),
          child: Container(
            height: 100,
            width: 200,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}