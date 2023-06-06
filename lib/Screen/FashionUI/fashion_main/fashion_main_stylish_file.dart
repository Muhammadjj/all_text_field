import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import '../../../Components/fashion_ui_appbar.dart';
import '../fashion_widget/fashion_list_tile.dart';

void main(List<String> args) {
  runApp(const FashionUi());
}

class FashionUi extends StatelessWidget {
  const FashionUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(primarySwatch: Colors.blue),
      home: const FashionDesign(),
    );
  }
}


class FashionDesign extends StatefulWidget {
  const FashionDesign({super.key});

  @override
  State<FashionDesign> createState() => _FashionDesignState();
}

class _FashionDesignState extends State<FashionDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  fashionAppBar(),
      body:const ListTextTile(),
    );
  }
}