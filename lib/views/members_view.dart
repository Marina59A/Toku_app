import 'package:flutter/material.dart';
import 'package:toku_app/models/members.dart';
import 'package:toku_app/views/home_view.dart';
import 'package:toku_app/widgets/fimaly_item.dart';

class MemberView extends StatelessWidget {
  const MemberView({super.key});
  static String id = 'Members View';
  final List<Family> familylist = const [
    Family(
        image: "assets/images/family_members/family_father.png",
        jpName: "Chichioya",
        enName: "father",
        sound: "sounds/family_members/father.wav"),
    Family(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "daughter",
        sound: "sounds/family_members/daughter.wav"),
    Family(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "Ojisan",
        enName: "Grand Father",
        sound: "sounds/family_members/father.wav"),
    Family(
        image: "assets/images/family_members/family_mother.png",
        jpName: "Hahaoya",
        enName: "mother",
        sound: "sounds/family_members/mother.wav"),
    Family(
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "Grand Mother",
        sound: "sounds/family_members/mother.wav"),
    Family(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "Nisan",
        enName: "older brother",
        sound: "sounds/family_members/son.wav"),
    Family(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "older sister",
        sound: "sounds/family_members/daughter.wav"),
    Family(
        image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "son",
        sound: "sounds/family_members/son.wav"),
    Family(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "otouto",
        enName: "younger brother",
        sound: "sounds/family_members/son.wav"),
    Family(
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "imouto",
        enName: "younger sister",
        sound: "sounds/family_members/daughter.wav"),
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
            'Family Members',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemCount: familylist.length,
            itemBuilder: (context, index) {
              return FamilyItem(family: familylist[index]);
            }));
  }
}
