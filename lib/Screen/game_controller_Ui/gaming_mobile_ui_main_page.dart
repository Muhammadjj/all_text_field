import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'complete_game_page/row_vise_container/background_stack_working.dart';


void main(List<String> args) {
  runApp(const GamingNeumorphismUis());
}

class GamingNeumorphismUis extends StatelessWidget {
  const GamingNeumorphismUis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home:const GamingMobileUis() ,
    );
  }
}

class GamingMobileUis extends StatefulWidget {
  const GamingMobileUis({super.key});

  @override
  State<GamingMobileUis> createState() => _GamingMobileUisState();
}

class _GamingMobileUisState extends State<GamingMobileUis> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 48, 64),
      body: SafeArea(
        child: StackWorking(),
      ),
    );
  }
}