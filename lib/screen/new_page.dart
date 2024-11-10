import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text("Go to Back"),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () => context.pushNamed('new2'),
              child: const Text("Go to Newpage2"),
            ),
          ),
        ],
      ),
    );
  }
}
