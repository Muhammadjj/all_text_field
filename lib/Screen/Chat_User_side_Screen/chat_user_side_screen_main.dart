import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'chat__user_side_screen_widget.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 32, 119, 35),
      systemNavigationBarColor: Color.fromARGB(255, 32, 119, 35),
      statusBarIconBrightness: Brightness.dark));
  runApp(const ChatScreen());
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // theme: ThemeData(primarySwatch: Colors.green),
      home: const UserSideChatScreen(),
    );
  }
}

class UserSideChatScreen extends StatefulWidget {
  const UserSideChatScreen({super.key});

  @override
  State<UserSideChatScreen> createState() => _UserSideChatScreenState();
}

class _UserSideChatScreenState extends State<UserSideChatScreen> {
  @override
  Widget build(BuildContext context) {
    var heightMediaQuery = MediaQuery.of(context).size.height;
    // var widthMediaQuery = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: chatScreenAppBar(),
      body: Column(
        children: [
          ListView(children: [
            SizedBox(
              height: heightMediaQuery * 0.8,
              child:const Column(
                children: [
                  // Todo Calll to First Container Like as send Messages and receive Messages
                  Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            FirstContainer(
                              height: 35,
                              width: 150,
                              text: "Asslam_o_Alikum",
                            ),
                            FirstContainer(
                              height: 35,
                              width: 170,
                              text: "Hy! How are you ?",
                            ),
                            FirstConstainerPart(
                              height: 35,
                              width: 50,
                              text: "Wao",
                            ),
                            FirstConstainerPart(
                              height: 35,
                              width: 150,
                              text: "I am Fine, And you?",
                            ),
                            FirstContainer(
                              height: 35,
                              width: 50,
                              text: "Fine.",
                            ),
                            FirstContainer(
                              height: 35,
                              width: 220,
                              text: "Are you going to market today ?",
                            ),
                            FirstConstainerPart(
                              height: 35,
                              width: 130,
                              text: "I suppose I am.",
                            ),
                            FirstConstainerPart(
                              height: 35,
                              width: 260,
                              text: "But I may not go if the weather is bad.",
                            ),
                          ],
                        ),
                      )),
          
                  // Todo : Call to Second Container Like as TextField or send Icon
                ],
              ),
            ),
          ]),
          const SecondContainer(),
        ],
      ),
    );
  }
}

// Widget messageText(String text){
//   return Text("$text",style: TextStyle(fontSize: 15,color: Colors.white),);
// }