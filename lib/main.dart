import 'package:flutter/material.dart';
import 'package:toonflix/widgets/PopupMenuWidget.dart';
import 'package:toonflix/widgets/checkboxes.dart';
import 'package:toonflix/widgets/radios.dart';
import 'package:toonflix/widgets/sliderWidget.dart';
import 'package:toonflix/widgets/switchWidget.dart';

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
          title: const Text("Flutter Inputs"),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  Body({super.key});

  List<bool> values = [false, false, false];

  onChanged() {}

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Checkboxes(),
        Radios(),
        SliderWidget(),
        SwitchWidget(),
        PopupMenuWidget(),
      ],
    );
  }
}
