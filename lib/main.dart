import 'package:flutter/material.dart';

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

  onChanged() {}

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TestWidget(),
      ],
    );
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  void addCounter(int addValue) {
    setState(() {
      value = value + addValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            'Count: $value',
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TestButton(addCounter),
        ],
      ),
    );
  }
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, {super.key});

  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback.call(1),
      onDoubleTap: () => callback.call(5),
      onLongPress: () => callback.call(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          "Up Counter",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
