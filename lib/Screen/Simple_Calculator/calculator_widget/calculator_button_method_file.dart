import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {super.key, 
      required this.numberAndOperatorText, 
      this.onPressed, 
      this.backgroundColour= const Color.fromARGB(255, 167, 163, 158), });

  final String numberAndOperatorText;
  final VoidCallback? onPressed;
  final Color? backgroundColour;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: FloatingActionButton(
          elevation: 12,
          backgroundColor:backgroundColour,
          onPressed: onPressed,
          child: Center(child: Text(numberAndOperatorText,style: TextStyle(
    fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),))
        ));
  }
}
