import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

AppBar fashionAppBar() {
  return AppBar(
    leading:const Icon(Icons.menu,color: Colors.black,),
    elevation: 0,
    backgroundColor: Colors.white,
    actions: const [Icon(Icons.search,color: Colors.black,)],
  );
}
