import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:toonflix/router/router.dart';
import 'package:toonflix/style/theme.dart';

void main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: theme,
    );
  }
}

class HomeWidget extends StatelessWidget {
  HomeWidget({
    super.key,
  });

  final textTheme = theme.textTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Router 2'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => context.pushNamed('new'),
          child: const Text('Go to Page'),
        ),
      ),
    );
  }
}
