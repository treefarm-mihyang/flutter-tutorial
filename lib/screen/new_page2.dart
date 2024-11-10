import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Page2"),
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
              onPressed: () => context.goNamed('home'),
              child: const Text("Go to Home"),
            ),
          ),
        ],
      ),
    );
  }
}
