import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

const assetsImagePath = "assets/images";
const bannerImage = "$assetsImagePath/banner.png";

void main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter callback"),
        ),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RandomWords(),
        Center(
          child: Image.asset(bannerImage),
        )
      ],
    );
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList
        .map(
          (word) => Text(
            word.asUpperCase,
            style: const TextStyle(fontSize: 32),
          ),
        )
        .toList();

    return Column(
      children: widgets,
    );
  }
}
