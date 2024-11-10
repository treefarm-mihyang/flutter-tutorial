import 'package:flutter/material.dart';

void main() async {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Router"),
        ),
        body: homeBody(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.person)),
          ],
          currentIndex: index,
          onTap: (value) => setState(() {
            index = value;
          }),
        ),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return const Center(child: Icon(Icons.search));
      case 2:
        return const Center(child: Icon(Icons.person));
      case 0:
      default:
        return const Center(child: Icon(Icons.home));
    }
  }
}
