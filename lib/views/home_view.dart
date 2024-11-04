import 'package:flutter/material.dart';
import 'package:toku_app/views/colors_view.dart';
import 'package:toku_app/views/members_view.dart';
import 'package:toku_app/views/number_view.dart';
import 'package:toku_app/views/phrases_view.dart';
import 'package:toku_app/widgets/custom_catogry_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4da),
      appBar: AppBar(
        backgroundColor: const Color(0xff4a322b),
        title: const Text(
          "Toku",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          CustomCatogryItem(
            item: 'Numbers',
            color: const Color(0xfffa9532),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NumberView();
                  },
                ),
              );
            },
          ),
          CustomCatogryItem(
            color: const Color(0xff538033),
            item: 'Family Members',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MemberView();
                  },
                ),
              );
            },
          ),
          CustomCatogryItem(
            color: const Color(0xff7e3fa3),
            item: 'Colors',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ColorView();
                  },
                ),
              );
            },
          ),
          CustomCatogryItem(
            color: const Color(0xff48a5cc),
            item: 'Phrases',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PhrasesView();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
