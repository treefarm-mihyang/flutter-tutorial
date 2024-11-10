import 'package:flutter/material.dart';
import 'package:toonflix/game/game_body.dart';

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
          title: const Text("가위 바위 보"),
        ),
        body: const GameBody(),
      ),
    );
  }
}
