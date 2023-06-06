import 'package:flutter/material.dart';
import 'all_row_vise_work/floating_button.dart';
import 'otherworking_working.dart';

void main(List<String> args) {
  runApp(const NeumorphicProfileDesign());
}

class NeumorphicProfileDesign extends StatelessWidget {
  const NeumorphicProfileDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const NeumorphicBeautifulDesign(),
    );
  }
}


class NeumorphicBeautifulDesign extends StatefulWidget {
  const NeumorphicBeautifulDesign({super.key});

  @override
  State<NeumorphicBeautifulDesign> createState() => _NeumorphicBeautifulDesignState();
}

class _NeumorphicBeautifulDesignState extends State<NeumorphicBeautifulDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:const [
              // *Floating Action Buttons.
                FloatingPointButtonNoumorphic(),
                
                CircleAvtorWorking()
          ]),
        ),
      ),
    );
  }
}