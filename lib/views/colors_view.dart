import 'package:flutter/material.dart';
import 'package:toku_app/models/color.dart';
import 'package:toku_app/views/home_view.dart';
import 'package:toku_app/widgets/color_item.dart';

class ColorView extends StatelessWidget {
  const ColorView({super.key});
  static String id = 'Colors View';
  final List<Color1> colorList = const [
    Color1(
        image: "assets/images/colors/color_black.png",
        jpName: "Burakku",
        enName: "black",
        sound: "sounds/colors/black.wav"),
    Color1(
        image: "assets/images/colors/color_brown.png",
        jpName: "Chairo",
        enName: "brown",
        sound: "sounds/colors/brown.wav"),
    Color1(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "Hokori ppoi kiiro",
        enName: "dusty yellow",
        sound: "sounds/colors/brown.wav"),
    Color1(
        image: "assets/images/colors/color_gray.png",
        jpName: "Gure",
        enName: "gray",
        sound: "sounds/colors/gray.wav"),
    Color1(
        image: "assets/images/colors/color_green.png",
        jpName: "Midori",
        enName: "green",
        sound: "sounds/colors/green.wav"),
    Color1(
        image: "assets/images/colors/color_red.png",
        jpName: "Aka",
        enName: "red",
        sound: "sounds/colors/red.wav"),
    Color1(
        image: "assets/images/colors/color_white.png",
        jpName: "Shiroi",
        enName: "white",
        sound: "sounds/colors/white.wav"),
    Color1(
        image: "assets/images/colors/yellow.png",
        jpName: "Ki iro",
        enName: "yellow",
        sound: "sounds/colors/yellow.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4a322b),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomeView();
                },
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return ColorItem(color: colorList[index]);
          }),
    );
  }
}
