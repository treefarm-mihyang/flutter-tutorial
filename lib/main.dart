import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  List<int> numbers = [];

  void onPressed() {
    setState(() {
      counter = counter + 1;
      numbers.add(numbers.length);
      print(numbers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click here",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              Text(
                "$counter",
                style: const TextStyle(
                  fontSize: 32,
                ),
              ),
              IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.add_box),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
