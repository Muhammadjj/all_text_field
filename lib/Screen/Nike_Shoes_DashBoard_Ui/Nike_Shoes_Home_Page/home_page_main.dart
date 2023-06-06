import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:neumorphism_beautiful_pages/Components/Nike_Shoes_DashBoard_Constant_files/colours_file.dart';

import 'home_page_widget.dart';

void main(List<String> args) {
  runApp(const BeauutifulShoesUI());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: backgroundColours(),
    statusBarIconBrightness: Brightness.dark),
  );
}

class BeauutifulShoesUI extends StatelessWidget {
  const BeauutifulShoesUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const NikeShoesUi(),
    );
  }
}

class NikeShoesUi extends StatefulWidget {
  const NikeShoesUi({super.key});

  @override
  State<NikeShoesUi> createState() => _NikeShoesUiState();
}

class _NikeShoesUiState extends State<NikeShoesUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColours(),
      body:const SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children:  [
              // ** Call this Class (CustomDrawerAndNotification).
               CustomDrawerAndNotification(),
              // **Call this Class (SearchBar).
               SearchBar1(),
              // ** Call this Class Row vise Working (ProductItemShoes).
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children:  [
                    ProductItemShoes(
                      images: "assest/images/nikeshoes1.png",
                      title: "Nike Shoes",
                      subtitle: "Man's Shoes",
                      price: "118&",
                    ),
                    
                    ProductItemShoes(
                      images: "assest/images/nikeshoes2.png",
                      title: "Hushpuppi Shoes",
                      subtitle: "Man's Shoes",
                      price: "267&",
                    ),
                    
                    ProductItemShoes(
                      images: "assest/images/nikeshoes3.png",
                      title: "Loofer Shoes",
                      subtitle: "Boy's Shoes",
                      price: "345&",
                    ),
                    
                    ProductItemShoes(
                      images: "assest/images/nikeshoes4.png",
                      title: "JJ Shoes",
                      subtitle: "Man's Shoes",
                      price: "150&",
                    ),
                    
                    ProductItemShoes(
                      images: "assest/images/nikeshoes5.png",
                      title: "Gochi Shoes",
                      subtitle: "Man's Shoes",
                      price: "100&",),
                  ],
                ),
              ),
        
        
            // **
             SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                      ShoesItems(
                      images: "assest/images/nikeshoes1.png",
                      title: "Nike Shoes",
                      subtitle: "Man's Shoes",
                      price: "118&",),

                        ShoesItems(
                      images: "assest/images/nikeshoes2.png",
                      title: "Hushpuppi Shoes",
                      subtitle: "Man's Shoes",
                      price: "267&",),
                    ],
                  ),
                    Row(
                      children:  [
                        ShoesItems(
                          images: "assest/images/nikeshoes3.png",
                          title: "Loofer Shoes",
                          subtitle: "Boy's Shoes",
                          price: "345&",
                        ),
                        ShoesItems(
                          images: "assest/images/nikeshoes4.png",
                          title: "JJ Shoes",
                          subtitle: "Man's Shoes",
                          price: "150&",
                        ),
                      ],
                    ),
        
                ],
              ),
            ),
        
            ],
          ),
        ),
      ),
    );
  }
}
