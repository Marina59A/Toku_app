import 'package:flutter/material.dart';
import 'package:toku_app/models/phrases.dart';
import 'package:toku_app/views/home_view.dart';
import 'package:toku_app/widgets/phases_item.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});
  static String id = 'Phrases View';
  final List<Phrase> phrasesList = const [
    Phrase(
        jpName: "Ködoku suru koto o wasurenaide kudasai",
        enName: "dont forget to subscribe",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrase(
        jpName: "Watashi wa puroguramingu ga daisukidesu",
        enName: "i love programming",
        sound: "sounds/phrases/i_love_programming.wav"),
    Phrase(
        jpName: "Puroguramingu wa kantandesu",
        enName: "programming is easy",
        sound: "sounds/phrases/programming_is_easy.wav"),
    Phrase(
        jpName: "Doko ni iku",
        enName: "where are you going",
        sound: "sounds/phrases/where_are_you_going.wav"),
    Phrase(
        jpName: "Namae wa nandesu ka",
        enName: "what is your name?",
        sound: "sounds/phrases/what_is_your_name.wav"),
    Phrase(
        jpName: "Watashi wa anime ga daisukidesu",
        enName: "i love anime",
        sound: "sounds/phrases/i_love_anime.wav"),
    Phrase(
        jpName: "Go kibun wa Ikegadesu ka",
        enName: "how are you feeling",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    Phrase(
        jpName: "Kimasu Ka",
        enName: "are you coming?",
        sound: "sounds/phrases/are_you_coming.wav"),
    Phrase(
        jpName: "Watashi Ka",
        enName: "yes im coming",
        sound: "sounds/phrases/yes_im_coming.wav"),
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
            "Phrases",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index) {
            return PhraseItem(phrase: phrasesList[index]);
          },
        ));
  }
}
