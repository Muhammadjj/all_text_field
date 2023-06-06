import 'package:flutter/material.dart';

AppBar chatScreenAppBar() {
  return AppBar(
    // backgroundColor: const Color.fromARGB(255, 32, 119, 35),
    leading: const Icon(
      Icons.arrow_back,
      color: Colors.white,
    ),
    actions: [
      Row(
        children: [
          const CircleAvatar(
              backgroundImage: AssetImage("assest/images/nikeshoes5.png"),
              backgroundColor: Color.fromARGB(255, 65, 175, 122)),
          Column(
            children: const [
              SizedBox(
                width: 150,
                child: ListTile(
                  title: Text(
                    "Nike Manager\n5/5/2005",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const Icon(
            Icons.video_call,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.call,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      )
    ],
  );
}

//  ** 2nd Contnainer Send Message.
class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var heightMediaQuery = MediaQuery.of(context).size.height;
    var widthMediaQuery = MediaQuery.of(context).size.width;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Container(
          height: heightMediaQuery * 0.1,
          width: widthMediaQuery * 0.99,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color.fromARGB(255, 224, 224, 224),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: widthMediaQuery * 0.7,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "New Message"),
                ),
              ),
              const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 32, 119, 35),
                child: Icon(Icons.send),
              )
            ],
          ),
        ),
      ),
    );
  }
}


//  ** 1st Contnainer (Right Side) Send Message.
class FirstContainer extends StatelessWidget {
  const FirstContainer(
      {super.key, required this.height, required this.width, this.text});

  final double? height;
  final double? width;
  final String? text;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(shadowColor: Colors.black,
                elevation: 10,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: height,
                  width: width,
                  decoration: const BoxDecoration(
                      color:  Color.fromARGB(255, 32, 119, 35),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Text("$text",style: TextStyle(fontSize: 15,color: Colors.white),)),
                ),
              ),
             const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assest/images/users.png"),
              )
            ],
          ),
        ],
      ),
    );
  }
}


//  ** 1st Contnainer (Left Side) Part Send Message.
class FirstConstainerPart extends StatelessWidget {
  const FirstConstainerPart({super.key, this.height, this.width, this.text});

final double? height;
  final double? width;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("assest/images/nikeshoes5.png"),),
                      Container(
                        height: height,
                        width: width,
                        decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 224, 224, 224),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Center(child: Text("$text",style:const TextStyle(fontSize: 15,color: Colors.black),)),
                      ),
                    ],
                  ),
                ],
              ),
    );
  }
}