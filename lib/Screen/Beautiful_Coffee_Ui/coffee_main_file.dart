import 'package:flutter/material.dart';

import 'coffee_widget_file.dart';

void main(List<String> args) {
  runApp(const CoffeeUi());
}

class CoffeeUi extends StatelessWidget {
  const CoffeeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BeautifulUiDesign(),
    );
  }
}


class BeautifulUiDesign extends StatefulWidget {
  const BeautifulUiDesign({super.key});

  @override
  State<BeautifulUiDesign> createState() => _BeautifulUiDesignState();
}

class _BeautifulUiDesignState extends State<BeautifulUiDesign> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
            const StackWorking(),
            Container(),
        ],
      ),
    );
  }
} 