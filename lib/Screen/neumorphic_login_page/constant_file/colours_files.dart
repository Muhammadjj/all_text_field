import 'package:flutter/material.dart';

LinearGradient gradientColours() {
  return const LinearGradient(colors: 
  [Color.fromARGB(255, 255, 205, 0),
    Color.fromARGB(255, 255, 183, 0),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
    );
}
