import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import '../constant_file/colours_files.dart';
import 'background_colour_and_working.dart';

void main(List<String> args) {
  runApp(const NeumorphismLogin());
}

class NeumorphismLogin extends StatelessWidget {
  const NeumorphismLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home:  const BeautifulUiPage(),
    );
  }
}


class BeautifulUiPage extends StatefulWidget {
  const BeautifulUiPage({super.key});

  @override
  State<BeautifulUiPage> createState() => _BeautifulUiPageState();
}

class _BeautifulUiPageState extends State<BeautifulUiPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 205, 0),
      body: BackgroundColourAndText(),
    );
  }
}